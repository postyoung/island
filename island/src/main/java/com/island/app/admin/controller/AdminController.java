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

	// 정보 수정
	@RequestMapping("edit")
	public String edit() {
		return "admin/edit";
	}

	// 계정 생성
	@RequestMapping("create")
	public String create() {
		return "admin/create";
	}

	// 권한 설정
	@RequestMapping("authorize")
	public String authorize() {
		return "admin/authorize";
	}

	// 권한 상세 설정
	@RequestMapping("authorize/choice")
	public String authorizeChoice() {
		return "admin/authorize-choice";
	}

	// 계정 삭제
	@RequestMapping("delete")
	public String delete() {
		return "admin/delete";
	}
}