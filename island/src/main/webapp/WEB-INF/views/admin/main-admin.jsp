<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-메인 | ISLAND</title>
<style>
</style>
</head>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/common/header-admin.jsp"%>
	<!-- layout -->
	<div id="layoutSidenav">
		<!-- nav -->
		<%@include file="/WEB-INF/views/common/nav-admin.jsp"%>
		<!-- content -->
		<div id="layoutSidenav_content">
			<div id="wrap">
				<!-- 본인 작업 영역 -->
				<div class="container-fluid px-4">
					<h1 class="mt-4">메인 페이지</h1>
					<div class="card mb-4 mt-4">
						<div class="card-body">
							<div class="row">
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body">
											<h2 class="card-title">총 회원 수</h2>
											<i class="bi bi-person"></i>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">관리자 정보</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">관리자 정보</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">관리자 정보</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
</html>
