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

import com.island.app.admin.notice.service.NoticeService;
import com.island.app.admin.notice.vo.NoticeVo;
import com.island.app.admin.vo.AdminVo;

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
	public String noticeList(Model model) {
		
		List<NoticeVo> nvoList =  ns.getNoticeList();
		
		model.addAttribute("nvoList" , nvoList);
		return "admin/notice-list";
	}
	
	//공지사항작성하기 화면(관리자)
	@GetMapping ("notice/write")
	public String write(HttpSession session , Model model) {
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
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
	
	//공지사항 수정하기(화면)
	@GetMapping("notice/edit")
	public String noticeEdit(NoticeVo vo , Model model) throws Exception {
		int result = ns.edit(vo);
		System.out.println(vo);
		if(result == 1) {
			model.addAttribute("vo" , vo);
			throw new Exception("공지사항 수정하기 예외발생..");
		}
		
		return "admin/notice-edit";
	}
	
	//공지사항 수정하기
	@PostMapping("notice/edit")
	public String noticeEdit(NoticeVo vo , Model model, HttpSession session) {
		int result = ns.edit(vo);
		System.out.println(vo);
		if(result != 1) {
			model.addAttribute("errorMsg" , "수정실패..");
			return "common/error-page";
		}
		session.setAttribute("alertMsg", "수정성공!!");
		return "redirect:/admin/notice/detail?num=" +vo.getNo();
	}
	
	
	//공지사항 삭제하기
	@GetMapping("notice/delete")
	public String noticeDelete(String num) throws Exception {
		int result = ns.delete(num);
		
		
		if(result != 1) {
			throw new Exception("공지사항 삭제 실패...");
		}
		return "redirect:/admin/notice/list?page=1";
	}


}
