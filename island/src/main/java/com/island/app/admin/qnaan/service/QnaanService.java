package com.island.app.admin.qnaan.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.admin.qnaan.dao.QnaanDao;
import com.island.app.admin.qnaan.vo.QnaanVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */

@Service
@Transactional
public class QnaanService {
	
	private final QnaanDao dao;
	private final SqlSessionTemplate sst;

	public QnaanService(QnaanDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}

	public int getQnaanListCnt() {
		return dao.getQnaanListCnt(sst);
	}
	//목록조회
	public List<QnaanVo> getQnaanList(PageVo pv) {
		return dao.getQnaanList(sst , pv);
	}
	//상세조회
	public QnaanVo getQnaanDetail(int no) {
		return dao.getQnaanDetail(sst , no);
	}
	//작성하기
	public int qnaanWrite(QnaanVo qnaanVo) {
		return dao.qnaanWrite(sst , qnaanVo);
    }
	
    public int qnaanUpdate(QnaanVo qnaanVo) {
    	return dao.qnaanUpdate(qnaanVo);
    }
    //삭제하기
    public int qnaanDelete(String num) {
    	return dao.qnaanDelete(sst , num);
    }
    public String getqnaancategoryName(String qnaancategoryNo) {
		return dao.getqnaancategoryName(sst, qnaancategoryNo);
	}

	public int qnaanEdit(QnaanVo qnaanVo) {
		
		
		return dao.qnaanEdit(sst , qnaanVo);
	}

}