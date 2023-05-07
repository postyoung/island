<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="root" value="${pageContext.request.contextPath}" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <nav id="communication-menu">
      <a href="${root}/community/notice/list"><b>공지사항</b></a>
      <a href="${root}/community/faq/list">자주하는질문</a>
      <a href="${root}/community/qna/list">1:1 문의하기</a>
      <a href="${root}/community/seminarReview/list">세미나 리뷰</a>
    </nav>

</body>
</html>