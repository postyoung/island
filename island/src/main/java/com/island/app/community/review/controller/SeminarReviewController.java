package com.island.app.community.review.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.island.app.common.file.FileUploader;
import com.island.app.common.file.FileVo;
import com.island.app.community.review.Service.SeminarReviewService;
import com.island.app.community.review.vo.SeminarReviewVo;

/**
 * 
 * @author 서지현
 *
 */
@Controller
@RequestMapping("community")
public class SeminarReviewController {
	
	private final SeminarReviewService srs;
	
	@Autowired
	public SeminarReviewController(SeminarReviewService srs) {
		this.srs = srs;
	}


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
	
	//세미나 리뷰 작성하기
	@PostMapping("seminarReview/write")
	public String seminarReviewWrite(SeminarReviewVo srvo, MultipartFile thumbnailFile, HttpServletRequest req) throws Exception {
		System.out.println(thumbnailFile);
		//로그인 여부 체크
		
		//세미나 게시글번호 가져오기 (임시코드)
		String seminarNo = "1";
		srvo.setSeminarNo(seminarNo);
		
		//회원 번호 가져오기 (loginMember에서 getNo해오기 임시코드)
		String memberNo = "1";
		srvo.setMemberNo(memberNo);
		
		//데이터 준비(파일)
		String path = req.getServletContext().getRealPath("/resources/img/community/review/upload/");
		String changeName = FileUploader.upload(thumbnailFile, path);
		String originName = FileUploader.getOriginName(thumbnailFile);
		
		//FileVo 뭉치기
		FileVo fvo = new FileVo();
		fvo.setChangeName(changeName);
		fvo.setOriginName(originName);
		
		//서비스
		int result = srs.seminarReviewWrite(srvo, fvo);
		
		if(result != 1) {
			throw new Exception("세미나 리뷰 작성 실패");
		}
		return "community/review/detail";
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
