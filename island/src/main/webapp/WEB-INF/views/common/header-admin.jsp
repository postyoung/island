<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}"
	scope="page" />
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="${root}/resources/css/common/header-admin.css"
	rel="stylesheet" />
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="${root}/resources/js/admin/scripts.js"></script>
<script src="${root}/resources/js/admin/datatables-simple-demo.js"></script>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
	fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  <path
		d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
</svg>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- 왼쪽 상단 로고 -->
		<a class="navbar-brand ps-3" href="index.html">ISLAND</a>
		<!-- 왼쪽 nav 버튼 -->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<div class="ms-auto me-0 me-md-3 my-2 my-md-0"></div>
		<!-- 상단 nav -->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<!--관리자 이름 (loginMember로 수정하기)-->
			<div
				style="font-size: 15px; color: rgba(155, 157, 158); margin: auto; margin-right: 15px;">박재욱
				관리자님</div>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!"
						style="text-align: center;">정보 수정</a></li>
					<li><a class="dropdown-item" href="#!"
						style="text-align: center;">로그아웃</a></li>
				</ul></li>
		</ul>
	</nav>
</body>
</html>