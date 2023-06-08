<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="root" value="${pageContext.request.contextPath}" scope="page" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ISLAND 소개 | ISLAND</title>
  <script defer src="${root}/resources/js/common/main.js">
  </script>
  
<c:if test="${not empty alertMsg}">
  	<script type="text/javascript">
	  alert('${sessionScope.alertMsg}');
  	</script>
  </c:if>
  
  <c:remove var="alertMsg" scope="session"/>

  
  <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script  src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="${root}/resources/css/common/mainStyle.css" />
    
    
    <style>
      /* 헤더 */
.btn{
  background-color: #4232c6;
  font-size: 1.4rem;
  width: 92px;
  height: 44px;
}
#header-menu{
  font-size: 18px;
}
.header-btn-text{
  font-size: 20px;
}
#header-btn-text{
  margin-left: 30px;
}
#profile {
  width: 55px;
  height: 55px;
  border-radius: 100px;
  margin-right: 10px;
  margin-top: 5px;
}
.profile-welcomeArea{
  margin-top: 20px;
  display: contents;
}

/* 푸터 */
.row{
  --bs-gutter-x: 1.rem;
  font-size: 16px;
}
#footer-logo{
  padding-left: 50px;
}
.col-6 col-md-2 mb-3{
  
  text-align: center;
}
.nav{
  --bs-nav-link-color: black;
  --bs-nav-link-padding-x: 2rem;
}
.footer-part{
  font-size: 2rem;
}

    </style>

    <title>ISLAND 소개 | ISLAND</title>
  </head>
  <body>
    <div>

      <header>
        <div class="px-3 py-2 text-bg-white">
          <div class="container">
            <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start" id="header-menu">
              <a href="${root}/main" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
                <img src="${root}/resources/img/common-logo/main-logo.png" alt="로고" width="200px" height="100px">
              </a>
    
              <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
               
                <li>
                  <a href="${root}/group/list" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#speedometer2"/></svg>
                    모임
                  </a>
                </li>
                <li>
                  <a href="${root}/seminar/list" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"/></svg>
                    세미나
                  </a>
                </li>
                <li>
                  <a href="${root}/community/notice/list" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"/></svg>
                    커뮤니티
                  </a>
                </li>
                <c:if test="${not empty loginMember}">
                <li>
                  <a href="${root}/mypage/home" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#people-circle"/></svg>
                    마이페이지
                  </a>
                </li>
                <li>
                  <a href="#" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#grid"/></svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16" >
                      <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
                    </svg>
                  </a>
                </li>
              </ul>
             </c:if>

             <c:if test="${not empty loginMember}">
              <div class="profile-welcomeArea">
               <img src="${root}/resources/img/member/profile/load/${loginMember.profileName}" onerror= "this.onerror=null; this.src = 
               'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'" id="profile">
               <span style="color: white;">
                 ${loginMember.nick}님
               </span>
             </div>
           </c:if>
              
           <c:if test="${empty loginMember}">
              <div class="text-end">
                <button type="button" class="btn btn-light text-white me-2 btn-lg" id="header-btn-text" onclick="location.href='${root}/member/login'">Login</button>
                <button type="button" class="btn btn-primary" onclick="location.href='${root}/member/join'">Sign-up</button>
              </c:if>
              <c:if test="${not empty loginMember}">
                <button type="button" class="btn btn-light text-white me-2 btn-lg" id="header-btn-text" onclick="location.href='${root}/member/logout'">Logout</button>
              </c:if>
              </div>
            </div>
          </div>
        </div>
  
      </header>
    </div>
  <div class="text_box" data-trigger>
    <span class="text"></span>
  </div>
  <div class="sub-title">저희는 다양한 취미와 관심사를 가진 사람들이 모여 즐겁게 활동하며 교류하는 아일랜드입니다.<br>
    새로운 친구들과 함께 취미 생활을 즐기고, 서로의 경험과 지식을 나누며 소통하는 공간이에요. <br>	
    함께하는 시간이 더욱 풍요로워지는 소모임, 참여해보세요 !
  </div>


  
  <!-- 소모임 -->
  <div>
  <div class="group-best">지금 뜨는 소모임</div>
  <main class="page-content">
    <div class="card" style="background-image: url('https://image.idus.com/image/files/56d98c69a2e6439bacf8403226640fd0.jpg'); background-size: cover; background-position: center; min-height: 300px;")>
      <div class="content">
        <h2 class="title">인물드로잉모임</h2>
        <p class="copy">인물드로잉모임</p>
        <a href="${root}/group/detail?no=1">
          <button class="btn">상세보기</button></a>
      </div>
    </div>
    <div class="card" style="background-image: url('https://cdn-icons-png.flaticon.com/512/3749/3749934.png'); background-size: cover; background-position: center; min-height: 300px;")>
      <div class="content">
        <h2 class="title">오늘까지만, 독서알러지!</h2>
        <p class="copy">모임을 하며 독서의 맛을 느껴가는 모임</p>
        <a href="${root}/group/detail?no=2">
          <button class="btn">상세보기</button></a>
      </div>
    </div>
    <div class="card" style="background-image: url('https://img.appstory.co.kr/@files/monthly.appstory.co.kr/thum/Bdatafile/Board/dir_115/11542.jpg'); background-size: cover; background-position: center; min-height: 300px;")>
      <div class="content">
        <h2 class="title">모바일 영상편집!!</h2>
        <p class="copy">영상편집 누구나 할 수 있습니다~!</p>
        <a href="${root}/group/detail?no=3">
          <button class="btn">상세보기</button></a>
      </div>
    </div>
    <div class="card" style="background-image: url('https://osbc.co.kr/images/con_snyk01_conbox01_img.png'); background-size: cover; background-position: center; min-height: 300px;")>
      <div class="content">
        <h2 class="title">coding 연습방</h2>
        <p class="copy">C언어분들만 참가해주세요</p>
        <a href="${root}/group/detail?no=4">
          <button class="btn">상세보기</button></a>
      </div>
    </div>
  </main>
</div>

<!-- 세미나  -->
<div id="hero-slides" style="overflow: hidden;">
  <div id="header">
    <b>인기있는 세미나 TOP 6</b>
	  <div id="menu" hidden>
		  <div id="hamburger" hidden>
			  <div class="slice"></div>
			  <div class="slice"></div>
			  <div class="slice"></div>
		  </div>
	  </div>
  </div>
  
  <div id="slides-cont">
  <div class="button" id="next"></div>
  <div class="button" id="prev"></div>
  <div id="slides">
  	<c:forEach items="${svoList}" var="svo" >
  	
	  <div class="slide" style="background-image: url(${root}/resources/img/seminar/upload/${svo.seminarThumbnail});">
	  	<div class="number">${svo.rownum}</div>
	  <div class="body">
		 <%--  <div class="location">주소 : ${svo.place} ${svo.detailAddress}</div> --%>
		  <div class="headline" >${svo.name}</div>
		  <a href="${root}/seminar/detail?no=${svo.no}" target="_blank">
		  	<div class="link">View</div>
		  </a>
	  </div>
	  </div>
	  
  	</c:forEach>
	
  
  </div>
  <div id="next-catch"></div>
  <div id="prev-catch"></div>
  </div>

  <div id="footer" hidden><a href="https://dribbble.com/shots/3888265-Motion-Study" target="_blank">
  <div id="dribbble"></div></a></div>
  </div>


<!-- 푸터 -->
<div class="container">
  <footer class="py-5">
    <div class="row">
      <div class="col-6 col-md-2 mb-3">
        <h5 class="footer-part">고객센터</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="${root}/community/notice/list" class="nav-link p-0 text-body-secondary">공지사항</a></li>
            <li class="nav-item mb-2"><a href="${root}/community/faq/list" class="nav-link p-0 text-body-secondary">FAQ</a></li>
            <li class="nav-item mb-2"><a href="${root}/community/qna/list" class="nav-link p-0 text-body-secondary">1:1문의</a></li>
            <li class="nav-item mb-2"><a href="${root}/community/seminarReview/list" class="nav-link p-0 text-body-secondary">세미나 리뷰</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">개인정보처리방침</a></li>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3" style="text-align: center;">
        <h5  class="footer-part">메뉴</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="${root}/group/list" class="nav-link p-0 text-body-secondary">소모임</a></li>
            <li class="nav-item mb-2"><a href="${root}/seminar/list" class="nav-link p-0 text-body-secondary">세미나</a></li>
        </ul>
      </div>

      <div class="col-md-5 offset-md-1 mb-3">
        <h5  class="footer-part">회사 정보</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2">(주)아일랜드</a></li>
          <li class="nav-item mb-2">대표이사 | IDEA</li>
          <li class="nav-item mb-2">주소 | 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</li>
          <li class="nav-item mb-2">Tel. 02 -1234 -1234</li>
          <li class="nav-item mb-2">Email. abc@naver.com </li>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3">
        <img id="footer-logo" src="${root}/resources/img/common-logo/main-logo.png" alt="이미지" width="200px" height="100px" >
      </div>
    </div>

    <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
      <p>&copy; 2023 Company, Inc. All rights reserved.</p>
      <ul class="list-unstyled d-flex">
        <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
        <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
        <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
      </ul>
    </div>
  </footer>
</div>
  

  </body>
</html>