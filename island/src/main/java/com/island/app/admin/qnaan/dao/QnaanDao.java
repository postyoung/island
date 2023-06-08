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

	public int qnaanUpdate(SqlSessionTemplate sst , QnaanVo qnaanVo) {
		return sst.update("adminqnaan.qnaanUpdate" , qnaanVo);
	}

	public int qnaanDelete(SqlSessionTemplate sst , String num) {
		return sst.update("adminqnaan.qnaanDelete" , num);
	}


	public String getqnaancategoryName(SqlSessionTemplate sst, String qnaancategoryName) {
		return sst.selectOne("adminqnaan.getqnaancategoryName" , qnaancategoryName );
	}

	public int qnaanEdit(SqlSessionTemplate sst, QnaanVo qnaanVo) {
		return sst.update("adminqnaan.qnaanEdit" , qnaanVo);
	}

	public int qnaanUpdate(QnaanVo qnaanVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int qnaanDelete(int no) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}