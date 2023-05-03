package com.island.app.community.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 서지현
 *
 */
@Controller
@RequestMapping("community")
public class SeminarReviewController {
	
	//세미나 리뷰 목록 (화면)
	@GetMapping("seminarReview/list")
	public String seminarReviewList() {
		return "community/review/list";
	}
}
