<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					<h1 class="mt-4">회원 신고 목록</h1>
					<div class="card mb-4 mt-4">
						<div class="dropdown" style="margin-left: 15px; margin-top: 20px">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								data-bs-toggle="dropdown" aria-expanded="false">처리 여부</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">신고 대기</a></li>
								<li><a class="dropdown-item" href="#">처리 완료</a></li>
							</ul>
						</div>
						<div class="card-body">
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>신고 번호</th>
										<th>신고 회원</th>
										<th>카테고리</th>
										<th>제목</th>
									</tr>
								</thead>
								<tbody>
									<tr class="align-middle">
										<td>1</td>
										<td>wodnr1225</td>
										<td>홍보/광고글</td>
										<td>이사람이 괴롭혔어요 ㅜ</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>wodnr1225</td>
										<td>홍보/광고글</td>
										<td>이사람이 괴롭혔어요 ㅜ</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>wodnr1225</td>
										<td>홍보/광고글</td>
										<td>이사람이 괴롭혔어요 ㅜ</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>wodnr1225</td>
										<td>홍보/광고글</td>
										<td>이사람이 괴롭혔어요 ㅜ</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>wodnr1225</td>
										<td>홍보/광고글</td>
										<td>이사람이 괴롭혔어요 ㅜ</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
</html>