<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}"
	scope="page" />

<%
	if (session.getAttribute("loginAdmin") == null) {
		response.sendRedirect("/app/admin/login"); // 로그인 페이지로 이동
	}
%>
<c:if test="${ not empty alertMsg }">
	<script>
		alert('${sessionScope.alertMsg}');
	</script>
</c:if>
<c:remove var="alertMsg" scope="session" />
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="${root}/resources/js/admin/scripts.js"></script>
<script src="${root}/resources/js/admin/datatables-simple-demo.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- 왼쪽 상단 로고 -->
		<a class="navbar-brand ps-3" href="${root}/admin/main">ISLAND</a>
		<!-- 왼쪽 nav 버튼 -->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<div class="ms-auto me-0 me-md-3 my-2 my-md-0"></div>
		<!-- 상단 nav -->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<div
				style="font-size: 15px; color: rgba(155, 157, 158); margin: auto; margin-right: 15px;">${loginAdmin.name}
				관리자님</div>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="${root}/admin/edit"
						style="text-align: center;">정보 수정</a></li>
					<li><a class="dropdown-item" href="${root}/admin/logout"
						style="text-align: center;">로그아웃</a></li>
				</ul></li>
		</ul>
	</nav>
</body>
</html>
