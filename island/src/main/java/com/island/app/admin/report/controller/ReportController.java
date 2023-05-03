package com.island.app.admin.report.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class ReportController {
	// 회원 신고 목록
	@RequestMapping("report/member")
	public String reportMember() {
		return "admin/report-member";
	}

	// 회원 신고 상세 조회
	@RequestMapping("report/member/detail")
	public String reportMemberDetail() {
		return "admin/report-member-detail";
	}

	// 소모임
	@RequestMapping("report/group")
	public String reportGroup() {
		return "admin/report-group";
	}

	// 소모임 신고 상세 조회
	@RequestMapping("report/group/detail")
	public String reportGroupDetail() {
		return "admin/report-group-detail";
	}

	// 세미나
	@RequestMapping("report/seminar")
	public String reportSeminar() {
		return "admin/report-seminar";
	}

	// 세미나 신고 상세 조회
	@RequestMapping("report/seminar/detail")
	public String reportSeminarDetail() {
		return "admin/report-seminar-detail";
	}

	// 댓글
	@RequestMapping("report/comment")
	public String reportComment() {
		return "admin/report-comment";
	}
}