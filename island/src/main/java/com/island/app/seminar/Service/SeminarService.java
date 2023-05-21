package com.island.app.seminar.Service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.seminar.bank.vo.BankVo;
import com.island.app.seminar.dao.SeminarDao;
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
	public int getSeminarCnt() {
		return dao.getSeminarCnt(sst);
	}
	
	//세미나 목록 조회
	public List<SeminarVo> getSeminarList(PageVo pv) {
		return dao.getSeminarList(sst,pv);
	}
	
}
