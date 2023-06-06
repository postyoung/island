package com.island.app.admin.qnaan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.island.app.admin.notice.vo.NoticeVo;
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
	
	private final QnaanService qas;
	
	@Autowired
	public QnaanController(QnaanService qas) {
		this.qas = qas;
	}

	//QNA 목록조회
	@GetMapping("qnaan/list")
	public String qnaanList(Model model , @RequestParam(defaultValue = "1")int page) throws Exception {
		
		int listCount = qas.getQnaanListCnt();
		int currentPage = page;
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
		List<QnaanVo> qnaanList = qas.getQnaanList(pv);
		
		if(qnaanList == null){
			throw new Exception("QNA 목록조회 실패");
		}
		model.addAttribute("pv" , pv);
		model.addAttribute("qnaanList" , qnaanList);
		System.out.println(qnaanList);
		return "admin/qnaan-list";
	} 
	// QNA에 대한 답변 작성 폼 페이지로 이동
		@GetMapping("qnaan/write/{qnaNo}")
		public String qnaanWriteForm(@PathVariable int qnaNo, Model model) {
			QnaanVo qnaan = new QnaanVo();
			qnaan.setQnaNo(qnaNo);
			model.addAttribute("qnaan", qnaan);
			System.out.println(qnaan);
			return "admin/qnaan-write";
		}

		// QNA에 대한 답변 작성 처리
		@PostMapping("qnaan/write")
		public String qnaanWrite(@ModelAttribute("qnaan") QnaanVo qnaan) {
			qas.qnaanWrite(qnaan);
			return "redirect:/admin/qnaan/list";
		}
	
	
	
	
	
	
	
//	
//	//QNA 답변작성하기
//	@GetMapping("qnaan/write")
//	public String qnaanWrite() {
//		return "admin/qnaan-write";
//	}
//	
//	//QNA 상세조회
//	@GetMapping("qnaan/detail")
//	public String qnaanDetail(String num , Model model) {
//		
//		return "admin/qnaan-detail";
//	}
//	//QNA 수정하기
//	@GetMapping("qnaan/edit")
//	public String qnaanEdit() {
//		return "admin/qnaan-edit";
//	}
}
