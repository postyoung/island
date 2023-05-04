package com.island.app.community.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("qna")
public class QnAController {

	//Q&A리스트
	@GetMapping("list")
	public String QnAlist() {
		return "community/qna/commu-QnAlist";
	}
	//Q&A 작성하기
		@GetMapping("write")
	public String QnAwrite() {
		return "community/qna/commu-QnAwrite";
	}
	//Q&A 상세
	@GetMapping("detail")
	public String QnAdetail() {
	return "community/qna/commu-QnAdetail";
	}
	
}
