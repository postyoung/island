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
  <script defer src="${root}/resources/js/common/main.js"></script>

  
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
              <a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
                <img src="${root}/resources/img/common-logo/main-logo.png" alt="로고" width="200px" height="100px">
              </a>
    
              <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
               
                <li>
                  <a href="#" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#speedometer2"/></svg>
                    모임
                  </a>
                </li>
                <li>
                  <a href="#" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"/></svg>
                    세미나
                  </a>
                </li>
                <li>
                  <a href="#" class="nav-link text-white">
                    <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"/></svg>
                    커뮤니티
                  </a>
                </li>
                <li>
                  <a href="#" class="nav-link text-white">
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
              <div class="text-end">
                <button type="button" class="btn btn-light text-white me-2 btn-lg" id="header-btn-text">Login</button>
                <button type="button" class="btn btn-primary">Sign-up</button>
              </div>
            </div>
          </div>
        </div>
  
      </header>
    </div>
  <div class="text_box" data-trigger>
    <span class="text"></span>
  </div>
  <div class="sub-title">저희는 다양한 취미와 관심사를 가진 사람들이 모여 즐겁게 활동하며 교류하는 아일랜드입니다. 
    새로운 친구들과 함께 취미 생활을 즐기고, 서로의 경험과 지식을 나누며 소통하는 공간이에요. 
    함께하는 시간이 더욱 풍요로워지는 소모임, 참여해보세요!"
  </div>


  
  <!-- 소모임 -->
  <div>
  <div class="group-best">지금 뜨는 소모임</div>
  <main class="page-content">
    
    <div class="card">
      <div class="content">
        <h2 class="title">Mountain View</h2>
        <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
        <button class="btn">View Trips</button>
      </div>
    </div>
    <div class="card">
      <div class="content">
        <h2 class="title">To The Beach</h2>
        <p class="copy">Plan your next beach trip with these fabulous destinations</p>
        <button class="btn">View Trips</button>
      </div>
    </div>
    <div class="card">
      <div class="content">
        <h2 class="title">Desert Destinations</h2>
        <p class="copy">It's the desert you've always dreamed of</p>
        <button class="btn">Book Now</button>
      </div>
    </div>
    <div class="card">
      <div class="content">
        <h2 class="title">Explore The Galaxy</h2>
        <p class="copy">Seriously, straight up, just blast off into outer space today</p>
        <button class="btn">Book Now</button>
      </div>
    </div>
  </main>
</div>

<!-- 세미나  -->
<div id="hero-slides" style="overflow: hidden;">
  <div id="header">
    이번주 인기있는 세미나 TOP 7
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
  <div class="slide" style="background-image: url(/img/세미나사진1.png);">
  <div class="number">01</div>
  <div class="body">
  <div class="location">Shibuya, Japan</div>
  <div class="headline">Photo by Benjamin Hung</div><a href="https://unsplash.com/photos/EYmhcdGuYmI" target="_blank">
  <div class="link">View on Unsplash</div></a>
  </div>
  </div>
  <div class="slide" style="background-image: url(/img/세미나사진2.png);">
  <div class="number">02</div>
  <div class="body">
  <div class="location">Mong Kok, Hong Kong</div>
  <div class="headline">Photo by Ryan Tang</div><a href="https://unsplash.com/photos/ANJHXftvvJ8" target="_blank">
  <div class="link">View on Unsplash</div></a>
  </div>
  </div>
  <div class="slide" style="background-image: url(/img/세미나사진3.png);">
  <div class="number">03</div>
  <div class="body">
  <div class="location">Incheon, South Korea</div>
  <div class="headline">Photo by Steve Roe</div><a href="https://unsplash.com/photos/73aocAAt7rs" target="_blank">
  <div class="link">View on Unsplash</div></a>
  </div>
  </div>
  <div class="slide" style="background-image: url(/img/세미나사진4.png);">
  <div class="number">04</div>
  <div class="body">
  <div class="location">Wan Chai, Hong Kong</div>
  <div class="headline">Photo by Sean Foley</div><a href="https://unsplash.com/photos/aPDCEoW7B78" target="_blank">
  <div class="link">View on Unsplash</div></a>
  </div>
  </div>
  <div class="slide" style="background-image: url(/img/세미나사진1.png);">
  <div class="number">05</div>
  <div class="body">
  <div class="location">Shibuya-ku, Japan</div>
  <div class="headline">Photo by Alex Knight</div><a href="https://unsplash.com/photos/Akz00I_GGjU" target="_blank">
  <div class="link">View on Unsplash</div></a>
  </div>
  </div>
  <div class="slide" style="background-image: url(https://alca.tv/static/u/31979576-5060-4513-aae2-b379b87e7fe6_opt.png);">
  <div class="number">06</div>
  <div class="body">
  <div class="location">Tokyo, Japan</div>
  <div class="headline">Photo by Benjamin Hung</div><a href="https://unsplash.com/photos/pTn26knnKVw" target="_blank">
  <div class="link">View on Unsplash</div></a>
  </div>
  </div>
  
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
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">1:1문의</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQ</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">공지사항</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">개인정보처리방침</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">서비스약관 및 정책</a></li>
        </ul>
      </div>

      <div class="col-6 col-md-2 mb-3" style="text-align: center;">
        <h5  class="footer-part">메뉴</h5>
        <ul class="nav flex-column">
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">소모임</a></li>
          <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">세미나</a></li>
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
        <img id="footer-logo" src="/img/메인로고.png" alt="이미지" width="200px" height="100px" >
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