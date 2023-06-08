package com.island.app.admin.faq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.faq.service.FaqService;
import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.admin.vo.AdminVo;
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
	public String getfaqList(Model model , @RequestParam(defaultValue = "1") int page) throws Exception {
	
		//서비스 &페이징
		int listCount = fs.getCnt();
		int currentPage = page;
		int pageLimit = 5; 
		int boardLimit = 10; 
		
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		List<FaqVo> fvoList = fs.getFaqList(pv);
			
		if(fvoList == null) {
			throw new Exception("FAQ 목록 조회 실패...");
		}
		
		//화면
		model.addAttribute("pv", pv);
		model.addAttribute("fvoList", fvoList);
		return "admin/faq-list";
	}
	
	//Faq작성하기 화면(관리자만)
	@GetMapping("faq/write")
	public String faqWrite(FaqVo fvo , HttpSession session , Model model) {
		
	    AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
	    
	    if (loginAdmin == null) {
	        model.addAttribute("errorMsg" , "잘못된 접근입니다.");
	        return "common/error-page";
	    }
	    fvo.setWriterNo(loginAdmin.getNo());

	    String id = loginAdmin.getId();
	    boolean isAdmin = "admin".equals(id);

	    if (!isAdmin) {
	        model.addAttribute("errorMsg" , "잘못된 접근입니다.");
	        return "common/error-page";
	    }
	    return "admin/faq-write";
	    
	}

	//faq 작성하기 (관리자만)
	@PostMapping("faq/write")
	public String faqWrite(FaqVo fvo, HttpSession session ) {
		
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
	    String writerNo = loginAdmin.getNo();
	    
	    fvo.setWriterNo(writerNo);

	    int result = fs.faqWrite(fvo);
	    
	    System.out.println(fvo);
	   
	    if (result != 1) {
	        session.setAttribute("alertMsg", "Faq 작성실패..");
	    } else {
	        session.setAttribute("alertMsg", "Faq 작성완료!!");
	    }

	    return "redirect:/admin/faq/list?page=1";
	}


	
	
	//Faq상세조회
	@GetMapping("faq/detail")
	public String getFaq(FaqVo vo, String num, Model model , HttpSession session, String categoryNo) {
		
		
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		vo.setWriterNo(loginAdmin.getNo());
		
		FaqVo fvo = fs.getFaq(num);
		
		if(fvo == null) {
			model.addAttribute("errorMsg" , "상세조회실패...");
			return "common/error-page";
		}
	    String categoryName = fs.getcategoryName(categoryNo);
		
	    model.addAttribute("fvo" , fvo);
		model.addAttribute("categoryName" , categoryName);
		
		
		return "admin/faq-detail";
		
		
	}
	
	
	//Faq수정하기 (관리자만)
	@PostMapping ("faq/edit")
	public String faqEdit(FaqVo fvo , Model model , HttpSession session) {
		
		AdminVo loginAdmin = (AdminVo)session.getAttribute("loginAdmin");
		String id = null;
		
		if(loginAdmin != null) {
			id = loginAdmin.getId();
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
		return "redirect:/admin/faq/detail?num=" + fvo.getNo();
		
	}
	
	//Faq 삭제하기 (관리자만)
	@GetMapping("faq/delete")
	public String faqdelete(@RequestParam("num") String num) throws Exception {
		int result = fs.faqdelete(num);
		
		if(result != 1) {
			throw new Exception("FAQ 삭제 실패 ...");
		}
		
		return "redirect:/admin/faq/list?page=1";
	}
		

	
}
