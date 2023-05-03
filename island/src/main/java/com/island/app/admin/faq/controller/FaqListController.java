package com.island.app.admin.faq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class FaqListController {
	
	@GetMapping("faq/list")
	public String faqList() {
		return "admin/faq-list";
	}
	
	@GetMapping("faq/write")
	public String faqWrite() {
		return "admin/faq-write";
	}
	
	@GetMapping("faq/detail")
	public String faqDetail() {
		return "admin/faq-detail";
	}
}
