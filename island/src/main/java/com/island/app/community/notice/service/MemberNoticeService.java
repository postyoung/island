package com.island.app.community.notice.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.island.app.admin.notice.vo.NoticeVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.notice.dao.MemberNoticeDao;

@Service
public class MemberNoticeService {
	private final SqlSessionTemplate sst;
	private final MemberNoticeDao dao;
	
	@Autowired
	public MemberNoticeService(SqlSessionTemplate sst, MemberNoticeDao dao) {
		this.sst = sst;
		this.dao = dao;
	}
	//공지사항 목록조회
	public List<NoticeVo> getNoticeList(PageVo pv, Map<String, String> searchMap) {
		return dao.getNoticeList(sst,pv,searchMap);
	}
	//공지사항 목록 갯수조회
	public int getCnt(Map<String, String> searchMap) {
		return dao.getCnt(sst,searchMap);
	}
	//공지사항 상세조회
	public NoticeVo getNotice(String no) {
		
		return dao.getNotice(sst, no);
	}

}
