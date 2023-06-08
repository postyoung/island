<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1문의하기 | ISLAND</title>



<!-- 헤더랑 겹쳐서 별도 추가한 css -->
<style>
#page-area {
	width: 600px;
	margin: auto;
	display: flex;
	justify-content: center;
	font-size: 20px;
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
				<main>
					<form action="${root}/admin/qnaan/write" class="qnaanListform"	method="get">
						<div class="container">
							<h1 style="margin-left: 40px; margin-top: 40px;">1 : 1 문의하기</h1>
							<hr>
							<br> <br>
						</div>
							<div class="container mt-5">
								<div id="board-list">
									<div class="container">
										<table class="table table-hover table-bordered" style="text-align: center;" id="user-table">
											<thead>
												<tr>
													<td width="7%">번호</td>
													<td width="7%">분류</td>
													<td width="25%">제목</td>
													<td width="30%">내용</td>
													<td width="7%">작성자</td>
													<td width="16%">작성일</td>
													<td width="30%">답변여부</td>
												</tr>
											</thead>
											<tbody>

	                                                <c:forEach items="${getQnaanList}" var="qnaan">
	                                                    <tr>
	                                                        <td>${qnaan.no}</td>
	                                                        <td>${qnaan.categoryName}</td>
	                                                        <td>${qnaan.title}</td>
	                                                        <td>${qnaan.content}</td>
	                                                        <td>${qnaan.writerNo}</td>
	                                                        <td>${qnaan.enrollDate}</td>
	                                                        <td>${qnaan.answerYn}</td>
	                                                    </tr>
	                                                </c:forEach>
	     
											</tbody>
										</table>
										
										<div id="page-area">
										<!-- 페이징 -->
										<%@ include file="/WEB-INF/views/common/admin-qnaan-paging.jsp" %>
										</div>
									</div>
								</div>
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
		const no = event.target.parentNode.children[0].innerText
		location.href = '${root}/admin/qnaan/detail/' + no;
	});
</script>