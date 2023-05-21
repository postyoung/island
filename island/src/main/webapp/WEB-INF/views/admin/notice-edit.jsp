<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 공지사항수정하기 | ISLAND</title>


</head>
<style>
/* 추가한 css */
div>h2 {
	line-height: 3.3;
	margin-top: 10px;
	margin-left: 10px;
}

#tableTitle {
	font-size: 20px;
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
				<form action="${root}/admin/notice/list" class="noticeeditform" method="post">
				<input type="hidden" name="no" value="${loginAdmin.no}">
					<div class="container">
						<h2>공지사항 수정페이지</h2>
						<table id="tableTitle" class="table table-bordered table-hover">
							<tr>
								<td style="width: 50px;">글번호</td>
								<td><input name="no" type="text" style="font-size: 20px;" class="form-control" value="${vo.no}"></td>
							</tr>
							<tr>
								<td>제목</td>
								<td><input name="title" type="text"	style="font-size: 20px;" class="form-control" value="${vo.title}"></td>
							</tr>
							<tr>
								<td>작성자</td>
								<td><input name="writer" type="text" style="font-size: 20px;" class="form-control" value="${vo.writer}"></td>
							</tr>
							<tr>
								<td>내용</td>
								<td><textarea name="content" rows="20" cols=""	class="form-control" >${vo.content}</textarea></td>
							</tr>
						</table>
							<div id="btn-area" style="text-align: right; margin-top: 10px;">
								<button type="submit" class="btn btn-md btn-warning">수정완료</button>
								<%-- <a href="${root}/admin/notice/delete"><button type="button"	class="btn btn-md btn-danger">삭제</button></a> --%>
								<a href="${root}/admin/notice/list"><button type="button" class="btn btn-md btn-info">목록</button></a>
							</div>
						</div>
					</from>
				</div>

			</div>
</body>
</html>