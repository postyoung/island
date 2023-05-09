<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
  <meta name="generator" content="Hugo 0.104.2">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <%@ include file="/WEB-INF/views/common/header-member.jsp" %>
  <title>island</title>
  <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/offcanvas-navbar/">
  <link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
        crossorigin="anonymous">
  <!-- Favicons -->
  <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
  <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
  <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
  <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
  <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
  <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
  <meta name="theme-color" content="#712cf9">
  <link rel="stylesheet" href="${root}/resources/css/group/group-management.css">


  <!-- Custom styles for this template -->
  <link href="offcanvas.css" rel="stylesheet">
</head>

<body class="bg-light">


<main class="container">
  <div class="lh-1">
    <h1>모임관리</h1>
    <div class="dropdown">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
              aria-expanded="false">
        모임제목
      </button>
      <ul class="dropdown-menu">
        <li><button class="dropdown-item" type="button">모임제목</button></li>
        <li><button class="dropdown-item" type="button">모임제목</button></li>
        <li><button class="dropdown-item" type="button">모임제목</button></li>
      </ul>
    </div>
    <br>
    <br>
    <hr>
  </div>
  </div>
  <h1>신청자목록</h1>
  <hr>
  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">모임제목 : </h6>
    <div>개설일 : </div>
    <div>신청기간 : </div>
    <div>모임기간 : </div>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
           xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
           preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
                                                                dy=".3em">32x32</text>
      </svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark">이름 :</strong>
          <a href="#">확정취소</a>
        </div>
        <span class="d-block">연락처 : </span>
        <span class="d-block">모임제목 :</span>
        <span class="d-block">신청일 : </span>
      </div>
    </div>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
           xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
           preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
                                                                dy=".3em">32x32</text>
      </svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark">이름 : </strong>
          <a href="#">확정취소</a>
        </div>
        <span class="d-block">연락처 : </span>
        <span class="d-block">모임제목 :</span>
        <span class="d-block">신청일 : </span>
      </div>
    </div>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
           xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
           preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
                                                                dy=".3em">32x32</text>
      </svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark">이름 : </strong>
          <a href="#">확정취소</a>
        </div>
        <span class="d-block">연락처 : </span>
        <span class="d-block">모임제목 :</span>
        <span class="d-block">신청일 : </span>
      </div>
    </div>
  </div>
  <hr>
  <h1>대기자목록</h1>
  <hr>
  <div class="my-3 p-3 bg-body rounded shadow-sm">
    <h6 class="border-bottom pb-2 mb-0">모임제목 : </h6>
    <div>개설일 : </div>
    <div>신청기간 : </div>
    <div>모임기간 : </div>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
           xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
           preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
                                                                dy=".3em">32x32</text>
      </svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark">이름 :</strong>
          <a href="#">확정</a>
        </div>
        <span class="d-block">연락처 : </span>
        <span class="d-block">모임제목 :</span>
        <span class="d-block">신청일 : </span>
      </div>
    </div>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
           xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
           preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
                                                                dy=".3em">32x32</text>
      </svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark">이름 : </strong>
          <a href="#">확정</a>
        </div>
        <span class="d-block">연락처 : </span>
        <span class="d-block">모임제목 :</span>
        <span class="d-block">신청일 : </span>
      </div>
    </div>
    <div class="d-flex text-muted pt-3">
      <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
           xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
           preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#007bff" /><text x="50%" y="50%" fill="#007bff"
                                                                dy=".3em">32x32</text>
      </svg>

      <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
        <div class="d-flex justify-content-between">
          <strong class="text-gray-dark">이름 : </strong>
          <a href="#">확정</a>
        </div>
        <span class="d-block">연락처 : </span>
        <span class="d-block">모임제목 :</span>
        <span class="d-block">신청일 : </span>
      </div>
    </div>
  </div>
</main>


<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
<script src="offcanvas.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>