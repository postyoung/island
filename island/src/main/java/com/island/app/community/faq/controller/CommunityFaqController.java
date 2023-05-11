package com.island.app.community.faq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.faq.service.CommunityFaqService;

/**
 * 
 * @author 서지현
 *
 */
@Controller
@RequestMapping("community")
public class CommunityFaqController {
	
	private final CommunityFaqService cfs;

	@Autowired
	public CommunityFaqController(CommunityFaqService cfs) {
		this.cfs = cfs;
	}

	//고객센터 faq 목록 화면
	@GetMapping("faq/list")
	public String getFaqList(@RequestParam(defaultValue = "1")int page, Model m) throws Exception {
		//페이징
		int listCount = cfs.getCnt();
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		System.out.println(pv);
		
		List<FaqVo> faqList = cfs.getFaqList(pv);
		System.out.println(faqList);
		
		if(faqList == null) {
			throw new Exception("FAQ 목록 조회 실패");
		}
		m.addAttribute("faqList", faqList);
		return "community/faq-list";
	}
	
}
