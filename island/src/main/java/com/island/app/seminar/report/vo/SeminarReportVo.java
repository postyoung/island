package com.island.app.seminar.report.vo;

import lombok.Data;

@Data
public class SeminarReportVo {
	private String no;
	private String sNo;
	private String reCategoryNo;
	private String reCategoryName; //카테고리 사유
	private String reportDetail; //신고상세사유
	private String reportYn;
}
