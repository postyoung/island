package com.island.app.member.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.common.file.FileUploader;
import com.island.app.group.vo.GroupVo;
import com.island.app.member.service.MemberService;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.vo.SeminarVo;
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
		public String mypageHome(Model model, HttpSession session) {
			
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			//가장 최근에 신청한 소모임 내역 보여주기
			GroupVo recentEnrollGroup = ms.RecentGroupEnroll(no);
			//가장 최근에 찜한 소모임 내역 보여주기
			GroupVo recentInterestGroup = ms.RecentInterestGroup(no);
			//가장 최근에 신청한 세미나 내역 보여주기
			SeminarVo recentEnrollSeminar = ms.RecentSeminarEnroll(no);
			//가장 최근에 찜한 세미나 내역 보여주기
			SeminarVo recentInterestSeminar = ms.RecentInterestSeminar(no);
			
			//화면
			model.addAttribute("recentEnrollGroup",recentEnrollGroup);
			model.addAttribute("recentInterestGroup",recentInterestGroup);
			model.addAttribute("recentEnrollSeminar",recentEnrollSeminar);
			model.addAttribute("recentInterestSeminar",recentInterestSeminar);
			
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
		
		//마이페이지 아이디/비번찾기 화면
		@GetMapping("find")
		public String mypageFind() {
			
			return "member/mypage-accountfind";
		}
		
		//마이페이지 아이디찾기
		@PostMapping("findId")
		public String findId(@RequestParam("name") String name, @RequestParam("phone") String phone, Model model) {
		    // 이름과 전화번호를 기반으로 아이디를 조회하는 로직을 수행
		    MemberVo foundId = ms.findId(name, phone);
		    
		    if (foundId != null) {
		        // 아이디가 존재하는 경우
		        model.addAttribute("alertMsg", "아이디는 "+foundId.getId()+" 입니다.");
		    } else {
		        // 아이디가 존재하지 않는 경우
		        model.addAttribute("alertMsg", "일치하는 아이디가 없습니다.");
		    }
		    
		    return "member/mypage-accountfind"; // 결과를 표시할 뷰 이름 반환
		}
		
		//마이페이지 비밀번호 변경하기전 체크
		@PostMapping("checkInfoForPwdEdit")
		public String checkInfoForPwdEdit(@RequestParam("id") String id, @RequestParam("resident") String resident, @RequestParam("resident2")  String resident2, Model model,HttpSession session) {
		    // 아이디와 주민번호 일치 조회하는 로직
		    MemberVo checkInfoForPwdEdit = ms.checkInfoForPwdEdit(id, resident, resident2);
		    
		    if (checkInfoForPwdEdit == null) {
		    	// 아이디,주민번호가 일치하지 않는 경우
		    	model.addAttribute("alertMsg", "일치하는 정보가 없습니다.");
		    	return "member/mypage-accountfind";
		    }
		    // 아이디,주민번호가 일치하는 경우
		    session.setAttribute("alertMsg", "정보가 확인되었습니다. 비밀번호 변경페이지로 이동합니다.");
		    session.setAttribute("id", id); // id를 세션에 저장
		    return "redirect:/mypage/passwordEdit"; // 비밀번호 변경 페이지로 이동하는 뷰 이름 반환
		}
		//비밀번호 변경 화면
		@GetMapping("passwordEdit")
		public String passwordEdit() {
				
			return "member/passwordEdit";
		}
		
		//비밀번호 변경
		@PostMapping("passwordEdit")
		public String passwordEdit(Model model,HttpSession session, MemberVo vo) throws Exception {
			
			// 세션에서 id 가져오기
		    String id = (String) session.getAttribute("id");
		    vo.setId(id); // MemberVo 객체에 id 설정

			//서비스
			int updatedPwd = ms.Pwdedit(vo);
			
			//화면
			if(updatedPwd == 0) {
				model.addAttribute("errorMsg" , "비밀번호 변경실패");
				return "common/error-page";
			}
			
			session.setAttribute("alertMsg", "비밀번호가 변경되었습니다.");
		    return "redirect:/member/login";
		}
		
		//마이페이지 회원탈퇴 화면
		@GetMapping("quit")
		public String mypagequit() {
			
			return "member/mypage-quit";
		}
		// 마이페이지 회원탈퇴
		@PostMapping("quit")
		public String quit(MemberVo vo, HttpSession session, Model model) {
		    // 데이터
		    MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		    String memberId = loginMember.getId();

		    // 서비스
		    List<String> eventDates = ms.quit(memberId, vo.getPwd(), vo.getQReason());

		    // 진행중인 세미나/소모임 여부 확인
		    if (eventDates != null) {
		        if (eventDates.isEmpty()) {
		            // 회원 탈퇴 성공
		            session.setAttribute("alertMsg", "회원 탈퇴되었습니다. ISLAND를 이용해주셔서 감사합니다.");
		            return "redirect:/member/logout";
		        } else {
		            // 진행중인 세미나/소모임이 있음을 알리는 처리
		            session.setAttribute("alertMsg", "진행중인 세미나/소모임이 있어 회원 탈퇴가 불가능합니다.");
		            return "redirect:/mypage/home";
		        }
		    } else {
		        session.setAttribute("pwdAlertMsg", "회원탈퇴 실패: 비밀번호가 일치하지 않습니다.");
		        return "member/mypage-quit";
		    }
		}

		
		
}//class
