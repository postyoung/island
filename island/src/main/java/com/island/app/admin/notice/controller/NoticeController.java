package com.island.app.admin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.notice.service.NoticeService;
import com.island.app.admin.notice.vo.NoticeVo;
import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */


@Controller
@RequestMapping("admin")
public class NoticeController {
	
	private final NoticeService ns;
	
	@Autowired
	public NoticeController(NoticeService ns) {
		this.ns = ns;
	}

	//공지사항 목록조회
	@GetMapping("notice/list")
	public String noticeList(Model model , @RequestParam(defaultValue = "1") int page) throws Exception {
		
		//서비스&페이징
		int listCount = ns.getNoticeListCnt();
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		List<NoticeVo> nvoList = ns.getNoticeList(pv);
		
		if(nvoList == null) {
			throw new Exception("공지사항 목록 조회 실패");
		}
		
		model.addAttribute("pv", pv);
		model.addAttribute("nvoList" , nvoList);
		return "admin/notice-list";
	}
	
	//공지사항작성하기 화면(관리자)
	@GetMapping ("notice/write")
	public String write( NoticeVo vo , HttpSession session , Model model) {
		
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		vo.setWriterNo(loginAdmin.getNo());
		
		if(loginAdmin == null) {
			model.addAttribute("errorMsg" , "잘못된 접근입니다.");
			return "common/error-page";
		}
		
		String id = loginAdmin.getId();
		boolean isAdmin = "admin".equals(id);
		
		if(!isAdmin) {
			model.addAttribute("errorMsg" , "잘못된 접근입니다.");
			return "common/error-page";
		}
		
		return "admin/notice-write";
	}
	
	//공지사항작성하기(관리자)
	@PostMapping("notice/write")
	public String write(NoticeVo vo , HttpSession session) {
		
		AdminVo loginAdmin = (AdminVo)session.getAttribute("loginAdmin");
		String writerNo = loginAdmin.getNo();
		vo.setWriterNo(writerNo);
		
		int result = ns.write(vo);
		if(result == 1) { 
			session.setAttribute("alertMsg", "공지사항 작성 완료 !!");
			
		}else {
			session.setAttribute("alertMsg", "공지사항 작성 실패..");
			
		}
		return "redirect:/admin/notice/list";
		
		
	}
	
	//공지사항 상세조회
	@GetMapping("notice/detail")
	public String noticeDetail(String num , Model model) {
		
		NoticeVo vo = ns.getNotice(num);
		if(vo == null) {
			model.addAttribute("errorMsg" , "상세조회실패...");
			return "common/error-page";
		}
		model.addAttribute("vo" , vo);
		return "admin/notice-detail";
	}
	
	//공지사항 수정하기
	@PostMapping("notice/edit")
	public String noticeEdit(NoticeVo vo , Model model, HttpSession session) {
		
		AdminVo loginAdmin = (AdminVo)session.getAttribute("loginAdmin");
		String id = null;
		if(loginAdmin != null) {
			id = loginAdmin.getId();
		}
		
		if(!"admin".equalsIgnoreCase(id)) {
			model.addAttribute("errorMsg", "잘못된 요청입니다 ...");
			return "common/error-page";
		}
		
		
		
		int result = ns.edit(vo);
		if(result != 1) {
			model.addAttribute("errorMsg" , "수정실패..");
			return "common/error-page";
		}
		session.setAttribute("alertMsg", "수정성공!!");
		return "redirect:/admin/notice/detail?num=" +vo.getNo();
	}
	
	
	//공지사항 삭제하기
	@GetMapping("notice/delete")
	public String noticeDelete(@RequestParam("num") String num) throws Exception {
		
		int result = ns.delete(num);
		
		if(result != 1) {
			throw new Exception("공지사항 삭제 실패...");
		}
		
		return "redirect:/admin/notice/list?page=1";
	}


}
