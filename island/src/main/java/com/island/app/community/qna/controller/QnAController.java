package com.island.app.community.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("community")
public class QnAController {

	//Q&A리스트
	@GetMapping("qna/list")
	public String QnAlist() {
		return "community/qna/commu-QnAlist";
	}
	//Q&A 작성하기
		@GetMapping("qna/write")
	public String QnAwrite() {
		return "community/qna/commu-QnAwrite";
	}
	//Q&A 상세
	@GetMapping("qna/detail")
	public String QnAdetail() {
	return "community/qna/commu-QnAdetail";
	}
	//Q&A 수정페이지
	@GetMapping("qna/edit")
	public String QnAedit() {
	return "community/qna/commu-QnAedit";
	}
	
}
