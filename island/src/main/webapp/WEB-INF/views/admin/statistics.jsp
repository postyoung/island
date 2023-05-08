<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-통계조회 | ISLAND</title>
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
					<div class="row">
					<div class="col-lg-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i> 월별 세미나&모임 참여도</div>
							<div class="card-body">
								<canvas id="myBarChart" width="572" height="285" style="display: blasck; height: 325px; width: 651px;"
									class="chart-render-monitor"></canvas>
							</div>
							<div class="card-footer small text-muted">Updated yesterday	at 11:59 PM</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-pie me-1"></i> 세미나&모임 조회수</div>
							<div class="card-body">
								<canvas id="myPieChart" width="572" height="285" style="display: blasck; height: 325px; width: 651px;"
									class="chart-render-monitor"></canvas>
							</div>
							<div class="card-footer small text-muted">Updated yesterday	at 11:59 PM</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i>
								 세미나 Top5
							</div>
							<div class="card-body">

								<table class="table table-horver">
									<thead>
										<tr>
											<th scope="col" class="text-content">번호</th>
											<th scope="col" class="text-content">제목</th>
											<th scope="col" class="text-content">조회수</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>[현대자동차그룹]SOFTTEER TECH MEET-UP 2023</td>
											<td>124</td>
										</tr>
										<tr>
											<td>2</td>
											<td>2023년 법인 CEO 기업승계 및 상속증여 세미나</td>
											<td>112</td>
										</tr>
										<tr>
											<td>3</td>
											<td>.NET LIVE 2023 Spring</td>
											<td>98</td>
										</tr>
										<tr>
											<td>4</td>
											<td>[무료강의] 여기저기 다 같은 인테리어 어떤게 문제일까?</td>
											<td>60</td>
										</tr>
										<tr>
											<td>5</td>
											<td>인공지능&로봇 개발직무 취업특강 및 과정 설명회</td>
											<td>37</td>
										</tr>
									</tbody>
								</table>

							</div>
							<div class="card-footer small text-muted">Updated yesterday	at 11:59 PM</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i>
								 소모임 Top5
							</div>
							<div class="card-body">

								<table class="table table-horver">
									<thead>
										<tr>
											<th scope="col" class="text-content">번호</th>
											<th scope="col" class="text-content">제목</th>
											<th scope="col" class="text-content">조회수</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>[나눔아지] 대학생 및 직장인 봉사동아리 신입회원 모집</td>
											<td>105</td>
										</tr>
										<tr>
											<td>2</td>
											<td>유튜브 shorts로 무작정 시작하기!!</td>
											<td>77</td>
										</tr>
										<tr>
											<td>3</td>
											<td>나만의 탄생컬러 알아가기</td>
											<td>65</td>
										</tr>
										<tr>
											<td>4</td>
											<td>안국일요독서모임(5/21)이토록 굉장한 세계</td>
											<td>55</td>
										</tr>
										<tr>
											<td>5</td>
											<td>광교호수공원에서 같이 뛰어요! Healthier Life 크루모집</td>
											<td>30</td>
										</tr>
									</tbody>
								</table>

							</div>
							<div class="card-footer small text-muted">Updated yesterday	at 11:59 PM</div>
						</div>
					</div>

				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
</html>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script defer src="${root}/resources/js/admin/chart-bar-demo.js"></script>
<script defer src="${root}/resources/js/admin/chart-pie-demo.js"></script>

