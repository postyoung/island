package com.island.app.community.review.Service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.review.dao.SeminarReviewDao;
import com.island.app.community.review.report.vo.ReviewReportVo;
import com.island.app.community.review.vo.SeminarReviewVo;
import com.island.app.seminar.vo.SeminarVo;

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
   
   //세미나 리뷰 갯수 조회 
   public int getCnt() {
      return dao.getCnt(sst);
   }
   
   //세미나 리뷰 목록 조회
   public List<SeminarReviewVo> getSeminarReviewList(PageVo pv) {
      return dao.getSeminarReviewList(sst, pv);
   }
   
   
   //세미나 리뷰 상세 조회
   public SeminarReviewVo getSeminarReviewDetail(String no) {
      return dao.getSeminarReviewDetail(sst, no);
   }
   
   //세미나 리뷰 상세내용 (리뷰내용 + 썸네일 이름) 수정 
   public int modifySeminarReviewWithThumbnail(FileVo fvo, SeminarReviewVo srvo) throws Exception {
      int ReviewEditResult =  dao.modifySeminarReview(sst, srvo);
      if(ReviewEditResult != 1) {
         throw new Exception("상세내용 수정 실패");
      }
      return dao.modifySeminarReviewWithThumbnail(sst,fvo);
   }

   //세미나 리뷰 상세내용(제목,내용만,별점) 수정 
   public int modifySeminarReviewOnlyDetail(SeminarReviewVo srvo) {
      return dao.modifySeminarReviewOnlyDetail(sst,srvo);
   }
   
   //세미나 리뷰 삭제
   public int deleteSeminarReview(String no) {
      return dao.deleteSeminarReview(sst,no);
   }
   
   //세미나 리뷰 검색
   public List<SeminarReviewVo> searchSeminarReviewList(String seminarName) {
      return dao.searchSeminarReviewList(sst, seminarName);
   }
   
   //세미나 리뷰 신고하기
   public int reportSeminarReview(ReviewReportVo rrvo) {
      return dao.reportSeminarReview(sst, rrvo);
   }
   
   //리뷰작성할 세미나 정보 가져오기
   public SeminarVo getSeminarInfo(String no) {
      return dao.getSeminarInfo(sst, no);
   }
}