package com.island.app.admin.qnaan.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.qnaan.vo.QnaanVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */

@Repository
public class QnaanDao {
	
	public int getQnaanListCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminqnaan.getQnaanListCnt");
	}

	public List<QnaanVo> getQnaanList(SqlSessionTemplate sst, PageVo pv) {
		
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		
		return sst.selectList("adminqnaan.getQnaanList" , null , rb);
	}
	public int qnaanWrite(SqlSessionTemplate sst , QnaanVo qnaanVo) {
		return sst.insert("adminqnaan.qnaanWrite" , qnaanVo);
	}

	public QnaanVo getQnaanDetail(SqlSessionTemplate sst , int no) {
		return sst.selectOne("adminqnaan.getQnaanDetail" , no);
	}
//
//	public String qnaanUpdate(QnaanVo qnaanVo) {
//		return sst.update("adminqnaan.qnaanUpdate" , qnaanVo);
//	}
//
//	public String qnaanDelete(int no) {
//		return sst.update("adminqnaan.qnaanDelete" , no);
//	}
	
	

}