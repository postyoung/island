package com.island.app.admin.faq.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.faq.vo.FaqVo;

@Repository
public class FaqDao {
	public List<FaqVo> getFaqList(SqlSessionTemplate sst ){
		
		return sst.selectList("adminfaq.getFaqList");
	}

	public int faqWrite(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.insert("adminfaq.faqwrite" , vo);
	}
	
	public FaqVo getFaq(SqlSessionTemplate sst, String num) {

		return sst.selectOne("adminfaq.getFaq" , num);
	}

	public int faqedit(SqlSessionTemplate sst, FaqVo vo) {
		
		return sst.update("adminfaq.edit" , vo);
	}
	
	public int faqdelete(SqlSessionTemplate sst, String num) {
		return sst.update("adminfaq.delete" , num);
	}

	public int getFaqListCnt(SqlSessionTemplate sst) {
		
		return sst.selectOne("faq.getFaqListCnt");
	}

	public int increaseHit(SqlSessionTemplate sst, String num) {
		
		return sst.update("faq.increaseHit" , num);
	}



}
