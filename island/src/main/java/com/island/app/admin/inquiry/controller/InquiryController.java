package com.island.app.admin.inquiry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class InquiryController {
	@GetMapping("inqury-list")
	public String inquiry() {
		return "admin/inquiry-list";
	} 
}
