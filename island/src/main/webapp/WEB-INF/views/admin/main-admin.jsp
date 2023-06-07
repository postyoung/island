<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-메인 | ISLAND</title>
<style>
.bi {
	font-size: 150px;
	line-height: 22px;
	line-width: 38px;
}
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
										<div class="card-body" style="text-align: center">
											<h2 class="card-title">총 회원 수</h2>
											<i class="bi bi-person-fill"></i>
											<h1 style="margin-top: 12px;">
												<strong>${memberCnt}</strong>명
											</h1>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body" style="text-align: center">
											<h2 class="card-title">총 관리자 수</h2>
											<i class="bi bi-person-workspace"></i>
											<h1 style="margin-top: 12px;">
												<strong>${adminCnt}</strong>명
											</h1>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body" style="text-align: center">
											<h2 class="card-title">총 소모임 수</h2>
											<i class="bi bi-people-fill"></i>
											<h1 style="margin-top: 12px;">
												<strong>${groupCnt}</strong>개
											</h1>
										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="card">
										<div class="card-body" style="text-align: center">
											<h2 class="card-title">총 세미나 수</h2>
											<i class="bi bi-book-fill"></i>
											<h1 style="margin-top: 12px;">
												<strong>${seminarCnt}</strong>개
											</h1>
										</div>
									</div>
								</div>
								<div class="col-sm-12" style="margin-top: 10px;">
									<div class="card mb-4">
										<div class="card-header">
											<i class="fas fa-chart-bar me-1"></i> 통계
										</div>
										<div class="card-body">
											<canvas id="myBarChart" width="572px;" height="110px;"
												style="display: blasck; height: 150px; width: 651px;"
												class="chart-render-monitor"></canvas>
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
<script defer
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
var memberCnt = ${memberCnt};
var adminCnt = ${adminCnt};
var groupCnt = ${groupCnt};
var seminarCnt = ${seminarCnt};
</script>
<script defer src="${root}/resources/js/admin/admin-main-chart.js"></script>
