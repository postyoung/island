<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.island.app.member.vo.MemberVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰상세 | ISLAND</title>
   <!-- 헤더 -->
   <%@ include file="/WEB-INF/views/common/header-member.jsp" %>
   <c:if test="${not empty alertMsg }">
      <script type="text/javascript">
         alert('${alertMsg}');
      </script>
   </c:if>
   <c:remove var="alertMsg" scope="session"/>
   
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${root}/resources/css/community/review/detail.css">

</head>
<body>


   <!-- 고객센터 전체 -->
   <!-- 메뉴바 -->
   <div id="wrap">
     <div class="p-4 p-md-5 mb-4 rounded text-bg-white back-area">
       <h1 class="text-center" id="title">세미나 리뷰</h1>
       <h5 class="text-center">세미나 참석 한 회원의 리뷰를 조회 가능합니다.</h5>
     </div>
   </div>
   
   <nav id="communication-menu">
     <a href="${root}/community/notice/list" class="menu-title">공지사항</a>
     <a href="${root}/community/faq/list">자주하는질문</a>
     <a href="${root}/community/qna/list">1:1 문의하기</a>
     <a href="${root}/community/seminarReview/list"><b>세미나 리뷰</b></a>
   </nav>
   
   <!-- 타이틀영역 -->
   <div>
     <div id="review-write-area">
       <div id="top-area">
         REVIEW
       </div>
       <div id="siren-area">
         <button id="siren-btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
           <img src="${root}/resources/img/seminar/siren-icon.png" alt="신고아이콘" id="siren-icon">
         </button>
       </div>
       <div id="line"></div>
   
       <div id="seminar">
         <a href="${root}/seminar/detail?no=${srDetail.seminarNo}">[세미나] <span> ${srDetail.seminarName}</span></a>
       </div>
         <table>
           <tr>
             <th class="text-center box-size">작성자</th>
             <td class="left-line">${srDetail.memberNick}</td>
           </tr>
           <tr>
             <th class="text-center box-size">제목</th>
             <td class="left-line">${srDetail.title}</td>
           </tr>
           <tr>
             <th class="text-center box-size">평점</th>
             <td class="left-line">
               <label for="point0">${srDetail.point}</label>
             </td>
           </tr>
           <tr>
             <th colspan="2" class="text-content">내용</th>
           </tr>
           <tr>
             <td colspan="2">
               <div id="content-text-img">
                  ${srDetail.content}
               </div>
             </td>
           </tr>
         </table>
         
         <div id="btn-area">
            <c:if test="${loginMember.no == srDetail.memberNo}">
              <button type="button" type="submit" class="btn btn-success" 
              onclick="location.href='${root}/community/seminarReview/edit?no=${srDetail.no}'">수정하기</button>
              <button type="button" type="button" class="btn btn-danger box" onclick="reviewDelete()">삭제</button>
          </c:if>
           <button type="button" class="btn btn-secondary box" onclick="location.href='${root}/community/seminarReview/list'">목록</button>
         </div>
     </div>
   </div>
   
   </div>
   
   <!-- 리뷰 신고 모달 영역 -->
   <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
           <h1 class="modal-title fs-5" id="exampleModalLabel">세미나 리뷰 신고하기</h1>
           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
           <div class="caution">
             해당 리뷰가 부적절한 리뷰일 경우 신고를 할 수 있습니다.<br>
             신고된 리뷰 내용이 부적절한지의 여부를 결정하여 삭제 조치가 주어지며
             신고 기능을 악용하는 것도 위반여부를 판단하여 사용에 제한이 있을 수 있으니
             주의하시기 바랍니다.
           </div>
           <form action="${root}/community/seminarReview/report" method="POST" onsubmit="return validateForm()">
             <div class="mb-3">
                     <input type="hidden" name="reviewNo" value="${srDetail.no}">
               <label for="recipient-name" class="col-form-label"><b>신고하시는 사유를 선택해주세요. (필수)</b></label>
               <div id="category">
                 <input class="form-check-input" type="radio" name="reReCategoryNo" value="1" id="reReCategoryName1" >
                 <label class="form-check-label" for="reReCategoryName1">
                   내용이 선정적이거나, 음란물, 폭력적 컨텐츠를 포함
                 </label><br>
                 <input class="form-check-input" type="radio"  name="reReCategoryNo" value="2" id="reReCategoryName2">
                 <label class="form-check-label" for="reReCategoryName2">
                   내용에 허위 정보, 사기성 광고, 인신공격, 혐오발언 포함 
                 </label><br>
                 <input class="form-check-input" type="radio"  name="reReCategoryNo" value="3" id="reReCategoryName3">
                 <label class="form-check-label" for="reReCategoryName3">
                   개인정보 누출 위험
                 </label><br> 
                 <input class="form-check-input" type="radio"  name="reReCategoryNo" value="4" id="reReCategoryName4">
                 <label class="form-check-label" for="reReCategoryName4">
                   기타
               </div>
               </label>
         
             </div>
             <div class="mb-3">
               <label for="message-text" class="col-form-label">상세사유</label>
               <textarea class="form-control" id="message-text" name="reportDetail" style="resize: none;"></textarea>
             </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
              <button type="submit" class="btn btn-danger" >신고하기</button>
            </div>
           </form>
       </div>
     </div>
   </div>
   
   
   
   <!-- 푸터 -->
   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
   

</body>
</html>

<script>

   //리뷰 삭제버튼
   function reviewDelete(){
         if(confirm("정말로 리뷰를 삭제하시겠습니까? 삭제시 데이터 복구는 불가합니다.")){
            location.href="${root}/community/seminarReview/delete?no=${srDetail.no}";
         }
      }
   
   
   //신고 상세사유 입력체크
   const radioBtn = document.querySelector("#reReCategoryName4");
   const detailEx = document.querySelector("#message-text");
   
   
   function validateForm(){
      if(document.getElementById("reReCategoryName4").checked && document.getElementById("message-text").value == ""){
         alert("신고 상세사유를 입력해주세요.");
         return false;
      }
   }
   
   </script>