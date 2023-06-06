<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
								<div class="btn-group" role="group">
									<select type="form-control" name="ancategory" id="ancategory">
										<option>전체</option>
										<option value="11">답변대기</option>
										<option value="22">답변완료</option>
									</select>
								</div>
	
								<br> <br>
								<div id="board-list">
									<div class="container">
										<table class="table table-hover table-bordered" style="text-align: center;" id="user-table">
											<thead>
												<tr>
													<td width="5%" class="text-center">분류</td>
													<td width="35%" class="text-center">제목</td>
													<td width="15%" class="text-center">작성자</td>
													<td width="17%" class="text-center">작성일</td>
													<td width="17%" class="text-center">답변여부</td>
												</tr>
											</thead>
											<tbody>
												 <c:if test="${not empty qnaanList}">
	                                                <c:forEach items="${qnaanList}" var="qvo">
	                                                    <tr>
	                                                        <td>${qvo.categoryName}</td>
	                                                        <td>${qvo.title}</td>
	                                                        <td>${qvo.writerName}</td>
	                                                        <td>${qvo.enrollDate}</td>
	                                                        <td>${qvo.ancategoryName}</td>
	                                                    </tr>
	                                                </c:forEach>
	                                            </c:if>
	                                            <c:if test="${empty qnaanList}">
	                                                <tr>
	                                                    <td colspan="5" style="text-align: center;">데이터가 없습니다.</td>
	                                                </tr>
	                                            </c:if>
											</tbody>
										</table>
										
										
										<div class="form-group">
											<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
												<button type="submit" class="btn btn-info btn-md" style="margin-right: 5px;">문의답변</button>
	
											</div>
										</div>
										
										<br>
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