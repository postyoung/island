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
	
	
	//세미나 리뷰 작성하기 (화면)
	@GetMapping("seminarReview/write")
	public String seminarReviewWrite() {
		return "community/review/write";
	}
	
	
	//세미나 리뷰 상세조회 (화면)
	@GetMapping("seminarReview/detail")
	public String seminarReviewDetail() {
		return "community/review/detail";
	}
	
	//세미나 리뷰 내용수정 (화면)
	@GetMapping("seminarReview/edit")
	public String seminarReviewEdit() {
		return "community/review/edit";
	}
}
