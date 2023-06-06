package com.island.app.community.review.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.review.report.vo.ReviewReportVo;
import com.island.app.community.review.vo.SeminarReviewVo;
import com.island.app.seminar.vo.SeminarVo;

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
      return sst.selectOne("community.SeminarReviewGetCnt");
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
   
   //세미나 리뷰 상세내용 (리뷰내용 + 썸네일 이름) 수정 
   public int modifySeminarReview(SqlSessionTemplate sst, SeminarReviewVo srvo) {
      return sst.update("community.modifySeminarReviewAndTumbnail", srvo);
   }
   
   //세미나 리뷰 상세내용 수정 (썸네일 테이블 수정)
   public int modifySeminarReviewWithThumbnail(SqlSessionTemplate sst, FileVo fvo) {
      return sst.update("community.modifyReviewAttach", fvo);
   }
   
   //세미나 리뷰 상세내용(제목,내용만,별점) 수정 
   public int modifySeminarReviewOnlyDetail(SqlSessionTemplate sst, SeminarReviewVo srvo) {
      return sst.update("community.modifySeminarReviewOnlyDetail", srvo);
   }

   //세미나 리뷰 삭제
   public int deleteSeminarReview(SqlSessionTemplate sst, String no) {
      return sst.update("community.deleteSeminarReview", no);
   }
   
   //세미나 리뷰 검색
   public List<SeminarReviewVo> searchSeminarReviewList(SqlSessionTemplate sst, String seminarName) {
      return sst.selectList("community.searchSeminarReviewList", seminarName);
      
   }
   
   //세미나 리뷰 신고하기
   public int reportSeminarReview(SqlSessionTemplate sst, ReviewReportVo rrvo) {
      return sst.insert("community.reportSeminarReview", rrvo);
   }
   
   //리뷰작성할 세미나 정보 가져오기
   public SeminarVo getSeminarInfo(SqlSessionTemplate sst, String no) {
      return sst.selectOne("community.getSeminarInfo", no);
   }
   
}