package com.island.app.admin.qnaan.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Autowired
	public QnaanService(QnaanDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}

	public int getQnaanListCnt() {
		return dao.getQnaanListCnt(sst);
	}

	public List<QnaanVo> getQnaanList(PageVo pv) {
		return dao.getQnaanList(sst , pv);
	}

	public int qnaanWrite(QnaanVo qnaan) {
		return dao.qnaanWrite(sst , qnaan);
	}

	
	

}
