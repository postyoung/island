package com.island.app.admin.qnaan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.admin.qnaan.service.QnaanService;
import com.island.app.admin.qnaan.vo.QnaanVo;
import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.qna.service.QnaService;

/**
 * 
 * @author 김수경
 *
 */

@Controller
@RequestMapping("admin")
public class QnaanController {
	
	private final QnaanService qans;
	
	@Autowired
	public QnaanController(QnaanService qans) {
		this.qans = qans;
	}

	//목록조회
	@GetMapping("qnaan/list")
	public String qnaanList(Model model , @RequestParam(defaultValue = "1") int page) throws Exception {
		
		// 서비스 & 페이징
		int listCount = qans.getQnaanListCnt();
		int currentPage = page;
		int pageLimit = 5; 
		int boardLimit = 10; 
		
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		List<QnaanVo> getQnaanList = qans.getQnaanList(pv);
			
		if (getQnaanList == null) {
			throw new Exception("Qnaan 목록조회 실패..");
		}
		
		// 화면
		model.addAttribute("pv", pv);
		model.addAttribute("getQnaanList", getQnaanList);
		return "admin/qnaan-list";
	}
	
	//상세조회
	@GetMapping("qnaan/detail/{no}")
	public String qnaanDetail(@PathVariable int no, QnaanVo qnaanVo , Model model , HttpSession session, String getqnaancategoryNo){
		System.out.println(no);
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
		
		QnaanVo qnaan = qans.getQnaanDetail(no);
		
		if (qnaan == null) {
			model.addAttribute("errorMsg" , "상세조회 실패..");
			return "common/error-page";
		}
			System.out.println(qnaan);
	    model.addAttribute("qnaan" , qnaan);
		
		return "admin/qnaan-detail";
	}
	
		// 문의 답변 수정
		@GetMapping("qnaan/edit/{no}")
		public String qnaanEdit(@PathVariable int no, Model model, String qnaancategoryNo) throws Exception {
			QnaanVo qnaan = qans.getQnaanDetail(no);
			String categoryName = qans.getqnaancategoryName(qnaancategoryNo);
			
			if (qnaan == null || categoryName == null) {
				throw new Exception("Qnaan 상세조회 실패..");
			}
			
			model.addAttribute("qnaan", qnaan);
			model.addAttribute("categoryName", categoryName);
			
			return "admin/qnaan-edit";
		}
		
		@PostMapping("qnaan/edit")
		public String qnaanEdit(QnaanVo qnaanVo , Model model , HttpSession session) {
			int result = qans.qnaanEdit(qnaanVo);
			
			if (result != 1) {
				model.addAttribute("errorMag" , "문의 답변 수정 실패..");
				return "common/error-page";
			}
			session.setAttribute("alertMsg", "문의답변 성공!!");
			return "redirect:/admin/qnaan/detail/" + qnaanVo.getNo();
		}
		
		
	
	//작성하기(화면)
	@GetMapping("qnaan/write")
	public String qnaanWrite(QnaanVo qnaan , HttpSession session, Model model, String qnaancategoryNo) {
		
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
	    
	    if (loginAdmin == null) {
	        model.addAttribute("errorMsg" , "잘못된 접근입니다.");
	        return "common/error-page";
	    }
	    
	    QnaanVo qanan = new QnaanVo();
		qnaan.setQnaancategoryNo(qnaancategoryNo);
		qnaan.setWriterNo(loginAdmin.getNo());
		
		model.addAttribute("qnaan", qnaan);
		return "admin/qnaan-write";
	}
	
	//작성하기
	@PostMapping("qnaan/write")
	public String qnaanWrite(QnaanVo qnaanVo , HttpSession session) {
		
		AdminVo loginAdmin = (AdminVo) session.getAttribute("loginAdmin");
	    String writerNo = loginAdmin.getNo();
	    
		qnaanVo.setWriterNo(writerNo);
		
		int result = qans.qnaanWrite(qnaanVo);
		
		if(result != 1) {
			session.setAttribute("alertMsg", "QNA 답변 작성 성공!!");
		}else{
			session.setAttribute("alertMsg", "QNA 답변 작성 실패..");
		}
		
		return "redirect:/admin/qnaan/list";
	}
		
	//삭제하기
	@GetMapping("qnaan/delete/{no}")
	public String qnaanDelete(@RequestParam("num") String num) throws Exception {
		
		int result = qans.qnaanDelete(num);
		
		if(result != 1) {
			throw new Exception("QNA 답변 삭제 실패..");
		}
		return "redirect:/admin/qnaan/list";
	}
}