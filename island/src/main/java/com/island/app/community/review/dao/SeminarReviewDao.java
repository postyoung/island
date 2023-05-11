package com.island.app.community.review.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.common.file.FileVo;
import com.island.app.community.review.vo.SeminarReviewVo;

@Repository
public class SeminarReviewDao {

	
	//세미나 리뷰 작성하기
	public int seminarReviewWrite(SqlSessionTemplate sst, SeminarReviewVo srvo) {
		System.out.println("srvo = "+ srvo);
		return sst.insert("community.seminarReviewWrite", srvo);
	}
	
	//세미나 리뷰 썸네일 사진경로 인서트
	public int insertReviewAttach(SqlSessionTemplate sst, FileVo fvo) {
		return sst.insert("community.reviewAttach", fvo);
	}
	
}
