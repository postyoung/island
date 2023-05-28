<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 공지사항리스트 | ISLAND</title>

</head>
<style>
/* 추가한 css */

div>h2 {
	line-height: 3.3;
	margin-top: 40px;
}

main table>tbody>tr:hover {
	background-color: lightgray;
	cursor: pointer;
}
</style>
<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/common/header-admin.jsp"%>
	<!-- layout -->
	<div id="layoutSidenav">
		<!-- nav -->
		<%@include file="/WEB-INF/views/common/nav-admin.jsp"%>
		<!-- content -->
		<div id="layoutSidenav_content">
			<!-- main -->
			<div id="wrap">
				<main>
						<div class="container">
							<h2 style="margin-left: 40px; margin-top: 40px;" >공지사항 리스트</h2>
							<hr>
							<br> <br>
							
							<table class="table table-hover table-bordered"
								style="text-align: center;">
								<thead>
									<tr class="info">
										<th>글번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${nvoList}" var="nvo">
										<tr>
											<td>${nvo.no}</td>
											<td>${nvo.title}</td>
											<td>${loginAdmin.name}</td>
											<td>${nvo.enrollDate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							
							<c:if test="${loginAdmin.id == 'admin'}">
								<div id="write-btn-area">
									<a id="write-btn" class="btn btn-info btn-md" style="float: right;" href="${root}/admin/notice/write">글쓰기</a>								
								</div>
							</c:if>
							<!-- 페이징 -->
							<%@ include file="/WEB-INF/views/common/admin-notice-paging.jsp"%>
						</div>
				</main>
			</div>
		</div>
	</div>
	<br>
		
	

	<br>
</body>
</html>
<script>
	const table = document.querySelector("main table tbody");
	table.addEventListener("click", function(event) {
		const num = event.target.parentNode.children[0].innerText
		location.href = '${root}/admin/notice/detail?num=' + num;
	});
</script>
