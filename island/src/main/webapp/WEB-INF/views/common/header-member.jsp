<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ISLAND 소개 | ISLAND</title>

  
  <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script  src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<link rel="stylesheet" href="${root}/resources/css/common/header-member.css">

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
                <a href="#" class="nav-link text-black">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#speedometer2"/></svg>
                  모임
                </a>
              </li>
              <li>
                <a href="#" class="nav-link text-black">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"/></svg>
                  세미나
                </a>
              </li>
              <li>
                <a href="#" class="nav-link text-black">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#table"/></svg>
                  커뮤니티
                </a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="padding-top: 33px;">
                  마이페이지
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">회원 정보 수정</a></li>
                  <li><a class="dropdown-item" href="#">신청 내역</a></li>
                  <li><a class="dropdown-item" href="#">관심 내역</a></li>
                  <li><a class="dropdown-item" href="#">작성 내역</a></li>
                </ul>
              </li>


              <li>
                <a href="#" class="nav-link text-black" id="bel">
                  <svg class="bi d-block mx-auto mb-1" width="24" height="24"><use xlink:href="#grid"/></svg>
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16" >
                    <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
                  </svg>
                </a>
              </li>
            </ul>
            <div class="text-end">
              <button type="button" class="btn btn-outline-success" id="header-btn-login">LOGIN</button>
              <button type="button" class="btn btn-outline-primary" id="header-btn-signup">SIGN-UP</button>
            </div>
          </div>
        </div>
      </div>

    </div>
  </header>

<!-- 임시div 각자 컨텐츠 jsp에서 추가할 것 -->
<!-- <div id="wrap" style="width: 300px; height: 1000px;">

</div> -->


</body>
</html>