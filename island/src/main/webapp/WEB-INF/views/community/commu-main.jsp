<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 고겍센터 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>

<link rel="stylesheet" href="${root}/resources/css/community/commu-main.css">
</head>
<body>

	<!-- 고객센터 전체 -->
	<!-- 메뉴바 -->
	<div id="wrap">
	<div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
	    <h1 class="text-center" id="title">공지사항</h1>
	    <h5 class="text-center">아일랜드에서 알려드립니다.</h5>
	</div>
	
	<nav id="communication-menu">
	  <a href="#"><b>공지사항</b></a>
	  <a href="#">자주하는질문</a>
	  <a href="#">1:1 문의하기</a>
	  <a href="/commu-seminar-review copy.html">세미나 리뷰</a>
	</nav>
	
	
	<div class="container notice-area">
	  <table class="table table-hover table-bordered" style="text-align: center;">
	    <thead>
	      <tr class="table-light">
	        <th>글번호</th>
	        <th>제목</th>
	        <th>작성일</th>
	      </tr>
	    </thead>
	    <tbody class="table-group-divider">
	      <tr>
	        <td>01</td>
	        <td>[공지]개인정보</td>
	        <td>2021/03/21</td>
	      </tr>
	      <tr>
	        <td>02</td>
	        <td>[공지] 근로자의 날</td>
	        <td>2022/03/22</td>
	      </tr>
	      <tr>
	        <td>03</td>
	        <td>[공지]사무실이전으로 인한 일부 업무중단</td>
	        <td>2022/06/30</td>
	      </tr>
	      <tr>
	        <td>04</td>
	        <td>[공지]시스템점검으로 인한 서비스이용불가안내</td>
	        <td>2023/01/01</td>
	      </tr>
	      <tr>
	        <td>05</td>
	        <td>[공지]창립기념일 휴무안내</td>
	        <td>2022/08/28</td>
	      </tr>
	      <tr>
	        <td>06</td>
	        <td>[공지][약관]개정
	        <td>2021/10/01</td>
	      </tr>
	      <tr>
	        <td>07</td>
	        <td>[공지]모임신청 시 본인인증 필수 전환</td>
	        <td>2022/11/03</td>
	      </tr>
	      <tr>
	        <td>08</td>
	        <td>[공지]창립기념일 휴무안내</td>
	        <td>2022/08/28</td>
	      </tr>
	      <tr>
	        <td>09</td>
	        <td>[공지][약관]개정
	        <td>2021/10/01</td>
	      </tr>
	      <tr>
	        <td>10</td>
	        <td>[공지]모임신청 시 본인인증 필수 전환</td>
	        <td>2022/11/03</td>
	      </tr>
	    </tbody>
	  </table>
	</div>

        <br><br>
	



	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/paging.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
</body>
</html>