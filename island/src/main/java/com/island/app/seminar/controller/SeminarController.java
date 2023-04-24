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
		return "seminar/seminar-list";
	}
	
	
	
	
	//세미나 상세 조회 
	
}
