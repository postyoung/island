package com.island.app.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.island.app.community.qna.vo.QnaVo;
import com.island.app.member.service.MemberService;
@Controller
@RequestMapping("mypage/list")
public class MemberMypagelistController {
	
	private final MemberService ms;
	
	@Autowired
	public MemberMypagelistController(MemberService ms) {
		this.ms = ms;
	}
	//마이페이지 신청내역리스트 소모임
		@GetMapping("enrollList/group")
		public String mypageEnrollGroupList() {
			return "member/mypage-enrollList-group";
		}
		//마이페이지 신청내역리스트 세미나
		@GetMapping("enrollList/seminar")
		public String mypageEnrollSeminarList() {
			return "member/mypage-enrollList-seminar";
		}
		//마이페이지 관심내역리스트 소모임
		@GetMapping("likeList/group")
		public String mypageLikeGroupList() {
			return "member/mypage-likeList-group";
		}
		//마이페이지 관심내역리스트 세미나
		@GetMapping("likeList/seminar")
		public String mypageLikeSeminarList() {
			return "member/mypage-likeList-seminar";
		}
		//마이페이지 개설내역리스트 소모임
		@GetMapping("madeList/group")
		public String mypageMadeGroupList() {
			return "member/mypage-made-list-group";
		}
		//마이페이지 개설내역리스트 세미나
		@GetMapping("madeList/seminar")
		public String mypageMadeSeminarList() {
			return "member/mypage-made-list-seminar";
		}
		//마이페이지 작성내역(화면)
		@GetMapping("writeList")
		public String mypageWriteList(Model model) {
			//서비스
			List<QnaVo> qvoList = ms.getWriteList();
			
			//화면
			model.addAttribute("qvoList",qvoList);
			return "member/mypage-write-list";
		}
	
}
