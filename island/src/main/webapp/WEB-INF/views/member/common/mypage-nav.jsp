<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 메뉴바</title>
<link rel="stylesheet" href="${root}/resources/css/member/common/mypage-nav.css">
</head>
<body>
   <!-- 마이페이지 메뉴바 시작 -->
          <ul class="menu_bar">
              <li class="menu_home"><a href="${root}/member/mypage/home">마이페이지 홈</a> </li>
                  <li class="menu_edit"><a href="${root}/member/mypage/edit">회원정보 수정</a></li>
                  <li class="menu_findaccount"><a href="">아이디/비밀번호 찾기</a></li>
                  <li class="menu_participant"><a href="">신청내역</a></li>
                  <li class="menu_like"><a href="">관심내역</a></li>
                  <li class="menu_write"><a href="">작성내역</a></li>
                  <li class="menu_quit"><a href="">회원탈퇴</a></li>
              </ul>
              <!-- 마이페이지 메뉴바 끝 -->

</body>
</html>