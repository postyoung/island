package com.island.app.community.review.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class SeminarReviewVo {
	private String no;
	private String seminarNo;
	private String memberNo;
	private String reDel;
	private String enrollDate;
	private String modifyDate;
	private String reportYn;
	private String title;
	private String content;
	private String point;
	private String reviewThumbnail; //리뷰 썸네일 사진파일
	private String seminarName; //세미나명
	private String memberNick; //리뷰 작성회원
	private String memberProfile; //리뷰 작성회원의 프로필
}
