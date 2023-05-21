<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 공지사항상세페이지 | ISLAND</title>

<style>
/* 추가한 css */
div>h2 {
	line-height: 3.3;
	margin-top: 40px;
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
			<!-- main -->
			<div id="wrap">
				<main>
					<form class="noticedetailform" action="${root}/admin/notice/detail" method="get">
						<div class="container">
							<h2>공지사항 상세페이지</h2>
							<div id="notice-area">
								<table id="tableTitle" class="table table-bordered table">
									<tr>
										<td>번호</td>
										<td>${vo.no}</td>
									</tr>
									<tr>
										<td>제목</td>
										<td>${vo.title}</td>
									</tr>
									<tr>
										<td>작성일자</td>
										<td>${vo.enrollDate}</td>
									</tr>
									<tr>
										<td>내용</td>
										<td height="200px;">${vo.content}</td>
									</tr>
								</table>
							</div>
							<div id="notice-area">
								<table id="tableTitle" class="table table-bordered table">
									<tr>
										<td>번호</td>
										<td>${vo.no}</td>
									</tr>
									<tr>
										<td>제목</td>
										<td>${vo.title}</td>
									</tr>
									<tr>
										<td>작성일자</td>
										<td>${vo.enrollDate}</td>
									</tr>
									<tr>
										<td>내용</td>
										<td height="200px;">${vo.content}</td>
									</tr>
								</table>
							</div>"src/main/webapp/WEB-INF/views/admin/faq-edit.jsp"


							<div id="notice-btn-area" style="text-align: right; margin-top: 10px;">
		                            <button onclick="location.href='${root}/admin/notice/edit?num=${vo.no}'" class="btn btn-md btn-warning">수정</button>
		                            <button onclick="location.href='${root}/admin/notice/delete?num=${vo.no}'" class="btn btn-md btn-danger">삭제</button>
		                        </div>
						</div>
					</form>
				</main>
			</div>
		</div>
	</div>

</body>
</html>
