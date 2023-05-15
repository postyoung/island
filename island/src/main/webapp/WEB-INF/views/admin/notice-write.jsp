<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 공지사항작성하기 | ISLAND</title>

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
				<form class="noticeWriteform" action="${root}/admin/notice/write" method="POST">
					<div class="container">
						<h2>공지사항 작성하기</h2>
						<form class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-lg-2" for="title">제목 : </label>
								<div class="col-lg-12">
									<input type="text" class="form-control" name="title" id="title"	placeholder="제목을 작성해 주세요.">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2" for="writer">작성자 :</label>
								<div class="col-lg-12">
									<input type="text" class="form-control" name="writer" id="writer" placeholder="이름을 작성해 주세요.">
								</div>
							</div>
							<div class="form-group">

								<label id="content" class="control-label col-lg-2" for="content">내용	: </label>

								<div class="col-lg-12">
									<textarea class="form-control" name="content" id="content" rows="16" placeholder="내용을 작성해 주세요."></textarea>
								</div>

							</div>

							<div id="btn-area" style="text-align: right; margin-top:10px;">
										<button type="submit" class="btn btn-md btn-primary" >등록</button>
										<a href="${root}/admin/notice/list"><button type="button" class="btn btn-md btn-warning">취소</button></a>
									</div>
						</form>
					</div>
			</div>
		</div>
	</div>

</body>
</html>