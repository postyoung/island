package com.island.app.community.review.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
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
	
	
	//세미나 리뷰 갯수 조회
	public int getCnt(SqlSessionTemplate sst) {
		return sst.selectOne("community.getCnt");
	}

	//세미나 리뷰 리스트 조회
	public List<SeminarReviewVo> getSeminarReviewList(SqlSessionTemplate sst, PageVo pv) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage()-1) * limit;
		RowBounds rb = new RowBounds(offset , limit);
		return sst.selectList("community.getSeminarReviewList", null, rb);
	}
	
	//세미나 리뷰 상세 조회
	public SeminarReviewVo getSeminarReviewDetail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("community.getSeminarReviewDetail", no);
	}
}
