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
#page-area {
	width: 600px;
	margin: auto;
	display: flex;
	justify-content: center;
	font-size: 20px;
}

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
					<form action="${root}/admin/notice/list" class="noticelistform"	method="get">
						<div class="container">
							<h2>공지사항 리스트</h2>
							<table class="table table-hover table-bordered"
								style="text-align: center;">
								<thead>
									<tr class="info">
										<th>글번호</th>
										<th>제목</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${nvoList}" var="nvo">
										<tr>
											<td>${nvo.no}</td>
											<td>${nvo.title}</td>
											<td>${nvo.enroll}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<%-- <c:if test="${loginMember.id == 'admin'}">// 로그인해도 버튼이 사라짐...ㅡㅜ
							<div id="write-btn-area">
								<button type="submit" class="btn btn-info btn-md" style="float: right;">
									<a href="${root}/admin/notice/write"></a>글쓰기</button>								
							</div>
							</c:if> --%>

							<div id="write-btn-area">
								<button type="submit" class="btn btn-info btn-md" style="float: right;">
									<a href="${root}/admin/notice/write"></a>글쓰기
								</button>
							</div>

							<br>
							<div id="page-area">
								<!-- 페이징 -->
								<%@ include file="/WEB-INF/views/common/paging.jsp"%>
							</div>
							<br>
						</div>
					</form>
				</main>
			</div>
		</div>
	</div>

</body>
</html>
<script>
	const table = document.querySelector("main table tbody");
	table.addEventListener("click", function(event) {
		const num = event.target.parentNode.children[0].innerText
		location.href = '${root}/admin/notice/detail?num=' + num;
	});
</script>
