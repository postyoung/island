package com.island.app.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author 김수진
 */

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.island.app.common.file.FileUploader;
import com.island.app.member.service.MemberService;
import com.island.app.member.vo.MemberVo;
/**
 * 
 * @author 김수진
 *
 */
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
		//마이페이지 수정(화면)
		@GetMapping("edit")
		public String mypageEdit() {
			return "member/mypage-edit";
		}
		
		//마이페이지 수정
		@PostMapping("edit")
		public String mypageEdit(MemberVo vo, Model model, HttpSession session, HttpServletRequest req) throws Exception {
			
			//파일업로드
			String path = req.getServletContext().getRealPath("/resources/img/member/profile/load/");
			String changeName = FileUploader.upload(vo.getProfile() , path);
			vo.setProfileName(changeName);
			
			//서비스
			MemberVo updatedMember = ms.edit(vo);
			
			//화면
			if(updatedMember == null) {
				model.addAttribute("errorMsg" , "정보수정실패");
				return "common/error-page";
			}
			session.setAttribute("loginMember", updatedMember);
			session.setAttribute("alertMsg", "회원 정보가 수정되었습니다.");
			return "redirect:/mypage/home";
		}
		
		//마이페이지 아이디/비번찾기
		@GetMapping("find")
		public String mypageFind() {
			return "member/mypage-accountfind";
		}
		
		//마이페이지 회원탈퇴 화면
		@GetMapping("quit")
		public String mypagequit() {
			
			return "member/mypage-quit";
		}
		//마이페이지 회원탈퇴 
		public String mypagequit(MemberVo vo, HttpSession session) {
			
			
			
			
			return "redirect:/main";
		}

		
}
