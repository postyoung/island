package com.island.app.admin.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.island.app.admin.service.AdminService;
import com.island.app.admin.vo.AdminVo;

@Controller
@RequestMapping("admin")
public class AdminController {
	private final AdminService as;

	@Autowired
	public AdminController(AdminService as) {
		this.as = as;
	}

	// 로그인 (화면)
	@GetMapping("login")
	public String login() {
		return "admin/login";
	}

	// 로그인
	@PostMapping("login")
	public String login(AdminVo vo, HttpSession session) {
		AdminVo loginAdmin = as.login(vo);
		if (loginAdmin == null) {
			return "redirect:/admin/login";
		}
		session.setAttribute("loginAdmin", loginAdmin);
		return "redirect:/admin/main";
	}

	// 계정 생성 (화면)
	@GetMapping("create")
	public String create() {
		return "admin/create";
	}

	// 계정 생성
	@PostMapping("create")
	public String create(AdminVo vo, HttpSession session) {
		int result = as.create(vo);
		return "admin/main";
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

	// 권한 설정
	@RequestMapping("authorize")
	public String authorize() {
		return "admin/authorize";
	}

	// 권한 상세 설정
	@RequestMapping("authorize/detail")
	public String authorizeChoice() {
		return "admin/authorize-detail";
	}

	// 계정 삭제
	@RequestMapping("delete")
	public String delete() {
		return "admin/delete";
	}

	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login";
	}
}