package com.island.app.admin.faq.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */

@Repository
public class FaqDao {
	public List<FaqVo> getFaqList(SqlSessionTemplate sst, PageVo pv){
		
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		
		return sst.selectList("adminfaq.getFaqList" , null , rb);
	}

	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.insert("adminfaq.faqwrite" , vo);
	}
	
	public FaqVo getFaq(SqlSessionTemplate sst ,String num) {

		return sst.selectOne("adminfaq.getFaq" , num );
	}

	public int faqedit(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.update("adminfaq.faqedit" , vo);
	}
	
	public int faqdelete(SqlSessionTemplate sst, String num) {
		return sst.update("adminfaq.faqdelete" , num);
	}
	//게시글 갯수 조회 
	public int getCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminfaq.getCnt");
	}

	
	public String getcategoryName(SqlSessionTemplate sst, String categoryName) {
		return sst.selectOne("adminfaq.getcategoryName" , categoryName );
	}


	

	

	

	




}
