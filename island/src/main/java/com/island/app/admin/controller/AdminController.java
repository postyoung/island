package com.island.app.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {
	// 로그인
	@RequestMapping("login")
	public String home() {
		return "admin/login";
	}

	// 메인
	@RequestMapping("main")
	public String main() {
		return "admin/main-admin";
	}
}