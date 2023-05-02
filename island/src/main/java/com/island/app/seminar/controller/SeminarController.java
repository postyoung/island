package com.island.app.seminar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("seminar")
public class SeminarController {
	
	//세미나 목록 조회(+페이징)
	@GetMapping("list")
	public String seminarList() {
		return "seminar/list";
	}
	
	//세미나 개설하기(화면)
	@GetMapping("create")
	public String seminarCreate() {
		return "seminar/create";
	}
	
	
	//세미나 상세 조회(화면)
	@GetMapping("detail")
	public String seminarDetail() {
		return "seminar/detail";
	}
	
	
	//세미나 수정 페이지(화면)
	@GetMapping("edit")
	public String seminarEdit() {
		return "seminar/edit";
	}
	
	
	//세미나 신청하기(화면)
	@GetMapping("apply")
	public String seminarApply() {
		return "seminar/apply";
	}
	
	
	
	
	
}
