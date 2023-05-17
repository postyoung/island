package com.island.app.community.faq.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.faq.dao.CommunityFaqDao;

@Service
@Transactional
public class CommunityFaqService {
	private final SqlSessionTemplate sst;
	private final CommunityFaqDao dao;

	@Autowired
	public CommunityFaqService(SqlSessionTemplate sst, CommunityFaqDao dao) {
		this.sst = sst;
		this.dao = dao;
	}
	
	//FAQ게시글 갯수 조회
	public int getCnt() {
		return dao.getCnt(sst);
	}
	
	//FAQ목록 조회
	public List<FaqVo> getFaqList(PageVo pv) {
		return dao.getFaqList(sst, pv);
	}
	
	//FAQ 카테고리별 목록 조회
	public List<FaqVo> getFaqsByCategory(PageVo pv, String categoryNo) {
		return dao.getFaqsByCategory(sst, pv, categoryNo);
	}
	
	//FAQ 카테고리별 게시글 갯수 조회
	public int getByCategoryCnt(String categoryNo) {
		return dao.getByCategoryCnt(sst, categoryNo);
	}
	
	
}
