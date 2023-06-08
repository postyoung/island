package com.island.app.admin.report.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.report.vo.AdminReportGroupVo;
import com.island.app.admin.report.vo.AdminReportMemberVo;
import com.island.app.admin.report.vo.AdminReportNoVo;
import com.island.app.admin.report.vo.AdminReportReviewVo;
import com.island.app.admin.report.vo.AdminReportSeminarVo;
import com.island.app.common.page.PageVo;

@Repository
public class ReportDao {
	public int getSeminarReportCnt(SqlSessionTemplate sst, Map<String, String> searchMap) {
		return sst.selectOne("adminReport.getSeminarReportCnt", searchMap);
	}

	public List<AdminReportSeminarVo> getSeminarReportList(SqlSessionTemplate sst, PageVo pv,
			Map<String, String> searchMap) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage() - 1) * limit;
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("adminReport.getSeminarReportList", searchMap, rb);
	}

	public AdminReportSeminarVo getSeminarReport(SqlSessionTemplate sst, String no) {
		return sst.selectOne("adminReport.getSeminarReport", no);
	}

	public int seminarCheck(SqlSessionTemplate sst, String no) {
		return sst.update("adminReport.seminarCheck", no);
	}

	public int blockSeminar(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockSeminar", vo);
	}

	public int blockMember(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockMemberSeminar", vo);
	}

	public int getReviewReportCnt(SqlSessionTemplate sst, Map<String, String> searchMap) {
		return sst.selectOne("adminReport.getReviewReportCnt", searchMap);
	}

	public List<AdminReportReviewVo> getReviewReportList(SqlSessionTemplate sst, PageVo pv,
			Map<String, String> searchMap) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage() - 1) * limit;
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("adminReport.getReviewReportList", searchMap, rb);
	}

	public AdminReportReviewVo getReviewReport(SqlSessionTemplate sst, String no) {
		return sst.selectOne("adminReport.getReviewReport", no);
	}

	public int reportReviewCheck(SqlSessionTemplate sst, String no) {
		return sst.update("adminReport.reviewCheck", no);
	}

	public int blockReview(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockReview", vo);
	}

	public int blockMemberReview(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockMemberReview", vo);
	}

	public int getGroupReportCnt(SqlSessionTemplate sst, Map<String, String> searchMap) {
		return sst.selectOne("adminReport.getGroupReportCnt", searchMap);
	}

	public List<AdminReportGroupVo> getGroupReportList(SqlSessionTemplate sst, PageVo pv,
			Map<String, String> searchMap) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage() - 1) * limit;
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("adminReport.getGroupReportList", searchMap, rb);
	}

	public AdminReportGroupVo getGroupReport(SqlSessionTemplate sst, String no) {
		return sst.selectOne("adminReport.getGroupReport", no);
	}

	public int reportGroupCheck(SqlSessionTemplate sst, String no) {
		return sst.update("adminReport.groupCheck", no);
	}

	public int blockGroup(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockGroup", vo);
	}

	public int blockMemberGroup(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockMemberGroup", vo);
	}

	public int getMemberReportCnt(SqlSessionTemplate sst, Map<String, String> searchMap) {
		return sst.selectOne("adminReport.getMemberReportCnt", searchMap);
	}

	public List<AdminReportMemberVo> getMemberReportList(SqlSessionTemplate sst, PageVo pv,
			Map<String, String> searchMap) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage() - 1) * limit;
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("adminReport.getMemberReportList", searchMap, rb);
	}

	public AdminReportMemberVo getMemberReport(SqlSessionTemplate sst, String no) {
		return sst.selectOne("adminReport.getMemberReport", no);
	}

	public int reportMemberCheck(SqlSessionTemplate sst, String no) {
		return sst.update("adminReport.memberCheck", no);
	}

	public int blockTheMember(SqlSessionTemplate sst, AdminReportNoVo vo) {
		return sst.update("adminReport.blockMember", vo);
	}

	public int blockReply(SqlSessionTemplate sst, String replyNo) {
		return sst.update("adminReport.blockReply", replyNo);
	}
}