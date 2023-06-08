package com.island.app.admin.report.vo;

import lombok.Data;

@Data
public class AdminReportNoVo {
	private String no; // 신고 번호
	private String writerNo; // 작성자 (회원) 번호
	private String groupNo; // 소모임 번호
	private String seminarNo; // 세미나 번호
	private String reviewNo; // 세미나 리뷰 번호
	private String replyNo; // 댓글 번호
}