<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-세미나 신고 상세 | ISLAND</title>
<style>
.report-content {
	resize: none;
	height: 400px;
	readonly;
}

.categoryBox {
	text-align: center
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
					<h1 class="mt-4">세미나 신고 상세 조회</h1>
					<div class="card mb-4 mt-4">
						<div class="card-body">
							<div class="mb-3 row">
								<div class="d-flex justify-content-between">
									<div
										class="input-group input-group-default w-25 p-3 categoryBox">
										<span class="input-group-text" id="inputGroup-sizing-default">카테고리</span>
										<input type="text" class="form-control categoryBox"
											aria-label="Sizing example input"
											aria-describedby="inputGroup-sizing-default" readonly
											value="${getReport.category}">
									</div>
									<button type="button" class="btn btn-secondary btn-lg groupBtn"
										style="height: 50px; margin-top: 10px; margin-right: 10px;"
										onclick="window.open('${root}/seminar/detail?no=${getReport.seminarNo}')">해당
										세미나 조회</button>
								</div>
							</div>
							<div class="mb-3">
								<label for="exampleFormControlTextarea1" class="form-label"><h3>상세
										내용</h3></label>
								<textarea class="form-control report-content"
									id="exampleFormControlTextarea1" rows="3" readonly>${getReport.detail}</textarea>
							</div>
							<div class="d-flex justify-content-evenly">
								<form action="${root}/admin/check-report" method="post">
									<input type="hidden" value="${getReport.reportNo}" name="no">
									<button id="submitBtn" type="submit" value="신고 처리 완료"
										class="btn btn-secondary btn-lg">신고 확인</button>
								</form>
								<form action="${root}/admin/block-seminar" method="post">
									<input type="hidden" value="${getReport.reportNo}" name="no">
									<input type="hidden" value="${getReport.seminarNo}"
										name="seminarNo">
									<button id="submitBtn" type="submit" value="신고 처리 완료"
										class="btn btn-danger btn-lg">세미나 삭제</button>
								</form>
								<form action="${root}/admin/block-member-seminar" method="post">
									<input type="hidden" value="${getReport.reportNo}" name="no">
									<input type="hidden" value="${getReport.seminarNo}"
										name="seminarNo"> <input type="hidden"
										value="${getReport.writer}" name="writerNo">
									<button id="submitBtn" type="submit" value="신고 처리 완료"
										class="btn btn-danger btn-lg">세미나 삭제 및 개설자 정지</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
<script>
	$(":button[id='submitBtn'][value='${getReport.reportYn}']").attr(
			'disabled', true);
</script>
</html>