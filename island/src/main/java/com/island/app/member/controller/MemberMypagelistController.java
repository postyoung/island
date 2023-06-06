package com.island.app.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.island.app.community.qna.vo.QnaVo;
import com.island.app.group.vo.GroupVo;
import com.island.app.member.apply.vo.MemberApplyVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.service.MemberService;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.vo.SeminarVo;

import oracle.jdbc.proxy.annotation.Post;
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
		public String mypageEnrollGroupList(HttpSession session, Model model) {
			
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<GroupVo> gvoList = ms.getEnrollListGvo(no);
			
			//화면
			model.addAttribute("gvoList",gvoList);
			
			return "member/mypage-enrollList-group";
		}
		
		//신청취소 소모임
		@PostMapping("enrollList/group")
		public String enrollEditGvo(Model model, HttpSession session, MemberApplyVo vo) throws Exception {
			
			//데이터
			String gvono = vo.getGNo();
			
			//서비스
			int result = ms.enrollEditGvo(gvono);
			
			//화면
			if(result != 1) {
				model.addAttribute("errorMsg" , "신청취소 삭제실패");
				return "common/error-page";
			}
			
			session.setAttribute("alertMsg", "신청취소 되었습니다.");
			return "redirect:/mypage/list/enrollList/group";
		}
		
		//마이페이지 신청내역리스트 세미나
		@GetMapping("enrollList/seminar")
		public String mypageEnrollSeminarList(HttpSession session, Model model) {
			
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<SeminarVo> svoList = ms.getEnrollList(no);
			
			//화면
			model.addAttribute("svoList",svoList);
			
			return "member/mypage-enrollList-seminar";
		}
		//신청취소 세미나
		@PostMapping("enrollList/seminar")
		public String mypageEnrollSeminarListdel(Model model, HttpSession session, MemberApplyVo vo) throws Exception {
			
			//데이터
			String svono = vo.getSNo();
			
			//서비스
			int result = ms.enrollEdit(svono);
			
			//화면
			if(result != 1) {
				model.addAttribute("errorMsg" , "신청취소 삭제실패");
				return "common/error-page";
			}
			
			session.setAttribute("alertMsg", "신청취소 되었습니다.");
			return "redirect:/mypage/list/enrollList/seminar";
		}
		//신청내역에서 리뷰작성
		@GetMapping("enrollList/seminarReview/write")
		public String mypageEnrollSeminarListwriteReview(Model model, String no,HttpSession session) {
		   
			//데이터
			
			//서비스
		    SeminarVo result = ms.checkSeminarReview(no);
		    
		    if (result != null) {
		        return "redirect:/community/seminarReview/write?no="+no;
		    } else {
		    	session.setAttribute("alertMsg" , "세미나 참여 일정 이후에 리뷰를 작성할 수 있습니다.");
		        return "redirect:/mypage/list/enrollList/seminar";
		    }
		}

		
		//마이페이지 관심내역리스트 소모임
		@GetMapping("likeList/group")
		public String mypageLikeGroupList(Model model, HttpSession session) {
			
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<GroupVo> gvoList = ms.getInterestListGvo(no);
			
			//화면
			model.addAttribute("gvoList",gvoList);
			
			return "member/mypage-likeList-group";
		}
		
		//관심취소 소모임
		@PostMapping("likeList/group")
		public String mypageLikeGroupList(Model model, HttpSession session, MemberInterestVo vo) throws Exception {
			
			//데이터
			String gvono = vo.getGNo();
			
			//서비스
			int result = ms.interestEditGvo(gvono);
			
			//화면
			if(result != 1) {
				model.addAttribute("errorMsg" , "관심내역 삭제실패");
				return "common/error-page";
			}
			
			session.setAttribute("alertMsg", "관심내역에서 삭제되었습니다.");
			return "redirect:/mypage/list/likeList/group";
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
		
		//관심취소 세미나
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
		public String mypageMadeGroupList(HttpSession session , Model model) {
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<GroupVo> gvoList = ms.getmadeListGroup(no);
			
			//화면
			model.addAttribute("gvoList",gvoList);
			return "member/mypage-made-list-group";
		}
		
		//마이페이지 개설내역에서 소모임 수정
		@GetMapping("madeList/groupEdit")
		public String mypageMadeGroupListEditCheck(Model model, String no,HttpSession session) {
		   
			//데이터
			
			//서비스
		    GroupVo result = ms.checkGroupEdit(no);
		    
		    if (result != null) {
		        return "redirect:/group/edit?no="+no;
		    } else {
		    	session.setAttribute("alertMsg" , "소모임 일시 이후에 소모임 수정을 할 수 없습니다.");
		        return "redirect:/mypage/list/madeList/group";
		    }
		}
		//마이페이지 개설내역에서 신청자관리 수정
		@GetMapping("madeList/groupPeopleEdit")
		public String MadeGroupEditCheckEnrollPeople(Model model, String no,HttpSession session) {
		   
			//데이터
			
			//서비스
		    GroupVo result = ms.checkGroupPeopleEdit(no);
		    
		    if (result != null) {
		        return "redirect:/group/manage?no="+no;
		    } else {
		    	session.setAttribute("alertMsg" , "소모임 일시 이후에 신청자관리를 할 수 없습니다.");
		        return "redirect:/mypage/list/madeList/group";
		    }
		}
		
		//마이페이지 개설내역리스트 세미나
		@GetMapping("madeList/seminar")
		public String mypageMadeSeminarList(HttpSession session, Model model) {
			//데이터
			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
			String no = loginMember.getNo();
			
			//서비스
			List<SeminarVo> svoList = ms.getmadeListSeminar(no);
			
			//화면
			model.addAttribute("svoList",svoList);
			
			return "member/mypage-made-list-seminar";
		}
		//마이페이지 개설내역에서 세미나 수정
		@GetMapping("madeList/seminarEdit")
		public String mypageMadeSeminarEditCheck(Model model, String no,HttpSession session) {
		   
			//데이터
			
			//서비스
		    SeminarVo result = ms.checkSeminarEdit(no);
		    
		    if (result != null) {
		        return "redirect:/seminar/edit/"+no;
		    } else {
		    	session.setAttribute("alertMsg" , "세미나 일시 이후에 세미나 수정을 할 수 없습니다.");
		        return "redirect:/mypage/list/madeList/seminar";
		    }
		}
		//마이페이지 문의내역(화면)
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
