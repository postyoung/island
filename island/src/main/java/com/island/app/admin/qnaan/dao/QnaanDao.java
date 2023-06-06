package com.island.app.admin.qnaan.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.island.app.admin.qnaan.vo.QnaanVo;
import com.island.app.common.page.PageVo;

@Repository
public class QnaanDao {
	
	private final SqlSessionTemplate sst;
	
	@Autowired
	public QnaanDao(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public int getQnaanListCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminqnaan.getQnaanListCnt");
	}

	public List<QnaanVo> getQnaanList(SqlSessionTemplate sst, PageVo pv) {
		
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		
		return sst.selectList("adminqnaan.getQnaanList" , null , rb );
	}

	public int qnaanWrite(SqlSessionTemplate sst, QnaanVo qnaan) {
		return sst.insert("adminqnaan.qnaanWrite" , qnaan);
	}

	

}
