<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 자주묻는질문 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<link rel="stylesheet" href="${root}/resources/css/community/faq-list.css">
</head>
<body>
	
	<!-- 고객센터 전체 -->
	<!-- 메뉴바 -->
	<div id="wrap">
	<div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
	    <h1 class="text-center" id="title">자주하는질문</h1>
	    <h5 class="text-center">아일랜드 이용 중 불편했던 점이나 궁금한 점을 빠르게 안내드립니다.</h5>
	</div>
	
	<nav id="communication-menu">
	  <a href="${root}/community/notice/list">공지사항</a>
	  <a href="${root}/community/faq/list"><b>자주하는질문</b></a>
	  <a href="${root}/community/qna/list">1:1 문의하기</a>
	  <a href="${root}/community/seminarReview/list">세미나 리뷰</a>
	</nav>
	
	<!-- 카테고리 버튼 영역 -->
	<div id="faq-category-area">
	  <a href="${root}/community/faq/list/category?categoryNo=10" class="category-box">회원</a> 
	  |<a href="${root}/community/faq/list/category?categoryNo=20" class="category-box">모임</a> 
	  |<a href="${root}/community/faq/list/category?categoryNo=30" class="category-box">세미나</a> 
	  |<a href="${root}/community/faq/list/category?categoryNo=40" class="category-box" >결제/환불</a> 
	  |<a href="${root}/community/faq/list/category?categoryNo=50" class="category-end-box">기타</a>
	</div>
	
	
	<!-- content -->
	<div id="layoutSidenav_content">
	  <div id="faq-area">
	    <!-- faq 리스트 -->
	    <div class="accordion accordion-flush faq-top-line" id="accordionFlushExample">
	    
		    <c:forEach items="${faqList}" var="fvo" varStatus="status">
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="heading${status.index}">
			      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
			        data-bs-target="#collapse${status.index}" aria-expanded="false" aria-controls="collapse${status.index}">
			        <b>${fvo.categoryName}</b> <span id="line"></span> ${fvo.title}
			      </button>
			    </h2>
			    <div id="collapse${status.index}" class="accordion-collapse collapse" aria-labelledby="heading${status.index}"
			      data-bs-parent="#accordionExample">
			      <div class="accordion-body">
			        ${fvo.content}
			      </div>
			    </div>
			  </div>
			</c:forEach>
	    
	    </div>
	  </div>
	</div>




	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/community-faq-paging-byCategory.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>