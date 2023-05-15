package com.island.app.admin.faq.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;

@Repository
public class FaqDao {
	public List<FaqVo> getFaqList(SqlSessionTemplate sst, PageVo pv){
		
		return sst.selectList("adminfaq.getFaqList" , pv);
	}

	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.insert("adminfaq.faqwrite" , vo);
	}
	
	public FaqVo getFaq(SqlSessionTemplate sst ,String no) {

		return sst.selectOne("adminfaq.getFaq" , no );
	}

	public int faqedit(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.update("adminfaq.edit" , vo);
	}
	
	public int faqdelete(SqlSessionTemplate sst, String no) {
		return sst.update("adminfaq.delete" , no);
	}
	//게시글 갯수 조회 
	public int getCnt(SqlSessionTemplate sst) {
		return sst.selectOne("adminfaq.getCnt");
	}

	public int getFaqListCnt(SqlSessionTemplate sst) {
		
		return sst.selectOne("adminfaq.getFaqListCnt");
	}

	




}
