package com.island.app.seminar.controller;

import java.io.File;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.island.app.common.file.FileUploader;
import com.island.app.common.file.FileVo;
import com.island.app.common.page.PageVo;
import com.island.app.member.apply.vo.MemberApplyVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.report.vo.MemberReportVo;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.Service.SeminarService;
import com.island.app.seminar.bank.vo.BankVo;
import com.island.app.seminar.pay.vo.SeminarPayVo;
import com.island.app.seminar.reply.vo.SeminarReplyVo;
import com.island.app.seminar.report.vo.SeminarReportVo;
import com.island.app.seminar.vo.SeminarVo;

/**
 * 
 * @author 
 *
 */
@Controller
@RequestMapping("seminar")
public class SeminarController {
   private final SeminarService ss;   
   private final Gson gson;
   @Autowired
   public SeminarController(SeminarService ss, Gson gson) {
      this.ss = ss;
      this.gson = gson;
   }

   //세미나 목록 조회(+페이징)
   @GetMapping("list")
   public String getSeminarList(@RequestParam(defaultValue = "1")int page, @RequestParam Map<String,String> searchMap, Model m) throws Exception {
      //페이징
      int listCount = ss.getSeminarCnt(searchMap);
      int currentPage = page;
      int pageLimit = 5;
      int boardLimit = 9;
      PageVo pv = new PageVo(listCount, currentPage, pageLimit, boardLimit);
      
      //요일얻기
      List<SeminarVo> svoList = ss.getSeminarList(searchMap, pv);
      if(svoList == null) {
         throw new Exception("세미나 목록 조회 실패");
      }
      m.addAttribute("searchMap", searchMap);
      m.addAttribute("pv", pv);
      m.addAttribute("svoList", svoList);
      return "seminar/list";
   }
   

   //세미나 개설하기(화면)
   @GetMapping("create")
   public String createSeminar(Model m, HttpSession session) {
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인을 먼저 진행해주세요.");
         return "redirect:/seminar/list";
      }
      
      List<BankVo> bankList = ss.bankCategorySelect();
      if(bankList != null) {
         m.addAttribute("bankList", bankList);
         return "seminar/create";
      }
      return "eroor-page";
   }
   
   //세미나 개설하기
   @PostMapping("create")
   public String createSeminar(SeminarVo svo, MultipartFile thumbnailFile, HttpServletRequest req , HttpSession session) throws Exception {
      //로그인 회원번호 세팅 
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 진행해주세요.");
         return "redirect:/seminar/list";
      }
      svo.setWriterNo(loginMember.getNo());
      
      //세미나 시작시간~종료시간 세팅
      svo.setSeminarTime(svo.getSHour(), svo.getSMinute(), svo.getFHour(), svo.getFMinute());
      //세미나 참가신청 마감일시 세팅
      svo.setCloseTime(svo.getCHour(), svo.getCMinute());
      
      
      //데이터 준비(파일)
      String path = req.getServletContext().getRealPath("/resources/img/seminar/upload/");
      String changeName = "";
      String originName = "";
      if(!thumbnailFile.isEmpty()) {
         changeName = FileUploader.upload(thumbnailFile, path);
         originName = FileUploader.getOriginName(thumbnailFile);
      }else {
         changeName = "seminar-ex.png";
         originName = "seminar-ex.png";
      }
      
      svo.setSeminarThumbnail(changeName);
      
      //세미나 썸네일 사진파일 세팅
      FileVo fvo = new FileVo();
      fvo.setOriginName(originName);
      fvo.setChangeName(changeName);
      
      int result = ss.createSeminar(svo, fvo);
      if(result != 1) {
         throw new Exception("세미나 개설하기 실패");
      }
      session.setAttribute("alertMsg", "세미나가 개설되었습니다.");
      return "redirect:/seminar/list";
   }
   
   
   //ajax로 들어오는 파일 업로드 요청처리
   @PostMapping("upload/summernote")
   @ResponseBody
   public String upload(List<MultipartFile> fileList, HttpServletRequest req) throws Exception {
      List<String> changeNameList = new ArrayList<String>();
      
      for(MultipartFile f : fileList) {
         //경로 준비
         String path = req.getServletContext().getRealPath("/resources/img/seminar/upload/summernote/");
         String changeName = UUID.randomUUID().toString();
         String ext = f.getOriginalFilename().substring(f.getOriginalFilename().lastIndexOf(".")); 
               
         //타겟파일 준비
         File target = new File(path + changeName + ext);
         
         //파일저장 및 전송
         f.transferTo(target);
         
         changeNameList.add(changeName + ext);
      }
      
      Gson gson = new Gson();
      
      return gson.toJson(changeNameList);
      
   }
   
   
   //세미나 상세 조회(화면)
   @GetMapping("detail")
   public String getSeminarDetailAndHit(String no, Model m, HttpSession session) throws Exception {
      //세미나 상세조회 + 조회수 증가
      SeminarVo svo = ss.getSeminarDetailAndHit(no);

      //댓글 영역 로그인 유저 프로필 가져오기
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember !=null) {
         svo.setLoginMemberProfile(loginMember.getProfileName());
      }else {
         svo.setLoginMemberProfile("noimage.jpg");
      }
      
      if(svo == null) {
         throw new Exception("세미나 상세조회 실패");
      }
      m.addAttribute("svo", svo);
      return "seminar/detail";
   }
   
   //ajax로 세미나 댓글 조회
   @ResponseBody
   @GetMapping("reply/list")
   public String getSeminarReplyList(String sNo) {
      //해당 세미나 댓글 갯수조회
      int replyCount = ss.getReplyCnt(sNo);
      
      if(replyCount != 0) {
         //해당 세미나 댓글 조회
         List<SeminarReplyVo> srvoList = ss.getSeminarReplyList(sNo);
         srvoList.get(0).setReplyCount(Integer.toString(replyCount));
         String str =gson.toJson(srvoList); 
         return str;
      }
      return "0";
   }
   
   
   
   //세미나 댓글 등록
   @PostMapping("reply/write")
   public String writeSeminarReply(SeminarReplyVo srvo, HttpSession session) {
      //로그인 되어있는지 확인
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember == null ) {
         session.setAttribute("alertMsg", "로그인 후 이용해주세요.");
         return "redirect:/seminar/detail?no=" + srvo.getSNo();
      }
      srvo.setWriterNo(loginMember.getNo());
      
      int result = ss.writeSeminarReply(srvo);
      if(result != 1) {
         throw new IllegalStateException("세미나 댓글 작성 실패");
      }
      session.setAttribute("alertMsg", "댓글이 작성되었습니다!");
      return "redirect:/seminar/detail?no=" + srvo.getSNo();
   }
   
   //세미나 댓글 삭제
   @GetMapping("reply/delete")
   public String deleteSeminarReply(SeminarReplyVo srvo ,HttpSession session) {
      //로그인 유저 가져오기 
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      if(loginMember == null) {
         session.setAttribute("alertMsg", "작성자만 삭제 가능합니다.");
         return "redirect:/seminar/detail?no=" + srvo.getSNo();
      }
      int result = ss.deleteSeminarReply(srvo);
      if(result != 1) {
         throw new IllegalStateException("세미나 댓글 삭제 실패");
      }
      session.setAttribute("alertMsg", "댓글이 삭제되었습니다.");
      return "redirect:/seminar/detail?no=" + srvo.getSNo();
   }
   
   
   
   //세미나 관심내역 추가
      @GetMapping("interest")
      public String addInterestSeminar(SeminarVo svo, HttpSession session , Model m) throws Exception {
         //로그인 유저 가져오기 
         MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");

         //로그인 유저 있는지 없는지
         if(loginMember == null) {
            session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
            return "redirect:/seminar/detail?no=" + svo.getNo();
         }
         
         String writerNo = svo.getWriterNo(); //개설자 번호
         String loginMemberNo = loginMember.getNo();
         svo.setLoginMemberNo(loginMemberNo);

         
         //개설자이면 관심내역 추가 x
         if(writerNo.equals(loginMemberNo)) {
            session.setAttribute("alertMsg", "본인이 개설한 세미나를 관심내역에 추가할 수 없습니다.");
            return "redirect:/seminar/detail?no=" + svo.getNo();
         }

         //로그인 유저가 관심내역에 해당 세미나 관심내역 추가 한적있는지 조회하기
         MemberInterestVo mivo= ss.selectInterstSeminar(svo);
         
         //mivo가 존재하면 이미 관심내역에 있음.
         if(mivo != null) {
            session.setAttribute("alertMsg", "이미 관심내역에 추가된 세미나입니다.");
            return "redirect:/seminar/detail?no=" + svo.getNo();
         }
         
         //조회안되면 관심내역에 insert + seminar likeCount +1
         int result = ss.addInterestSeminar(svo);
         if(result != 1) {
            throw new Exception("관심내역 세미나 추가 및 좋아요 수 추가 에러");
         }
         session.setAttribute("alertMsg", "해당 세미나가 관심내역에 추가되었습니다!");
         return "redirect:/seminar/detail?no=" + svo.getNo();
         
      }
   
   
   //세미나 신고하기
   @PostMapping("report")
   public String reportSeminar(SeminarReportVo srvo, HttpSession session) throws Exception {
      //로그인 한 유저만 신고 가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/seminar/detail?no=" + srvo.getSNo();
      }
      
      int result = ss.reportSeminar(srvo);
      if(result != 1) {
         throw new Exception("세미나 신고 실패");
      }
      session.setAttribute("alertMsg", "세미나 신고가 접수되었습니다.");
      return "redirect:/seminar/detail?no=" + srvo.getSNo();
   }
      
   
   //세미나 댓글 회원 신고
   @PostMapping("member/report/{sNo}")
   public String reportMember(HttpSession session , MemberReportVo mrvo , @PathVariable String sNo) {
      //로그인 한 유저만 신고 가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/seminar/detail?no=" + sNo;
      }
      
      int result = ss.reportMember(mrvo);
      if(result != 1) {
         throw new IllegalStateException("회원 신고 실패");
      }
      session.setAttribute("alertMsg", "회원 신고가 접수되었습니다.");
      return "redirect:/seminar/detail?no=" + sNo;
   }
      
      
   //세미나 수정 페이지(화면)
   @GetMapping("edit/{sNo}")
   public String seminarModify(@PathVariable String sNo, HttpSession session, Model m) {
      //로그인 한 유저만 신고 가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/seminar/detail?no=" + sNo;
      }
      
      SeminarVo svo = ss.getSeminarDetailToEdit(sNo);
      if(svo == null) {
         throw new IllegalStateException("세미나 상세조회 실패(수정페이지)");
      }
      m.addAttribute("svo", svo);
      return "seminar/edit";
   }
   
   //세미나 수정하기
   @PostMapping("edit")
   public String seminarModify(SeminarVo svo ,MultipartFile thumbnailFile, HttpSession session) {
      int result = 0;
      FileVo fvo = new FileVo();
      if(!thumbnailFile.isEmpty()) {
         String path = session.getServletContext().getRealPath("/resources/img/seminar/upload/");
         String originName = thumbnailFile.getOriginalFilename();
         String changeName = FileUploader.upload(thumbnailFile, path);
         
         
         fvo.setOriginName(originName);
         fvo.setChangeName(changeName);
         svo.setSeminarThumbnail(changeName);
         fvo.setSeminarNo(svo.getNo());
         
         result = ss.seminarModifyWithAttach(fvo, svo);
         if(result != 1) {
            throw new IllegalStateException("세미나 게시글 수정 실패");
         }
         session.setAttribute("alertMsg", "정상적으로 수정되었습니다.");
         return "redirect:/seminar/detail?no=" + svo.getNo();
      }
      result = ss.seminarModifyOnlyDetail(svo);
      if(result != 1) {
         throw new IllegalStateException("세미나 게시글 수정 실패");
      }
      session.setAttribute("alertMsg", "정상적으로 수정되었습니다.");
      return "redirect:/seminar/detail?no=" + svo.getNo();
   }
   
   
   //ajax로 신청 했는지 여부 체크
   @ResponseBody
   @GetMapping("apply/check")
   public String applyCheckSeminar(SeminarVo svo) {
      //모집마감일시 이후인지 체크 
      LocalDate today = LocalDate.now();
       LocalTime currentTime = LocalTime.now();

       DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
       DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm");

       LocalDate closeDay = LocalDate.parse(svo.getCloseDay(), dateFormatter);
       LocalTime closeTime = LocalTime.parse(svo.getCloseTime(), timeFormatter);

       if (today.isAfter(closeDay) || (today.isEqual(closeDay) && currentTime.isAfter(closeTime))) {
           return "3";
       }
      
      //신청 했는지 여부 체크
      MemberApplyVo maVo = new MemberApplyVo();
      maVo = ss.applyCheckSeminar(svo);
      
      if(svo.getLoginMemberNo() == null || svo.getLoginMemberNo() == "" || maVo == null) {
         return "0";
      }
      return "1";
   }
   
   
   
   //세미나 신청하기(화면)
   @GetMapping("apply/{sNo}")
   public String applySeminar(@PathVariable String sNo, HttpSession session, Model m ) {
      //로그인 한 유저만 신청가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/seminar/detail?no=" + sNo;
      }

      //신청할 세미나 정보 조회
      SeminarVo svo = ss.getSeminarDetail(sNo);
      if(svo == null) {
         throw new IllegalStateException("세미나 신청 중 정보 조회 실패");
      }
      m.addAttribute("svo", svo);
      return "seminar/apply";
   }
   
   //세미나 신청하기
   @PostMapping("apply/{sNo}")
   public String applySeminar(@PathVariable String sNo ,HttpSession session, SeminarVo svo) {
      //로그인 한 유저만 신청가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/seminar/detail?no=" + sNo;
      }
      //서비스
      svo.setNo(sNo);
      int result = ss.applySeminar(svo);
      if(result != 1) {
         throw new IllegalStateException("세미나 신청 실패");
      }
      session.setAttribute("alertMsg", "신청이 완료되었습니다.");
      return "redirect:/seminar/list";
   }
   
   //세미나 결제 (+현재참가인원 업뎃 , 참가내역 insert)
   @GetMapping("apply/pay")
   public String payApplySeminar(SeminarPayVo spvo, SeminarVo svo, HttpSession session) {
      svo.setLoginMemberNo(spvo.getMNo());
      svo.setNo(spvo.getSNo());
      svo.setPwNo(spvo.getPwNo());
      int result = ss.payApplySeminar(spvo, svo);
      if(result != 1) {
         throw new IllegalStateException("세미나 결제 실패");
      }
      session.setAttribute("alertMsg", "결제가 완료되었습니다! 감사합니다.");
      return "redirect:/seminar/list";
   }
   
   
   
   //세미나 삭제하기
   @GetMapping("delete/{sNo}")
   public String deleteSeminar(@PathVariable String sNo, HttpSession session) {
      //로그인 한 유저만 신고 가능
      MemberVo loginMember = (MemberVo)session.getAttribute("loginMember");
      
      //로그인 유저 있는지 없는지
      if(loginMember == null) {
         session.setAttribute("alertMsg", "로그인 후 이용 가능합니다.");
         return "redirect:/seminar/detail?no=" + sNo;
      }
      
      int result = ss.deleteSeminar(sNo);
      if(result != 1) {
         throw new IllegalStateException("세미나 게시글 삭제 실패");
      }
      session.setAttribute("alertMsg", "해당 세미나가 삭제되었습니다.");
      return "redirect:/seminar/list";
   }
   
   
   
   
   
}