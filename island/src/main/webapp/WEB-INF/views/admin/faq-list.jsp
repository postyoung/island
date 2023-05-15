<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND FAQ | ISLAND</title>



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
main table > tbody > tr:hover{
	background-color: lightgray;
	cursor:pointer;
}
tbody > td {
	width: 30px;
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
				
					<!-- faq 리스트 -->
					<form action="${root}/admin/faq/write" class="faqlistform" method="get">
						<div class="container">
							<h2 style="margin-left: 40px; margin-top: 40px;">자주하는 질문 FAQ</h2>
							<hr>
							<br> <br>
							 <c:if test="${loginMember.id != 'admin'}">
								<div id="write-btn-area">
									<button type="submit" class="btn btn-info btn-md"style="float: right; margin-right: 5px;">
										<a href="${root}/faq/write"></a>등록</button>
								</div>
							</c:if>
							
							
							<br> <br>
							<table class="table table-hover table-bordered" style="text-align: center;">
								<thead>
									<tr class="info">
										<th>글번호</th>
										<th>분류</th>
										<th>제목</th>
										<th>내용</th>
										<th>작성자</th>
										<th>작성일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${fvoList}" var="fvo">
										<tr> 
											<td>${fvo.no}</td>
											<td>${fvo.categoryName}</td>
											<td>${fvo.title}</td>
											<td>${fvo.content}</td>
											<td>${fvo.writerName}</td>
											<td>${fvo.enrollDate}</td>
										</tr>
									</c:forEach>
									
	
								</tbody>
							</table>
							
							<br>
							<div id="page-area">
							<!-- 페이징 -->
							<%@ include file="/WEB-INF/views/common/paging.jsp" %>
							</div>
							<!-- 페이징처리 -->
							<br>
	
							<%-- <div id="page-area">
								<c:if test="${pv.currentPage > 1}">
									<a class="btn btn-primary btn-lg"
										href="${root}/faq/list?page=${pv.currentPage-1}">이전</a>
								</c:if>
								<c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1"
									var="i">
									<c:if test="${pv.currentPage != i}">
										<a class="btn btn-primary btn-lg"
											href="${root}/faq/list?page=${i}">${i}</a>
									</c:if>
									<c:if test="${pv.currentPage == i}">
										<a class="btn btn-secondary btn-lg">${i}</a>
									</c:if>
								</c:forEach>
								<c:if test="${pv.currentPage < pv.maxPage}">
									<a class="btn btn-primary btn-lg"
										href="${root}/faq/list?page=${pv.currentPage+1}">다음</a>
								</c:if>
							</div> --%>
						</div>
					</from>
				</main>
			</div>
		</div>
	
	
</body>
</html>

<script>
	const table = document.querySelector("main table tbody");
	table.addEventListener("click", function(event) {
		const num = event.target.parentNode.children[0].innerText
		location.href = '${root}/admin/faq/detail?num=' + num;
	});
</script>


