package com.island.app.admin.faq.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.island.app.admin.faq.vo.FaqVo;

public class FaqDao {
	public List<FaqVo> getFaqList(SqlSessionTemplate sst ){
		
		return sst.selectList("faq.getfaqList" );
	}

	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.insert("faq.write" , vo);
	}
	
	public FaqVo getFaq(SqlSessionTemplate sst, String num) {

		return sst.selectOne("faq.getFaq" , num);
	}

	public int edit(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.update("faq.edit" , vo);
	}
	
	public int delete(SqlSessionTemplate sst, String num) {
		return sst.update("faq.delete" , num);
	}

	public int getFaqListCnt(SqlSessionTemplate sst) {
		
		return sst.selectOne("faq.getFaqListCnt");
	}

	public int increaseHit(SqlSessionTemplate sst, String num) {
		
		return sst.update("faq.increaseHit" , num);
	}



}
