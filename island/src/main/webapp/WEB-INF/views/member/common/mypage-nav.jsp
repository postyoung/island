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
<link rel="stylesheet" href="${root}/resources/js/member/mypage-nav.js">
</head>
<body>
   <!-- 마이페이지 메뉴바 시작 -->
          <ul class="menu_bar">
              <li class="menu_home"><a href="${root}/mypage/home">마이페이지 홈</a> </li>
                  <li class="menu_edit"><a href="${root}/mypage/edit">회원정보 수정</a></li>
                  <li class="menu_participant"><a href="${root}/mypage/list/enrollList/group">신청내역</a>
                    <ul class="sub_menu">
                        <li><a href="${root}/mypage/list/enrollList/group">소모임</a></li>
                        <li><a class="seminar-nav" href="${root}/mypage/list/enrollList/seminar">세미나</a></li>
                      </ul>
                    </li>                
                  <li class="menu_like"><a href="${root}/mypage/list/likeList/group">관심내역</a>
                    <ul class="sub_menu">
                        <li><a href="${root}/mypage/list/likeList/group">소모임</a></li>
                        <li><a class="seminar-nav" href="${root}/mypage/list/likeList/seminar">세미나</a></li>
                      </ul>
                    </li>      
                  <li class="menu_write"><a href="${root}/mypage/list/madeList/group">개설내역</a>
                  	<ul class="sub_menu">
                        <li><a href="${root}/mypage/list/madeList/group">소모임</a></li>
                        <li><a class="seminar-nav" href="${root}/mypage/list/madeList/seminar">세미나</a></li>
                      </ul>
                    </li>   
                  <li class="menu_write"><a href="${root}/mypage/list/writeList">문의내역</a></li>
                  <li class="menu_quit"><a href="${root}/mypage/quit">회원탈퇴</a></li>
              </ul>
              <!-- 마이페이지 메뉴바 끝 -->

</body>
</html>
<style>
    .menu_bar .sub_menu {
    display: none;
    position: absolute;
    background-color: #fff;
    border: 1px solid #ccc;
    z-index: 1;
  }
  
  .menu_bar li:hover .sub_menu {
    display: block;
  }
</style>

