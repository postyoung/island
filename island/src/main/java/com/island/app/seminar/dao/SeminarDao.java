package com.island.app.seminar.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.seminar.bank.vo.BankVo;
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
	public int getSeminarCnt(SqlSessionTemplate sst) {
		return sst.selectOne("seminar.getSeminarCnt");
	}
	
	//세미나 목록 조회
	public List<SeminarVo> getSeminarList(SqlSessionTemplate sst, PageVo pv) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		return sst.selectList("seminar.getSeminarList", null, rb);
	}
}
