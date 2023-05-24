package com.island.app.community.review.report.vo;

import lombok.Data;

@Data
public class ReviewReportVo {
	private String no;
	private String reviewNo; //리뷰번호
	private String reReCategoryNo;
	private String reReCategoryName; //카테고리 사유(ex)
	private String reportDetail; //신고 상세사유
	private String reportYn; //신고처리여부
}
