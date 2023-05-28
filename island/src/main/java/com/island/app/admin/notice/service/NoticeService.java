package com.island.app.admin.notice.service;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.admin.notice.dao.NoticeDao;
import com.island.app.admin.notice.vo.NoticeVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */

@Service 
@Transactional
public class NoticeService {
	private final NoticeDao dao;
	private final SqlSessionTemplate sst;
	
	
	@Autowired
	public NoticeService(NoticeDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}
	//목록 조회
	public List<NoticeVo> getNoticeList(PageVo pv) {
		return dao.getNoticeList(sst , pv);
	}

	//작성하기
	 public int write(NoticeVo vo) { 
		 return dao.write(sst , vo);
	}

	 //상세조회
	 public NoticeVo getNotice(String num) {
		 return dao.getNotice(sst , num);
	 }
	 //수정하기
	 public int edit(NoticeVo vo) {
		 return dao.edit(sst , vo); 
	 }
	 //삭제하기
	 public int delete(String num) {
		 return dao.delete(sst , num);
	 }
	 //게시글 페이징
	 public int getNoticeListCnt() {
			return dao.getNoticeListCnt(sst);
	}
	 

	

}
