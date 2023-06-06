package com.island.app.community.qna.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.island.app.common.page.PageVo;
import com.island.app.community.qna.service.QnaService;
import com.island.app.community.qna.vo.QnaVo;
import com.island.app.community.qnaan.vo.QnaAnswerVo;
import com.island.app.member.vo.MemberVo;
/**
 * 
 * @author 김수진
 *
 */
@Controller
@RequestMapping("community")
public class QnaController {
	
	private final QnaService qs;
	
	@Autowired
	public QnaController(QnaService qs) {
		this.qs = qs;
	}

	//목록조회
	@GetMapping("qna/list")
	public String getQnaList(@RequestParam(defaultValue = "1") int page ,@RequestParam Map<String , String> searchMap, Model model) {

		//데이터
		int listCount = qs.getCnt(searchMap);
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		
		//서비스
		List<QnaVo> qvoList = qs.getQnaList(pv,searchMap);
		List<Map<String, String>> cvoList = qs.getCategoryList();
		
		//화면
		model.addAttribute("cvoList", cvoList);
		model.addAttribute("searchMap",searchMap);
		model.addAttribute("pv",pv);
		model.addAttribute("qvoList", qvoList);
		return "community/qna/commu-QnAlist";
	}
	
	
	//Q&A 작성하기
	@GetMapping("qna/write")
	public String QnAwrite() {
		return "community/qna/commu-QnAwrite";
	}
	
	@PostMapping("qna/write")
	public String write(QnaVo vo,HttpSession session,HttpServletRequest req ) throws Exception {
		
		//로그인 여부 체크
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
	    if(loginMember == null) {
	    	throw new Exception("로그인 후 이용 가능합니다.");
	    }
	    
	    //데이터 준비 (카테고리,작성자)
	  	vo.setWriterNo(loginMember.getNo());
		
		int result = qs.write(vo);
		
		if(result != 1) {
			throw new Exception("게시글 작성실패");
		}
		session.setAttribute("alertMsg", "문의가 등록되었습니다.");
		return "redirect:/community/qna/list";
	}
		
	//Q&A 상세 
	@GetMapping("qna/detail")
	public String QnAdetail(String no, Model model) throws Exception {
	    QnaVo vo = qs.getQna(no);
	    List<QnaAnswerVo> answerList = qs.getQnaAnswerList(no); // QNA_AN 테이블의 데이터 목록을 가져옴
	    
	    if(vo == null) {
	        throw new Exception("게시글 조회 실패");
	    }
	    
	    model.addAttribute("qvo", vo);
	    model.addAttribute("answerList", answerList); // 뷰로 QNA_AN 데이터 목록 전달
	    
	    return "community/qna/commu-QnAdetail";
	}

	
	//수정하기(화면)
	@GetMapping("qna/edit")
	public String QnAedit(Model model, String no) throws Exception {

		QnaVo vo = qs.getQnaEdit(no);
		
		if(vo == null) {
			throw new Exception("수정화면 조회실패");
		}
		model.addAttribute("qvo", vo);
		
	return "community/qna/commu-QnAedit";
	}
	
	//수정하기 (작성자본인)
	@PostMapping("qna/edit")
	public String edit(QnaVo vo, RedirectAttributes ra, HttpSession session, String no, Model model) throws Exception {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		loginMember.getNo();
		String writerNo = loginMember.getNo();
		vo.setWriterNo(writerNo);
		
		
		int result = qs.updateQna(vo);
		
		if(result != 1) {
			throw new Exception("수정실패");
		}
		
		session.setAttribute("alertMsg", "문의가 수정되었습니다.");
		ra.addAttribute("no",vo.getNo());
		return "redirect:/community/qna/detail?";
	}
	
	//삭제하기(작성자본인)
	@GetMapping("qna/delete")
	public String delete(QnaVo vo, HttpSession session) throws Exception {
		
		MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
		loginMember.getNo();
		String writerNo = loginMember.getNo();
		vo.setWriterNo(writerNo);
		
		int result = qs.delete(vo);
		
		if(result != 1) {
			throw new Exception("삭제실패");
		}
		
		session.setAttribute("alertMsg", "문의가 삭제되었습니다.");
		return "redirect:/community/qna/list";
	}
	
}
