package com.island.app.seminar.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.island.app.common.file.FileUploader;
import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.Service.SeminarService;
import com.island.app.seminar.bank.vo.BankVo;
import com.island.app.seminar.vo.SeminarVo;

/**
 * 
 * @author 서지현
 *
 */
@Controller
@RequestMapping("seminar")
public class SeminarController {
	private final SeminarService ss;	
	
	@Autowired
	public SeminarController(SeminarService ss) {
		this.ss = ss;
	}

	//세미나 목록 조회(+페이징)
	@GetMapping("list")
	public String getSeminarList(@RequestParam(defaultValue = "1")int page, Model m) throws Exception {
		//페이징
		int listCount = ss.getSeminarCnt();
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 9;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		//요일얻기
		List<SeminarVo> svoList = ss.getSeminarList(pv);
		if(svoList == null) {
			throw new Exception("세미나 목록 조회 실패");
		}
		m.addAttribute("pv", pv);
		m.addAttribute("svoList", svoList);
		return "seminar/list";
	}
	
	//세미나 개설하기(화면)
	@GetMapping("create")
	public String createSeminar(Model m, HttpSession session) {
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		if(loginMember == null) {
			session.setAttribute("alertMsg", "로그인을 먼저 진행해주세요.");
			return "redirect:/seminar/list";
		}
		
		List<BankVo> bankList = ss.bankCategorySelect();
		if(bankList != null) {
			m.addAttribute("bankList", bankList);
			return "seminar/create";
		}
		return "eroor-page";
	}
	
	//세미나 개설하기
	@PostMapping("create")
	public String createSeminar(SeminarVo svo, MultipartFile thumbnailFile, HttpServletRequest req , HttpSession session) throws Exception {
		//로그인 회원번호 세팅 
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		if(loginMember == null) {
			session.setAttribute("alertMsg", "로그인 후 진행해주세요.");
			return "redirect:/seminar/list";
		}
		svo.setWriterNo(loginMember.getNo());
		
		//세미나 일시 유효성 검사 (오늘 날짜 이후인지)
		
		//세미나 참가모집 일시가 세미나 일시 이전인지 검사
		
		
		//세미나 시작시간~종료시간 세팅
		svo.setSeminarTime(svo.getSHour(), svo.getSMinute(), svo.getFHour(), svo.getFMinute());
		//세미나 참가신청 마감일시 세팅
		svo.setCloseTime(svo.getCHour(), svo.getCMinute());
		
		
		//데이터 준비(파일)
		String path = req.getServletContext().getRealPath("/resources/img/seminar/upload/");
		String changeName = "";
		String originName = "";
		if(!thumbnailFile.isEmpty()) {
			changeName = FileUploader.upload(thumbnailFile, path);
			originName = FileUploader.getOriginName(thumbnailFile);
		}else {
			changeName = "seminar-ex.png";
			originName = "seminar-ex.png";
		}
		
		svo.setSeminarThumbnail(changeName);
		
		//세미나 썸네일 사진파일 세팅
		FileVo fvo = new FileVo();
		fvo.setOriginName(originName);
		fvo.setChangeName(changeName);
		
		int result = ss.createSeminar(svo, fvo);
		if(result != 1) {
			throw new Exception("세미나 개설하기 실패");
		}
		session.setAttribute("alertMsg", "세미나가 개설되었습니다.");
		return "redirect:/seminar/list";
	}
	
	
	//ajax로 들어오는 파일 업로드 요청처리
	@PostMapping("upload/summernote")
	@ResponseBody
	public String upload(List<MultipartFile> fileList, HttpServletRequest req) throws Exception {
		List<String> changeNameList = new ArrayList<String>();
		
		for(MultipartFile f : fileList) {
			//경로 준비
			String path = req.getServletContext().getRealPath("/resources/img/seminar/upload/summernote/");
			String changeName = UUID.randomUUID().toString();
			String ext = f.getOriginalFilename().substring(f.getOriginalFilename().lastIndexOf(".")); 
					
			//타겟파일 준비
			File target = new File(path + changeName + ext);
			
			//파일저장 및 전송
			f.transferTo(target);
			
			changeNameList.add(changeName + ext);
		}
		
		Gson gson = new Gson();
		
		return gson.toJson(changeNameList);
		
	}
	
	
	//세미나 상세 조회(화면)
	@GetMapping("detail")
	public String seminarDetail() {
		return "seminar/detail";
	}
	
	
	//세미나 수정 페이지(화면)
	@GetMapping("edit")
	public String seminarEdit() {
		return "seminar/edit";
	}
	
	
	//세미나 신청하기(화면)
	@GetMapping("apply")
	public String seminarApply() {
		return "seminar/apply";
	}
	
	
	
	
	
}
