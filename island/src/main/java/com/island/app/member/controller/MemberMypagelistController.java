package com.island.app.member.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.island.app.community.qna.vo.QnaVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.service.MemberService;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.vo.SeminarVo;
/**
 * 
 * @author 김수진
 *
 */
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
		public String mypageLikeSeminarList(Model model,HttpSession session) {
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<SeminarVo> svoList = ms.getInterestList(no);
			
			//화면
			model.addAttribute("svoList",svoList);
			return "member/mypage-likeList-seminar";
		}
		
		//관심취소
		@PostMapping("likeList/seminar")
		public String mypageLikeSeminardel(Model model, HttpSession session, MemberInterestVo vo) throws Exception {
			
			//데이터
			String svono = vo.getSNo();
			
			//서비스
			int result = ms.interestEdit(svono);
			
			//화면
			if(result != 1) {
				model.addAttribute("errorMsg" , "관심내역 삭제실패");
				return "common/error-page";
			}
			
			session.setAttribute("alertMsg", "관심내역에서 삭제되었습니다.");
			return "redirect:/mypage/list/likeList/seminar";
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
		public String mypageWriteList(Model model, HttpSession session, MemberVo vo) {
			
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<QnaVo> qvoList = ms.getWriteList(no); 
			
			//화면
			model.addAttribute("qvoList",qvoList);
			return "member/mypage-write-list";
		}
	
}
