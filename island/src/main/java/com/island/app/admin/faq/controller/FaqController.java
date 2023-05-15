package com.island.app.admin.faq.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.faq.service.FaqService;
import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;
import com.island.app.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author 김수경
 *
 */
@Slf4j
@Controller
@RequestMapping("admin")
public class FaqController {
	
	private final FaqService fs;
	
	@Autowired
	public FaqController(FaqService fs) {
		this.fs = fs;
	}
	
	//Faq목록조회
	@GetMapping("faq/list")
	public String getfaqList(Model model , @RequestParam(defaultValue = "1") int page) {
	
		//서비스 
		int listCount = fs.getCnt();
		int currentPage = page;
		int pageLimit = 5; 
		int boardLimit = 10; 
		
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		List<FaqVo> fvoList = fs.getFaqList(pv);
		
		//화면
		model.addAttribute("pv", pv);
		model.addAttribute("fvoList", fvoList);
		return "admin/faq-list";
	}
	
	//Faq작성하기 화면(관리자만)
	@GetMapping("faq/write")
	public String faqWrite(HttpSession session , Model model) {
	    MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
	    if (loginMember == null) {
	        model.addAttribute("errorMsg" , "잘못된 접근입니다.");
	        return "common/error-page";
	    }
	    String id = loginMember.getId();
	    boolean isAdmin = "admin".equals(id);

	    if (!isAdmin) {
	        model.addAttribute("errorMsg" , "잘못된 접근입니다.");
	        return "common/error-page";
	    }
	    return "faq-write";
	}

	//faq 작성하기 (관리자만)
	@PostMapping("faq/write")
	public String faqWrite(FaqVo fvo, HttpSession session) {
	    MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
	    String id = null;
	    if (loginMember != null) {
	        id = loginMember.getId();
	    }
	    if (!"admin".equalsIgnoreCase(id)) {
	        session.setAttribute("alertMsg", "관리자만 FAQ 작성이 가능합니다.");
	        return "redirect:/admin/faq/list?page=1";
	    }

	    int result = fs.faqWrite(fvo);

	    if (result != 1) {
	        session.setAttribute("alertMsg", "Faq 작성완료!!");
	    } else {
	        session.setAttribute("alertMsg", "Faq 작성 실패..");
	    }

	    return "redirect:/admin/faq/list?page=1";
	}


	
	
	//Faq상세조회
	@GetMapping("faq/detail")
	public String getFaq(String no, Model model) throws Exception {
		
		FaqVo fvo = fs.getFaq(no);
		
		if(fvo != null) {
			model.addAttribute("errorMsg" , "상세조회실패...");
			return "common/error-page";
		}
		model.addAttribute("fvo" , fvo);
		return "admin/faq-detail";
		
		
	}
	
	
	//Faq수정하기 (관리자만)
	@PostMapping ("faq/edit")
	public String faqEdit(FaqVo fvo , Model model , HttpSession session) {
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		String id = null;
		
		if(loginMember != null) {
			id = loginMember.getId();
		}
		
		if(!"admin".equalsIgnoreCase(id)) {
			model.addAttribute("errorMsg", "잘못된 요청입니다 ...");
			return "common/error-page";
		}		
		
		int result = fs.faqedit(fvo);
		
		if(result != 1) {
			model.addAttribute("alertMsg" , "수정실패..");
			return "common/error-page";
		}
		
		session.setAttribute("alertMsg", "수정성공!!");
		return "redirect:/admin/faq/detail?num =" +fvo.getNo();
		
	}
	
	//Faq 삭제하기 (관리자만)
	@GetMapping("faq/delete")
	public String faqdelete(String no , HttpSession session) throws Exception {
		int result = fs.faqdelete(no);
		
		if(result != 1) {
			throw new Exception("FAQ 삭제 실패 ...");
		}
		
		session.setAttribute("alertMsg", "삭제성공!!");
		return "redirect:/admin/faq/list?page=1";
	}
		
	
	
}
