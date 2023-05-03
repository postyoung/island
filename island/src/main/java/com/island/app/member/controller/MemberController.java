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
	//마이페이지 수정
	@GetMapping("mypage/edit")
	public String mypageEidt() {
		return "member/mypage-edit";
	}
	//마이페이지 아이디/비번찾기
	@GetMapping("mypage/find")
	public String mypageFind() {
		return "member/mypage-accountfind";
	}
	//마이페이지 신청내역리스트 소모임
	@GetMapping("mypage/enrollList/group")
	public String mypageEnrollGroupList() {
		return "member/mypage-enrollList-group";
	}
	//마이페이지 신청내역리스트 세미나
	@GetMapping("mypage/enrollList/seminar")
	public String mypageEnrollSeminarList() {
		return "member/mypage-enrollList-seminar";
	}
	//마이페이지 관심내역리스트 소모임
	@GetMapping("mypage/likeList/group")
	public String mypageLikeGroupList() {
		return "member/mypage-likeList-group";
	}
	//마이페이지 관심내역리스트 세미나
	@GetMapping("mypage/likeList/seminar")
	public String mypageLikeSeminarList() {
		return "member/mypage-likeList-seminar";
	}
	//마이페이지 개설내역리스트 소모임
	@GetMapping("mypage/madeList/group")
	public String mypageMadeGroupList() {
		return "member/mypage-made-list-group";
	}
	//마이페이지 개설내역리스트 세미나
	@GetMapping("mypage/madeList/seminar")
	public String mypageMadeSeminarList() {
		return "member/mypage-made-list-seminar";
	}
	//마이페이지 작성내역
	@GetMapping("mypage/writeList")
	public String mypageWriteList() {
		return "member/mypage-write-list";
	}
	//마이페이지 회원탈퇴
	@GetMapping("mypage/quit")
	public String mypagequit() {
		return "member/mypage-quit";
	}
	
	//Q&A리스트
	@GetMapping("QnAlist")
	public String QnAlist() {
		return "member/commu-QnAlist";
	}
	//Q&A 작성하기
		@GetMapping("QnAwrite")
	public String QnAwrite() {
		return "member/commu-QnAwrite";
	}
	

}
