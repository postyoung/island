<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND FAQ 수정페이지 | ISLAND</title>

<style>
	/* 추가한 css */
	div>h2 {
		line-height: 3.3;
		margin-top: 40px;
	}
	#content-an{
		text-align: left;
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
				<form class="faqEditform" action="${root}/admin/faq/edit" method="POST">
					<div class="container">
						<h2>FAQ 수정페이지</h2>
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
									<input type="text" class="form-control" name="title" id="title"	value="${vo.title}">
								</div>
							</div>
							
							<div class="form-group">

								<label id="content" class="control-label col-lg-2" for="content">답변	: </label>

								<div class="col-lg-12">
									
									<textarea class="form-control" name="content" id="content-an" rows="16" style="text-align: left;">${vo.content}</textarea>
									
								</div>

							</div>

							<div id="btn-area" style="text-align: right; margin-top:10px;">
								<button type="submit" class="btn btn-md btn-warning" >수정</button>
								<a href="${root}/admin/faq/list"><button type="button" class="btn btn-md btn-info">취소</button></a>
							</div>
						</form>
					</div>
			</div>
		</div>
	</div>

</body>
</html>