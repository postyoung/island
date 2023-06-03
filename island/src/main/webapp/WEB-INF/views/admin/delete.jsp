<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-계정삭제 | ISLAND</title>
<style>
.modalBox {
	margin-bottom: 30px;
}

.paging {
	margin: auto;
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
					<h1 class="mt-4">관리자 계정 삭제</h1>
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
													class="btn btn-danger .btn-sm" data-bs-toggle="modal"
													data-bs-target="#staticBackdrop${avo.no}">계정 삭제</button> <!-- Modal -->
												<div class="modal fade" id="staticBackdrop${avo.no}"
													data-bs-backdrop="static" data-bs-keyboard="false"
													tabindex="-1" aria-labelledby="staticBackdropLabel"
													aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content" style="text-align: center">
															<div class="modal-header">
																<h1 class="modal-title fs-5" id="staticBackdropLabel">관리자
																	계정 삭제</h1>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<form action="${root}/admin/delete" method="POST">
																<div class="modal-body">
																	<h6 class="modalBox">관리자 이름 : ${avo.name}</h6>
																	<h6 class="modalBox">아이디 : ${avo.id}</h6>
																	<h6 class="modalBox">계정 생성일 : ${avo.enrollDate}</h6>
																	<h6 class="modalBox">관리자 권한 등급 : ${avo.pmNo}</h6>
																	<h6>해당 관리자를 삭제하시겠습니까?</h6>
																</div>
																<input type=hidden value="${avo.no}" name="no">
																<div class="modal-footer">
																	<button type="button" class="btn btn-secondary"
																		data-bs-dismiss="modal">취소하기</button>
																	<button type="submit" class="btn btn-danger">삭제하기</button>
																</div>
														</div>
													</div>
												</div></td>
										</tr>
										</form>
									</c:forEach>
								</tbody>
							</table class="mb-4">
							<div class="d-flex justify-content-center">
								<%@include file="/WEB-INF/views/common/admin-delete-paging.jsp"%>
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
<script
	src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
	crossorigin="anonymous">
	
</script>
