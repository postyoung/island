package com.island.app.community.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.island.app.common.file.FileUploader;
import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.community.review.Service.SeminarReviewService;
import com.island.app.community.review.report.vo.ReviewReportVo;
import com.island.app.community.review.vo.SeminarReviewVo;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.vo.SeminarVo;

/**
 * 
 * @author 서지현
 *
 */
@Controller
@RequestMapping("community")
public class SeminarReviewController {
   
   private final SeminarReviewService srs;
   
   @Autowired
   public SeminarReviewController(SeminarReviewService srs) {
      this.srs = srs;
   }


   //세미나 리뷰 목록 (화면)
   @GetMapping("seminarReview/list")
   public String getSeminarReviewList(@RequestParam(defaultValue = "1")int page, Model m) {
      //페이징
      int listCount = srs.getCnt();
      int currentPage = page;
      int pageLimit = 5;
      int boardLimit = 8;
      PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
      
      //서비스
      List<SeminarReviewVo> srList = srs.getSeminarReviewList(pv);
      
      m.addAttribute("srList", srList);
      m.addAttribute("pv", pv);
      return "community/review/list";
   }
   
   
   //세미나 리뷰 검색
   @PostMapping("seminarReview/search")
   public String searchSeminarReviewList(String seminarName ,Model m) throws Exception {
      List<SeminarReviewVo> srList = srs.searchSeminarReviewList(seminarName);
      if(srList == null) {
         throw new Exception("세미나 리뷰 검색중 예외 발생");
      }
      m.addAttribute("srList", srList);
      return "community/review/list";
   }
   
   
   
   //세미나 리뷰 작성하기 (화면)
   @GetMapping("seminarReview/write")
   public String seminarReviewWrite(HttpSession session, String no, Model m) {
      //로그인 여부 체크
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용해주세요.");
         return "redirect:/community/seminarReview/list";
      }
      
      //리뷰 해당 세미나 이름 조회 
      SeminarVo svo = srs.getSeminarInfo(no);
      m.addAttribute("svo", svo);
      return "community/review/write";
   }
   
   //세미나 리뷰 작성하기
   @PostMapping("seminarReview/write")
   public String seminarReviewWrite(SeminarReviewVo srvo, MultipartFile thumbnailFile, HttpServletRequest req, HttpSession session) throws Exception {
      //로그인 여부 체크
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용해주세요.");
         return "redirect:/community/seminarReview/list";
      }
      
      //회원 번호 가져오기 (loginMember에서 getNo해오기 임시코드)
      srvo.setMemberNo(loginMember.getNo());
      
      //데이터 준비(파일)
      String path = req.getServletContext().getRealPath("/resources/img/community/review/upload/");
      String changeName = FileUploader.upload(thumbnailFile, path);
      String originName = FileUploader.getOriginName(thumbnailFile);
      
      //FileVo 뭉치기
      FileVo fvo = new FileVo();
      fvo.setChangeName(changeName);
      fvo.setOriginName(originName);
      
      srvo.setReviewThumbnail(changeName);
      
      //서비스
      int result = srs.seminarReviewWrite(srvo, fvo);
      
      if(result != 1) {
         throw new Exception("세미나 리뷰 작성 실패");
      }
      return "redirect:/community/seminarReview/list";
   }
   
   
   //세미나 리뷰 섬머노트 img태그 변환
   @PostMapping(value="/uploadSummernoteImageFile", produces = "application/json")
   @ResponseBody
   public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile,HttpServletRequest req) {
      JsonObject jsonObject = new JsonObject();
      
      String path = req.getServletContext().getRealPath("/resources/img/community/review/upload/summernote/");
      String changeName = FileUploader.upload(multipartFile, path);
      
      jsonObject.addProperty("url", "/app/resources/img/community/review/upload/summernote/"+changeName);
      jsonObject.addProperty("responseCode", "success");
      
      return jsonObject;
   }
   
   
   
   
   //세미나 리뷰 상세조회 (화면)
   @GetMapping("seminarReview/detail")
   public String getSeminarReviewDetail(String no, Model m) throws Exception {
      
      SeminarReviewVo srDetail = srs.getSeminarReviewDetail(no);
      
      if(srDetail == null) {
         throw new Exception("세미나 리뷰 상세 조회 실패");
      }
      
      m.addAttribute("srDetail", srDetail);
      return "community/review/detail";
   }
   
   
   //세미나 리뷰 신고하기
   @PostMapping("seminarReview/report")
   public String reportSeminarReview(ReviewReportVo rrvo, HttpSession session) throws Exception {
      //로그인 한 유저만 신고 가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/community/seminarReview/detail?no="+ rrvo.getReviewNo();
      }
      int result = srs.reportSeminarReview(rrvo);
      if(result != 1) {
         throw new Exception("세미나 리뷰 신고 실패");
      }
      session.setAttribute("alertMsg", "신고가 접수되었습니다!");
      return "redirect:/community/seminarReview/detail?no="+ rrvo.getReviewNo();
   }
   
   
   //세미나 리뷰 내용수정 (화면)
   @GetMapping("seminarReview/edit")
   public String seminarReviewEdit(String no, Model m) throws Exception {
      SeminarReviewVo srDetail = srs.getSeminarReviewDetail(no);
      
      if(srDetail == null) {
         throw new Exception("세미나 리뷰 상세 조회 실패");
      }
      m.addAttribute("srDetail", srDetail);
      return "community/review/edit";
   }
   
   
   //세미나 리뷰 내용 수정하기
   @PostMapping("seminarReview/edit")
   public String seminarReviewEdit(SeminarReviewVo srvo, MultipartFile thumbnailFile,HttpServletRequest req, HttpSession session) throws Exception {
      
      //썸네일 파일 비었는지 검사
      if(thumbnailFile.isEmpty()) {
         int result = srs.modifySeminarReviewOnlyDetail(srvo);
         session.setAttribute("alertMsg", "리뷰가 수정되었습니다.");
         return "redirect:/community/seminarReview/detail?no=" + srvo.getNo();
      }
      
      //썸네일 파일 있을 경우
      String path = req.getServletContext().getRealPath("/resources/img/community/review/upload/");
      String changeName = FileUploader.upload(thumbnailFile, path);
      
      String originName = FileUploader.getOriginName(thumbnailFile);
      
      //FileVo 뭉치기
      FileVo fvo = new FileVo();
      fvo.setChangeName(changeName);
      fvo.setOriginName(originName);
      fvo.setReviewNo(srvo.getNo());
      
      srvo.setReviewThumbnail(changeName);
      
      int result = srs.modifySeminarReviewWithThumbnail(fvo, srvo);
      
      if(result != 1) {
         throw new Exception("세미나 리뷰 상세내용, 썸네일파일 수정 실패");
      }
      session.setAttribute("alertMsg", "리뷰가 수정되었습니다.");
      return "redirect:/community/seminarReview/detail?no="+ srvo.getNo();
      
   }
   
   //세미나 리뷰 삭제하기
   @GetMapping("seminarReview/delete")
   public String seminarReviewDelete(String no, HttpSession session) throws Exception {

      int result = srs.deleteSeminarReview(no);
      if(result != 1) {
         throw new Exception("세미나 리뷰 삭제 실패");
      }
      session.setAttribute("alertMsg", "리뷰가 삭제되었습니다.");
      return "redirect:/community/seminarReview/list";
      
   }
   
}