package com.island.app.member.report.vo;

import lombok.Data;

@Data
public class MemberReportVo {
	private String no;
	private String mNo;
	private String cNo;
	private String categoryName; //카테고리 사유
	private String srNo ; //댓글번호
	private String reportEx; //신고 상세사유
	private String reportYn;
}
