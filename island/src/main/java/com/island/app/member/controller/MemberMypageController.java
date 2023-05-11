package com.island.app.member.controller;

import javax.servlet.http.HttpSession;

/**
 * @author 김수진
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.island.app.member.service.MemberService;
import com.island.app.member.vo.MemberVo;

@Controller
@RequestMapping("mypage")
public class MemberMypageController {
	private final MemberService ms;
	
	public MemberMypageController(MemberService ms) {
		this.ms = ms;
	}
	
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
		//회원탈퇴
		@PostMapping("quit")
		public String quit(HttpSession session) {
			
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			int result = ms.quit(no);
			
			//화면
			if(result == 1) {
				session.invalidate();
			}else {
				session.setAttribute("alertMsg", "회원탈퇴 실패...");
			}
			return "redirect:/main";
				
			}
		
}
