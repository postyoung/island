<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-권한수정 | ISLAND</title>
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
					<h1 class="mt-4">관리자 권한 설정</h1>
					<div class="card mb-4 mt-4">
						<div class="card-body">
							<table class="table table-striped">
								<thead>
									<tr>
										<th>관리자 이름</th>
										<th>아이디</th>
										<th>계정 생성일</th>
										<th>관리자 권한 등급</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${adminList}" var="avo">
										<tr class="align-middle">
											<td>${avo.name}</td>
											<td>${avo.id}</td>
											<td>${avo.enrollDate}</td>
											<td>관리자 계정 등급 : ${avo.pmNo}</td>
											<td><button id="deleteBtn"
													class="btn btn-primary .btn-sm"
													onclick="location.href='${root}/admin/authorize/detail?no=${avo.no}'">권한
													수정</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table class="mb-4">
							<div class="d-flex justify-content-center">
								<%@include
									file="/WEB-INF/views/common/admin-authorize-paging.jsp"%>
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