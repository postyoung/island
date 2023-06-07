<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-권한수정선택 | ISLAND</title>
<style>
#editBtn {
	width: 100%
}

#cardBox {
	text-align: center;
}

.admin-info {
	text-align: center;
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
					<h1 class="mt-4">관리자 권한 설정</h1>
					<div class="card mb-4 mt-4">
						<div class="card-body">
							<!--  -->
							<h2 class="mt-4">선택한 관리자 정보</h2>
							<form action="${root}/admin/authorize/detail" method="POST">
								<input type="hidden" value="${getAdmin.no}" name="no">
								<table class="admin-info table table-border mt-4">
									<thead>
										<tr>
											<th>관리자 이름</th>
											<th>아이디</th>
											<th>계정생성일</th>
											<th>관리자 권한 등급</th>
										</tr>
									</thead>
									<tr class="align-middle">
										<td>${getAdmin.name}</td>
										<td>${getAdmin.id}</td>
										<td>${getAdmin.enrollDate}</td>
										<td>관리자 계정 등급 : ${getAdmin.pmNo}</td>
									</tr>
									</tbody>
								</table>
								<h2 class="mt-4">권한 선택</h2>
								<div class="row mt-4">
									<div class="col-sm-4">
										<div class="card">
											<div id="cardBox" class="card-body" style="height: 238px">
												<h5 class="card-title">관리자 계정 등급 : 1</h5>
												<p class="card-text">
													<br> 공지사항 작성<br> FAQ<br> Q&A<br> <br>
												</p>
												<button type="submit" value="1" name="pmno" id="editBtn"
													class="btn btn-primary">설정하기</button>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="card">
											<div id="cardBox" class="card-body" style="height: 238px">
												<h5 class="card-title">관리자 계정 등급 : 2</h5>
												<p id="cardText" class="card-text">
													<br>공지사항 작성<br> FAQ<br> Q&A<br> 신고 관리<br>

												</p>
												<button type="submit" value="2" name="pmno" id="editBtn"
													class="btn btn-primary">설정하기</button>
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="card">
											<div id="cardBox" class="card-body">
												<h5 class="card-title">관리자 계정 등급 : 3</h5>
												<p class="card-text">
													공지사항 작성<br> FAQ<br> Q&A<br> 신고 관리<br>
													계정 생성 ,삭제 및 권한 설정
												</p>
												<button type="submit" value="3" name="pmno" id="editBtn"
													class="btn btn-primary">설정하기</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
<script>
	$(":button[id='editBtn'][value='${getAdmin.pmNo}']").attr('disabled', true);
</script>
</html>