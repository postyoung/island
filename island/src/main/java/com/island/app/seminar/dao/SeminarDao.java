package com.island.app.seminar.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.member.apply.vo.MemberApplyVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.report.vo.MemberReportVo;
import com.island.app.seminar.bank.vo.BankVo;
import com.island.app.seminar.pay.vo.SeminarPayVo;
import com.island.app.seminar.reply.vo.SeminarReplyVo;
import com.island.app.seminar.report.vo.SeminarReportVo;
import com.island.app.seminar.vo.SeminarVo;


@Repository
public class SeminarDao {
	
	//은행명 카테고리 조회
	public List<BankVo> bankCategorySelect(SqlSessionTemplate sst){
		return sst.selectList("seminar.bank");
	}
	
	//세미나 개설 insert
	public int createSeminar(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.insert("seminar.create", svo);
	}
	
	//세미나 썸네일 사진 insert
	public int insertSeminarAttach(SqlSessionTemplate sst, FileVo fvo) {
		return sst.insert("seminar.semimarAttach", fvo);
	}
	
	//세미나 목록 갯수 조회
	public int getSeminarCnt(SqlSessionTemplate sst, Map<String, String> searchMap) {
		return sst.selectOne("seminar.getSeminarCnt", searchMap);
	}
	
	//세미나 목록 조회
	public List<SeminarVo> getSeminarList(SqlSessionTemplate sst, PageVo pv, Map<String, String> searchMap) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		return sst.selectList("seminar.getSeminarList", searchMap, rb);
	}
	
	//세미나 상세조회
	public SeminarVo getSeminarDetail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("seminar.getSeminarDetail", no);
	}
	
	//세미나 조회수 증가
	public int increaseSminarHit(SqlSessionTemplate sst, String no) {
		return sst.update("seminar.increaseSminarHit", no);
	}

	//관심내역 조회하기
	public MemberInterestVo selectInterstSeminar(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.selectOne("seminar.selectInterstSeminar", svo);
	}
	
	//관심내역 세미나 추가
	public int addInterestSeminar(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.insert("seminar.addInterestSeminar", svo);
	}
	
	//세미나 좋아요 업데이트
	public int addLikeCount(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.update("seminar.addLikeCount", svo);
	}
	
	//세미나 신고하기
	public int reportSeminar(SqlSessionTemplate sst, SeminarReportVo srvo) {
		return sst.insert("seminar.reportSeminar", srvo);
	}
	
	//세미나 댓글작성하기
	public int writeSeminarReply(SqlSessionTemplate sst, SeminarReplyVo srvo) {
		return sst.insert("seminar.writeReply", srvo);
	}
	
	//세미나 댓글 조회하기
	public List<SeminarReplyVo> getSeminarReplyList(SqlSessionTemplate sst, String sNo) {
		return sst.selectList("seminar.getSeminarReplyList", sNo);
	}
	
	//세미나 댓글 삭제하기
	public int deleteSeminarReply(SqlSessionTemplate sst, SeminarReplyVo srvo) {
		return sst.update("seminar.deleteSeminarReply", srvo);
	}
	
	//해당 세미나 댓글 갯수조회
	public int getReplyCnt(SqlSessionTemplate sst, String sNo) {
		return sst.selectOne("seminar.getReplyCnt", sNo);
	}
	
	//세미나 댓글 회원 신고
	public int reportMember(SqlSessionTemplate sst, MemberReportVo mrvo) {
		return sst.insert("seminar.reportMember", mrvo);
	}
	
	//세미나 삭제하기
	public int deleteSeminar(SqlSessionTemplate sst, String sNo) {
		return sst.update("seminar.deleteSeminar", sNo);
	}
	
	//세미나 수정 상세조회
	public SeminarVo getSeminarDetailToEdit(SqlSessionTemplate sst, String sNo) {
		return sst.selectOne("seminar.getSeminarDetailToEdit", sNo);
	}
	
	//세미나 썸네일 경로 수정
	public int seminarAttachModify(SqlSessionTemplate sst, FileVo fvo) {
		return sst.update("seminar.seminarAttachModify", fvo);
	}
	
	//세미나 수정하기
	public int seminarModify(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.update("seminar.seminarModify", svo);
	}
	
	//세미나 신청하기
	public int applySeminar(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.insert("seminar.seminarApply", svo);
	}
	
	//세미나 신청 했는지 조회
	public MemberApplyVo applyCheckSeminar(SqlSessionTemplate sst, SeminarVo svo) {
		return sst.selectOne("seminar.applyCheckSeminar", svo);
	}
	
	//세미나 현재참가인원 +1
	public int addSeminarCurrentCapacity(SqlSessionTemplate sst, String sno) {
		return sst.update("seminar.addSeminarCurrentCapacity", sno);
	}
	
	//세미나 결제하기
	public int payApplySeminar(SqlSessionTemplate sst, SeminarPayVo spvo) {
		return sst.insert("seminar.payApplySeminar", spvo);
	}
	
	//메인화면 인기있는 세미나 조회
	public List<SeminarVo> bestSeminarList(SqlSessionTemplate sst) {
		return sst.selectList("seminar.bestSeminarList");
	}
}
