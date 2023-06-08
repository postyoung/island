package com.island.app.admin.report.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.island.app.admin.report.dao.ReportDao;
import com.island.app.admin.report.vo.AdminReportGroupVo;
import com.island.app.admin.report.vo.AdminReportMemberVo;
import com.island.app.admin.report.vo.AdminReportNoVo;
import com.island.app.admin.report.vo.AdminReportReviewVo;
import com.island.app.admin.report.vo.AdminReportSeminarVo;
import com.island.app.common.page.PageVo;

@Service
public class ReportService {
	private final SqlSessionTemplate sst;
	private final ReportDao dao;

	@Autowired
	public ReportService(SqlSessionTemplate sst, ReportDao dao) {
		this.sst = sst;
		this.dao = dao;
	}

	public int getSeminarReportCnt(Map<String, String> searchMap) {
		return dao.getSeminarReportCnt(sst, searchMap);
	}

	public List<AdminReportSeminarVo> getSeminarReportList(PageVo pv, Map<String, String> searhMap) {
		return dao.getSeminarReportList(sst, pv, searhMap);
	}

	public AdminReportSeminarVo getSeminarReport(String no) {
		return dao.getSeminarReport(sst, no);
	}

	public int seminarCheck(String no) {
		return dao.seminarCheck(sst, no);
	}

	public int blockSeminar(AdminReportNoVo vo) throws Exception {
		int result = dao.seminarCheck(sst, vo.getNo());
		if (result != 1) {
			throw new Exception();
		}
		return dao.blockSeminar(sst, vo);
	}

	public int blockMember(AdminReportNoVo vo) {
		int seminarResult = dao.seminarCheck(sst, vo.getNo());
		int blockResult = dao.blockSeminar(sst, vo);
		return dao.blockMember(sst, vo);
	}

	public int getReviewReportCnt(Map<String, String> searchMap) {
		return dao.getReviewReportCnt(sst, searchMap);
	}

	public List<AdminReportReviewVo> getReviewReportList(PageVo pv, Map<String, String> searchMap) {
		return dao.getReviewReportList(sst, pv, searchMap);
	}

	public AdminReportReviewVo getReviewReport(String no) {
		return dao.getReviewReport(sst, no);
	}

	public int reportReviewCheck(String no) {
		return dao.reportReviewCheck(sst, no);
	}

	public int blockReview(AdminReportNoVo vo) throws Exception {
		int result = dao.reportReviewCheck(sst, vo.getNo());
		if (result != 1) {
			throw new Exception();
		}
		return dao.blockReview(sst, vo);
	}

	public int blockMemberReview(AdminReportNoVo vo) {
		int reviewResult = dao.reportReviewCheck(sst, vo.getNo());
		int blockResult = dao.blockReview(sst, vo);
		return dao.blockMemberReview(sst, vo);
	}

	public int getGroupReportCnt(Map<String, String> searchMap) {
		return dao.getGroupReportCnt(sst, searchMap);
	}

	public List<AdminReportGroupVo> getGroupReportList(PageVo pv, Map<String, String> searchMap) {
		return dao.getGroupReportList(sst, pv, searchMap);
	}

	public AdminReportGroupVo getGroupReport(String no) {
		return dao.getGroupReport(sst, no);
	}

	public int reportGroupCheck(String no) {
		return dao.reportGroupCheck(sst, no);
	}

	public int blockGroup(AdminReportNoVo vo) throws Exception {
		int result = dao.reportGroupCheck(sst, vo.getNo());
		if (result != 1) {
			throw new Exception();
		}
		return dao.blockGroup(sst, vo);
	}

	public int blockMemberGroup(AdminReportNoVo vo) {
		int reviewResult = dao.reportGroupCheck(sst, vo.getNo());
		int blockResult = dao.blockGroup(sst, vo);
		return dao.blockMemberGroup(sst, vo);
	}

	public int getMemberReportCnt(Map<String, String> searchMap) {
		return dao.getMemberReportCnt(sst, searchMap);
	}

	public List<AdminReportMemberVo> getMemberReportList(PageVo pv, Map<String, String> searchMap) {
		return dao.getMemberReportList(sst, pv, searchMap);
	}

	public AdminReportMemberVo getMemberReport(String no) {
		return dao.getMemberReport(sst, no);
	}

	public int reportMemberCheck(String no) {
		return dao.reportMemberCheck(sst, no);
	}

	public int blockTheMember(AdminReportNoVo vo) throws Exception {
		int resultReply = dao.blockReply(sst, vo.getReplyNo());
		int resultCheck = dao.reportMemberCheck(sst, vo.getNo());
		if (resultCheck != 1) {
			throw new Exception();
		}
		return dao.blockTheMember(sst, vo);
	}
}