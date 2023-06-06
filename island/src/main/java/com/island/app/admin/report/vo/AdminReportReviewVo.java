package com.island.app.admin.report.vo;

import lombok.Data;

@Data
public class AdminReportReviewVo {
	private String reportNo;
	private String reviewNo;
	private String writer;
	private String title;
	private String category;
	private String reportYn;
	private String detail;
}