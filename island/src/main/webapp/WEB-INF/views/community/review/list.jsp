<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	<c:if test="${not empty alertMsg}">
		<script type="text/javascript">
		 	alert('${alertMsg}');
		</script>
	</c:if>
	<c:remove var="alertMsg" scope="session"/>
	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${root}/resources/css/community/review/list.css">

</head>
<body>
	<!-- 고객센터 전체 -->
	<!-- 메뉴바 -->
	<div id="wrap">
	  <div class="p-4 p-md-5 mb-4 rounded text-bg-white back-area">
	    <h1 class="text-center" id="title">세미나 리뷰</h1>
	    <h5 class="text-center">세미나에 참석한 회원의 리뷰를 조회할 수 있습니다.</h5>
	  </div>
	</div>
	
	<nav id="communication-menu">
	  <a href="${root}/community/notice/list" class="menu-title">공지사항</a>
	  <a href="${root}/community/faq/list">자주하는질문</a>
	  <a href="${root}/community/qna/list">1:1 문의하기</a>
	  <a href="${root}/community/seminarReview/list"><b>세미나 리뷰</b></a>
	</nav>
	
	<!-- 검색영역 -->
	<div id="search-area">
	  <div>
	    <form action="${root}/community/seminarReview/search" id="search" method="post">
	        <input type=text class="form-control search-box"  name="seminarName" placeholder="리뷰에 해당하는 세미나명을 검색어로 입력해주세요.">
	        <button type="submit" class="btn btn-dark search-btn">검색</button>
	    </form>
	  </div>
	</div>
	
	<!-- 리뷰카드 영역 -->
	<main>
	  <main class="album py-5 ">
	    <div class="container">
	      <div class="row">
	      	
	      	<c:forEach items="${srList}" var="srvo">
	      	
		        <div class="col-md-3">
		          <div class="shadow-sm box">
		            <div class="member-info-area">
		              <img src="${root}/resources/img/member/profile/load/${srvo.memberProfile}" onerror= "this.onerror=null; this.src = 
        'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'" class="member-profile" >
		              <b>${srvo.memberNick}</b>
		            </div>
		            <div class="seminar-name">
		              <input class="seminar-title" type="text" value="${srvo.seminarName}" readonly="readonly">
		            </div>
		            <img class="bd-placeholder-img card-img-top seminar-photo" src="${root}/resources/img/community/review/upload/${srvo.reviewThumbnail}"width="100%" height="250" >
		            <div class="card-body">
		              <div class="seminar-review">
		                ${srvo.content}
		              </div>
		            </div>
		            <a href="${root}/community/seminarReview/detail?no=${srvo.no}" class="review-detail-btn">
		              <i class="bi bi-caret-right"></i>
		              상세보기
		            </a>
		          </div>
		        </div>
	      	
	      	</c:forEach>
	    	 
	        </div>
	      </div>
	    </div>
	  </main>
	</main>




	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/seminar-review-paging.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

