<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-리뷰 신고 목록 | ISLAND</title>
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
					<h1 class="mt-4">세미나 리뷰 신고 목록</h1>
					<div class="card mb-4 mt-4">
						<div class="card-body">
							<nav class="navbar navbar-light bg-light">
								<div class="container-fluid">
									<div class="dropdown">
										<button class="btn btn-secondary dropdown-toggle"
											type="button" data-bs-toggle="dropdown" aria-expanded="false">신고
											처리 여부</button>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="#">전체 조회</a></li>
											<li><a class="dropdown-item" href="#">신고 처리 대기</a></li>
											<li><a class="dropdown-item" href="#">신고 처리 완료</a></li>
										</ul>
									</div>
									<form class="d-flex">
										<input class="form-control me-2" type="search"
											placeholder="Search" aria-label="Search">
										<button class="btn btn-outline-secondary" type="submit">Search</button>
									</form>
								</div>
							</nav>
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>신고 번호</th>
										<th>리뷰 제목</th>
										<th>카테고리</th>
										<th>신고 처리 여부</th>
									</tr>
								</thead>
								<tbody>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
									</tr>
									<tr class="align-middle">
										<td>1</td>
										<td>여기 망해라 ㅋㅋ</td>
										<td>홍보/광고글</td>
										<td>신고 처리 대기</td>
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