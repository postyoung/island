package com.island.app.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberController {
	//회원가입 (화면)
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	//로그인 (화면)
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	//마이페이지 (화면)
	@GetMapping("mypage/home")
	public String mypageHome() {
		return "member/mypage-home";
	}
	
	@GetMapping("mypage/edit")
	public String mypageEidt() {
		return "member/mypage-edit";
	}
	@GetMapping("mypage/find")
	public String mypageFind() {
		return "member/mypage-accountfind";
	}
}
