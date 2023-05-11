<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND FAQ질문&답변 | ISLAND</title>

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
				<form class="faqWriteform" action="${root}/admin/faq/write" method="POST">
					<div class="container">
						<h2>FAQ 질문&답변</h2>
						<form class="form-horizontal">
							<div class="btn-group" role="group">
								<select type="button" class="btn btn-primary dropdown-toggle" style="margin-bottom: 10px;" data-bs-toggle="dropdown" aria-expanded="false">
									<option>전체</option>
									<option>회원</option>
									<option>모임</option>
									<option>세미나</option>
									<option>결제/환불</option>
									<option>기타</option>
								</select>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2" for="title">질문 : </label>
								<div class="col-lg-12">
									<input type="text" class="form-control" name="title" id="title"	placeholder="질문을 입력해주세요">
								</div>
							</div>
							
							<div class="form-group">

								<label id="content" class="control-label col-lg-2" for="content">답변	: </label>

								<div class="col-lg-12">
									<textarea class="form-control" name="content" id="content" rows="16" placeholder="답변을 입력하세요"></textarea>
								</div>

							</div>

							<div id="btn-area" style="text-align: right; margin-top:10px;">
										<button type="submit" class="btn btn-md btn-primary" >저장</button>
										<a href="${root}/admin/faq/list"><button type="button" class="btn btn-md btn-warning">취소</button></a>
									</div>
						</form>
					</div>
			</div>
		</div>
	</div>

</body>
</html>