<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND FAQ 상세페이지 | ISLAND</title>


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
				<!-- 메뉴바 -->
				<div id="wrap">
					<main>
						<form action="${root}/admin/faq/edit" class="faqDetailform" method="get">
	
							<div class="p-4 p-md-5 mb-4 rounded text-bg-white">
								<div class="col-md-0 px-0">
									<h1 class="text-center">FAQ 상세페이지</h1>
								</div>
							</div>
	
							<!-- 문의하기 양식  -->
							<div id="wrap">
								<form class="FaqDetailform" style="margin-left: 225px;" action="${root}/admin/faq/write" method="POST">
									<div class="container">
										<h2>FAQ</h2>
										<br>
										<!-- 테이블양식 -->
										<form class="form-horizontal">
											<table id="tableTitle" class="table table-bordered table" >
											<input type="hidden" name="no" value="${fvo.no}">
												<tr>
													<td>분류</td>
													<td>${fvo.categoryNo}</td>
												</tr>
												<tr>
													<td>제목</td>
													<td>${fvo.title}</td>
													
												</tr>
												<tr>
													<td>작성일시</td>
													<td>${fvo.enrollDate}</td>
													
												</tr>											
												<tr>
													<td width="300px;" height="300px;">내용</td>
													<td>${fvo.content}</td>
												</tr>
											</table>
				
										</form>
										<c:if test="${loginMember.id != 'admin'}">
											<div class="form-group">
												<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
													<button onclick="location.href='${root}/admin/faq/edit?num=${fvo.no}" class="btn btn-warning btn-md"style="margin-right: 5px;">수정</button>
													<button onclick=" location.href='${root}/admin/faq/delete?num=${fvo.no}'" class="btn btn-danger btn-md" style="margin-right: 5px;">삭제</button>
													<button onclick=" location.href='http://127.0.0.1:8888/app/admin/faq/list'"class="btn btn-info btn-md" style="margin-right: 5px;">취소</button>
													
												</div>
											</div>
										</c:if>
									</div>
								</form>
							</div>
						</form>
					</main>
				</div>
</body>
</html>