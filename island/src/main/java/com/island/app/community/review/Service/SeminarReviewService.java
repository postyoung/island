package com.island.app.community.review.Service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.common.file.FileVo;
import com.island.app.community.review.dao.SeminarReviewDao;
import com.island.app.community.review.vo.SeminarReviewVo;

@Service
@Transactional
public class SeminarReviewService {
	private final SqlSessionTemplate sst;
	private final SeminarReviewDao dao;
	
	@Autowired
	public SeminarReviewService(SqlSessionTemplate sst, SeminarReviewDao dao) {
		this.sst = sst;
		this.dao = dao;
	}
	
	//세미나 리뷰 작성하기
	public int seminarReviewWrite(SeminarReviewVo srvo, FileVo fvo) throws Exception {
		int ReviewResult = dao.seminarReviewWrite(sst, srvo);
		if(ReviewResult != 1) {
			throw new Exception("세미나 리뷰 테이블 insert 실패");
		}
		
		return dao.insertReviewAttach(sst, fvo);
	}

}
