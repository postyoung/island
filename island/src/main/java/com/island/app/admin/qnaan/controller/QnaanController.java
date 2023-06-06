package com.island.app.admin.qnaan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.island.app.common.page.PageVo;

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
	public String qnaanDetail(@PathVariable int no, Model model) throws Exception {
		QnaanVo qnaan = qans.getQnaanDetail(no);
		
		if (qnaan == null) {
			throw new Exception("Qnaan 상세조회 실패..");
		}
		
		model.addAttribute("qnaan", qnaan);
		return "admin/qnaan-detail";
	}
	
	
	//작성하기(화면)
	@GetMapping("qnaan/write/{qnaNo}")
	public String qnaanWrite(@PathVariable int qNo, QnaanVo qnaan , HttpServletRequest session , Model model) {
		
		qnaan.setQNo(qNo);
		model.addAttribute("qnaan", qnaan);
		return "admin/qnaan-write";
	}
	
	//작성하기
	@PostMapping("qnaan/write")
	public String qnaanWrite(@ModelAttribute("qnaan") QnaanVo qnaanVo) {
		qans.qnaanWrite(qnaanVo);
		return "redirect:/admin/qnaan/list";
	}
	
	
	@GetMapping("qnaan/update/{no}")
	public String qnaanUpdateForm(@PathVariable int no, Model model) throws Exception {
		QnaanVo qnaan = qans.getQnaanDetail(no);
		
		if (qnaan == null) {
			throw new Exception("Qnaan 상세조회 실패..");
		}
		
		model.addAttribute("qnaan", qnaan);
		return "admin/qnaan-update";
	}
	
//	@PostMapping("qnaan/update")
//	public String qnaanUpdate(@ModelAttribute("qnaanVo") QnaanVo qnaanVo) {
//		qans.qnaanUpdate(qnaanVo);
//		return "redirect:/admin/qnaan/detail/" + qnaanVo.getNo();
//	}
//	
//	
//	//삭제하기
//	@GetMapping("qnaan/delete/{no}")
//	public String qnaanDelete(@PathVariable int no) {
//		qans.qnaanDelete(no);
//		return "redirect:/admin/qnaan/list";
//	}
}