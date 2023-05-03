package com.island.app.admin.inquiry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class InquiryController {
	@GetMapping("inquiry/list")
	public String inquiry() {
		return "admin/inquiry-list";
	} 
	
	@GetMapping("inquiry/write")
	public String inquiryWrite() {
		return "admin/inquiry-write";
	}
	
	@GetMapping("inquiry/detail")
	public String inquiryDetail() {
		return "admin/inquiry-detail";
	}
}
