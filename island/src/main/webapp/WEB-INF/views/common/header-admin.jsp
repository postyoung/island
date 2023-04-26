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
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="${root}/resources/js/admin/scripts.js"></script>
<script src="${root}/resources/js/admin/datatables-simple-demo.js"></script>
</head>
<body class="sb-nav-fixed">
	<header>
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
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<nav class="sb-sidenav accordion sb-sidenav-dark"
					id="sidenavAccordion">
					<div class="sb-sidenav-menu">
						<!--왼쪽 nav -->
						<div class="nav">
							<div class="sb-sidenav-menu-heading">관리자</div>
							<a class="nav-link" href="index.html">계정 생성</a> <a
								class="nav-link" href="index.html">권한 설정</a> <a class="nav-link"
								href="index.html">계정 삭제</a>
							<div class="sb-sidenav-menu-heading">신고 관리</div>
							<a class="nav-link" href="index.html">회원</a> <a class="nav-link"
								href="index.html">소모임</a> <a class="nav-link" href="index.html">세미나</a>
							<a class="nav-link" href="index.html">댓글</a>
							<div class="sb-sidenav-menu-heading">게시판</div>
							<a class="nav-link" href="index.html">공지사항 작성</a> <a
								class="nav-link" href="index.html">FAQ</a> <a class="nav-link"
								href="index.html">Q&A</a> <a class="nav-link" href="index.html">통계조회</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- end header -->
</body>
<!-- nav 오른쪽 -->
<div id="layoutSidenav_content"></div>
</html>