package com.island.app.community.faq.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;

@Repository
public class CommunityFaqDao {
	
	//FAQ 게시글 목록 갯수 조회
	public int getCnt(SqlSessionTemplate sst) {
		return sst.selectOne("community.faqGetCnt");
	}
	
	//FAQ게시글 목록 조회
	public List<FaqVo> getFaqList(SqlSessionTemplate sst, PageVo pv) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		return sst.selectList("community.getFaqList", null, rb);

	}
	
	
	//FAQ 카테고리별 목록 조회
	public List<FaqVo> getFaqsByCategory(SqlSessionTemplate sst, PageVo pv, String categoryNo) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		return sst.selectList("community.getFaqsByCategory", categoryNo, rb);
	}

	//FAQ 카테고리별 게시글 갯수 조회
	public int getByCategoryCnt(SqlSessionTemplate sst, String categoryNo) {
		return sst.selectOne("community.getByCategoryCnt", categoryNo);
	}
	
	
}
