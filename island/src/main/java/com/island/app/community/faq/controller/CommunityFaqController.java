package com.island.app.community.faq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 서지현
 *
 */
@Controller
@RequestMapping("community")
public class CommunityFaqController {
	
	//고객센터 faq 목록 화면
	@GetMapping("faq/list")
	public String faqList() {
		return "community/faq-list";
	}
	
}
