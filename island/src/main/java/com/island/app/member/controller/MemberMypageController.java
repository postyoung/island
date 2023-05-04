package com.island.app.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("mypage")
public class MemberMypageController {
	//마이페이지 (화면)
		@GetMapping("home")
		public String mypageHome() {
			return "member/mypage-home";
		}
		//마이페이지 수정
		@GetMapping("edit")
		public String mypageEidt() {
			return "member/mypage-edit";
		}
		//마이페이지 아이디/비번찾기
		@GetMapping("find")
		public String mypageFind() {
			return "member/mypage-accountfind";
		}
		
		//마이페이지 회원탈퇴
		@GetMapping("quit")
		public String mypagequit() {
			return "member/mypage-quit";
		}
}
