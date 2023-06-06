package com.island.app.seminar.Service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.member.apply.vo.MemberApplyVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.report.vo.MemberReportVo;
import com.island.app.seminar.bank.vo.BankVo;
import com.island.app.seminar.dao.SeminarDao;
import com.island.app.seminar.pay.vo.SeminarPayVo;
import com.island.app.seminar.reply.vo.SeminarReplyVo;
import com.island.app.seminar.report.vo.SeminarReportVo;
import com.island.app.seminar.vo.SeminarVo;

@Service
@Transactional
public class SeminarService {
   private final SqlSessionTemplate sst;
   private final SeminarDao dao;

   @Autowired
   public SeminarService(SqlSessionTemplate sst, SeminarDao dao) {
      this.sst = sst;
      this.dao = dao;
   }
   
   //은행명 카테고리 조회
   public List<BankVo> bankCategorySelect(){
      return dao.bankCategorySelect(sst);
   }
   
   //세미나 개설하기
   public int createSeminar(SeminarVo svo, FileVo fvo) throws Exception {
      int SeminarResult = dao.createSeminar(sst, svo);
      if(SeminarResult != 1) {
         throw new  Exception("세미나 테이블 데이터 insert 실패");
      }
      return dao.insertSeminarAttach(sst,fvo);
            
   }
   
   //세미나 목록 갯수 조회
   public int getSeminarCnt(Map<String, String> searchMap) {
      return dao.getSeminarCnt(sst, searchMap);
   }
   
   //세미나 목록 조회
   public List<SeminarVo> getSeminarList(Map<String, String> searchMap, PageVo pv) {
      return dao.getSeminarList(sst, pv, searchMap);
   }

   //세미나 상세조회 (+조회수 증가)
   public SeminarVo getSeminarDetailAndHit(String no) throws Exception {
      //세미나 조회수 증가
      int result = dao.increaseSminarHit(sst, no);
      if(result != 1) {
         throw new Exception("세미나 조회수 증가 실패");
      }
      return dao.getSeminarDetail(sst, no);
   }

   //관심내역 조회하기
   public MemberInterestVo selectInterstSeminar(SeminarVo svo) {
      return dao.selectInterstSeminar(sst, svo);
   }
   
   //관심내역 추가 + 좋아요 업데이트
   public int addInterestSeminar(SeminarVo svo) throws Exception {
      int addResult = dao.addInterestSeminar(sst, svo);
      if(addResult != 1) {
         throw new Exception("관심내역에 세미나 추가 실패");
      }
      return dao.addLikeCount(sst, svo);
   }
   
   //세미나 신고하기
   public int reportSeminar(SeminarReportVo srvo) {
      return dao.reportSeminar(sst, srvo);
   }

   //세미나 댓글작성하기
   public int writeSeminarReply(SeminarReplyVo srvo) {
      return dao.writeSeminarReply(sst, srvo);
   }
   
   //세미나 댓글 조회하기
   public List<SeminarReplyVo> getSeminarReplyList(String sNo) {
      return dao.getSeminarReplyList(sst, sNo);
   }
   
   //세미나 댓글 삭제하기
   public int deleteSeminarReply(SeminarReplyVo srvo) {
      return dao.deleteSeminarReply(sst, srvo);
   }
   
   //해당 세미나 댓글 갯수조회
   public int getReplyCnt(String sNo) {
      return dao.getReplyCnt(sst, sNo);
   }
   
   //세미나 댓글 회원 신고
   public int reportMember(MemberReportVo mrvo) {
      return dao.reportMember(sst, mrvo);
   }
   
   //세미나 삭제하기
   public int deleteSeminar(String sNo) {
      return dao.deleteSeminar(sst, sNo);
   }
   
   //세미나 수정 상세조회
   public SeminarVo getSeminarDetailToEdit(String sNo) {
      return dao.getSeminarDetailToEdit(sst, sNo);
   }
   
   //세미나 수정하기 (+세미나 썸네일 사진 수정)
   public int seminarModifyWithAttach(FileVo fvo, SeminarVo svo) {
      int seminarResult = dao.seminarModify(sst, svo);
      if(seminarResult != 1) {
         new IllegalStateException("세미나 수정 실패");
      }
      return dao.seminarAttachModify(sst, fvo);
   }
   
   //세미나 수정(내용만)
   public int seminarModifyOnlyDetail(SeminarVo svo) {
      return dao.seminarModify(sst, svo);
   }

   //세미나 수정 위한 정보 조회
   public SeminarVo getSeminarDetail(String sNo) {
      return dao.getSeminarDetail(sst, sNo);
   }
   
   //세미나 신청하기 (+ 현재 참가인원 추가)
   public int applySeminar(SeminarVo svo) {
      int result = dao.addSeminarCurrentCapacity(sst, svo.getNo());
      if(result != 1) {
         throw new IllegalStateException("현재 참가인원 추가 실패");
      }
      return dao.applySeminar(sst, svo);
   }
   
   //세미나 신청 했는지 조회
   public MemberApplyVo applyCheckSeminar(SeminarVo svo) {
      return dao.applyCheckSeminar(sst, svo);
   }
   
   //세미나 결제 (+현재참가인원 업뎃 , 참가내역 insert)
   public int payApplySeminar(SeminarPayVo spvo, SeminarVo svo) {
      int capacityResult = dao.addSeminarCurrentCapacity(sst, spvo.getSNo());
      int PayApplyResult = dao.payApplySeminar(sst, spvo);
      if(capacityResult != 1 && PayApplyResult != 1) {
         throw new IllegalStateException("현재 참가인원 업데이트 및 결제 실패");
      }
      return dao.applySeminar(sst, svo);
   }
   
   //메인화면 인기있는 세미나 조회
   public List<SeminarVo> bestSeminarList() {
      return dao.bestSeminarList(sst);
   }
   
   
   
}