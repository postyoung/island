package com.island.app.seminar.Service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.seminar.bank.vo.BankVo;
import com.island.app.seminar.dao.SeminarDao;
import com.island.app.seminar.report.vo.SeminarReportVo;
import com.island.app.seminar.vo.SeminarVo;

@Service
@Transactional
public class SeminarService {
	private final SqlSessionTemplate sst;
	private final SeminarDao dao;

	@Autowired
	public SeminarService(SqlSessionTemplate sst, SeminarDao dao) {
		this.sst = sst;
		this.dao = dao;
	}
	
	//은행명 카테고리 조회
	public List<BankVo> bankCategorySelect(){
		return dao.bankCategorySelect(sst);
	}
	
	//세미나 개설하기
	public int createSeminar(SeminarVo svo, FileVo fvo) throws Exception {
		int SeminarResult = dao.createSeminar(sst, svo);
		if(SeminarResult != 1) {
			throw new  Exception("세미나 테이블 데이터 insert 실패");
		}
		return dao.insertSeminarAttach(sst,fvo);
				
	}
	
	//세미나 목록 갯수 조회
	public int getSeminarCnt(Map<String, String> searchMap) {
		return dao.getSeminarCnt(sst, searchMap);
	}
	
	//세미나 목록 조회
	public List<SeminarVo> getSeminarList(Map<String, String> searchMap, PageVo pv) {
		return dao.getSeminarList(sst, pv, searchMap);
	}

	//세미나 상세조회
	public SeminarVo getSeminarDetail(String no) throws Exception {
		//세미나 조회수 증가
		int result = dao.increaseSminarHit(sst, no);
		if(result != 1) {
			throw new Exception("세미나 조회수 증가 실패");
		}
		return dao.getSeminarDetail(sst, no);
	}

	//관심내역 조회하기
	public MemberInterestVo selectInterstSeminar(SeminarVo svo) {
		return dao.selectInterstSeminar(sst, svo);
	}
	
	//관심내역 추가 + 좋아요 업데이트
	public int addInterestSeminar(SeminarVo svo) throws Exception {
		int addResult = dao.addInterestSeminar(sst, svo);
		if(addResult != 1) {
			throw new Exception("관심내역에 세미나 추가 실패");
		}
		return dao.addLikeCount(sst, svo);
	}
	
	//세미나 신고하기
	public int reportSeminar(SeminarReportVo srvo) {
		return dao.reportSeminar(sst, srvo);
	}
	
	
	
}
