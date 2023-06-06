<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-소모임 신고 목록 | ISLAND</title>
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
					<h1 class="mt-4">소모임 신고 목록</h1>
					<div class="card mb-4 mt-4">
						<div class="card-body">
							<form action="${root}/admin/report/group" method="get">
								<nav class="navbar navbar-light bg-light">
									<div class="container-fluid">
										<div>
											<select class="form-select" name="searchType"
												style="width: 100%">
												<option selected>전체 조회</option>
												<option value="N">신고 처리 대기</option>
												<option value="Y">신고 처리 완료</option>
											</select>
										</div>
										<div class="d-flex">
											<div class="input-group d-flex justify-content-end">
												<input class="form-control" type="search" name="searchValue"
													placeholder="Search" value="${searchMap.searchValue}"
													aria-label="Search">
												<button class="btn btn-outline-secondary" type="submit">Search</button>
											</div>
										</div>
									</div>
								</nav>
							</form>
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>신고 번호</th>
										<th>소모임 이름</th>
										<th>카테고리</th>
										<th>신고 처리 여부</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${GroupReportList}" var="grl">
										<tr class="align-middle"
											onclick="location.href='${root}/admin/report/group/detail?no=${grl.reportNo}'">
											<td>${grl.reportNo}</td>
											<td>${grl.name}</td>
											<td>${grl.category}</td>
											<td>${grl.reportYn}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="d-flex justify-content-center">
								<%@include
									file="/WEB-INF/views/common/admin-report-group-paging.jsp"%>
							</div>
						</div>
					</div>
				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	const svInput = document.querySelector('input[name="searchValue"]');

	function initSearchValueInput() {
		svInput.value = '${searchMap.searchValue}';
	}

	function initSearchValueSelected() {
		const optionTag = document
				.querySelector('option[value="${searchMap.searchType}"]');
		if (optionTag != null) {
			optionTag.selected = true;
		}
	}

	initSearchValueSelected();
</script>
</html>