package com.island.app.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.island.app.common.file.FileUploader;
import com.island.app.member.service.MemberService;
import com.island.app.member.vo.MemberVo;
/**
 * 
 * @author 김수진
 * 
 *
 */

@Controller
@RequestMapping("member")
public class MemberController {
	
	private final MemberService ms;
	
	@Autowired
	public MemberController(MemberService x) {
		this.ms=x;
	}
	
	
	//회원가입 (화면)
	@GetMapping("join")
	public void join() {
		
	}
	
	//회원가입
	@PostMapping("join")
	public String join(MemberVo vo, HttpServletRequest req, HttpSession session, Model model) throws Exception{
		
		//파일업로드
		String path = req.getServletContext().getRealPath("/resources/img/member/profile/load/");
		String changeName = FileUploader.upload(vo.getProfile() , path);
		vo.setProfileName(changeName);
		
		//서비스
		int result = ms.join(vo);
		
		if(result != 1) {
			//에러메시지
			model.addAttribute("errorMsg","회원가입 실패");
			return "common/error-page";
		}
		session.setAttribute("alertMsg", "회원가입이 완료되었습니다");
		return "redirect:/main";
	}
	
	//아이디 중복확인
		@RequestMapping("id-check")
		@ResponseBody
		public String idCheck(String id) {
			
			int result = ms.checkId(id);
			
			if(result > 0) {
				return "isDup";
			}else {
				return "notDup";
			}
			
		}
		
		
	//닉네임 중복확인
		@RequestMapping("nick-check")
		@ResponseBody
		public String nickCheck(String nick) {
			
			int result = ms.checkNick(nick);
			
			if(result > 0) {
				return "isDup";
			}else {
				return "notDup";
			}
			
		}
	
	//로그인 (화면)
	@GetMapping("login")
	public String login(Model model) {
		
		return "member/login";
	}
	
	@PostMapping("login")
	public String login(MemberVo vo, HttpSession session, HttpServletRequest req, HttpServletResponse res, Model model) {
		
		// 서비스
	    MemberVo loginMember = ms.login(vo);
	    if (loginMember == null) {
	        session.setAttribute("alertMsg", "로그인 실패 : 일치하는 정보가 없습니다.");
	        
	    }	
	    // 화면
	    session.setAttribute("loginMember", loginMember);
	    return "redirect:/main";

	}
	// 로그아웃
    @GetMapping("logout")
    public String logout(HttpSession session, Model model) {
        String alertMsg = (String) session.getAttribute("alertMsg");
        if (alertMsg != null) {
            model.addAttribute("alertMsg", alertMsg);
            session.removeAttribute("alertMsg");
        }
        session.invalidate();
        return "member/logout";
    }

	
	


}//class
