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
	private MultipartFile reviewThumbnail; //리뷰 썸네일 사진파일
}
