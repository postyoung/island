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
	.shadow {
	   width: 90%;
	   height: 600px;
	   margin: auto;
	   margin-top: 100px;
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
					
					<main>
					
						<div class="container">
							<h2>FAQ 질문&답변</h2>
							<div class="shadow p-3 mb-5 bg-body rounded">
								<div class="btn-group" role="group">
									<div class="col-lg-12">
										<select class="form-control" name="categoryNo" id="category">
											<option>전체</option>
											<option value="10">회원</option>
											<option value="20">모임</option>
											<option value="30">세미나</option>
											<option value="40">결제/환불</option>
											<option value="50">기타</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-lg-2" for="title">질문 : </label>
									<div class="col-lg-12">
										<input type="text" class="form-control" name="title" id="title"	value="${vo.title}">
									</div>
								</div>
								
								<div class="form-group">
	
									<label id="content" class="control-label col-lg-2" for="content">답변	: </label>
	
									<div class="col-lg-12">
										<textarea class="form-control" name="content" id="content" rows="16" >${vo.content}</textarea>
									</div>
	
								</div>
	
								<div id="btn-area" style="text-align: right; margin-top:10px;">
									<button type="submit" class="btn btn-md btn-primary" >저장</button>
									<a href="${root}/admin/faq/list"><button type="button" class="btn btn-md btn-warning">취소</button></a>
								</div>
								
							</div>
						</div>
					</main>
			</div>
		</div>
	</div>
</body>
</html>

