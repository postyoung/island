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
				<!-- 메뉴바 -->
				<div id="wrap">
					<form action="${root}/admin/qnaan/write" class="qnaanwriteform"	method="post">

						<div class="p-4 p-md-5 mb-4 rounded text-bg-white">
							<div class="col-md-0 px-0">
								<h1 class="text-center">1 : 1 문의하기</h1>
							</div>
						</div>

						<!-- 문의하기 양식  -->

						<div class="container">
							<h2>문의작성하기</h2>
							<br>
							<div class="form-group">
								<div class="row_wrap">
									<div class="input_title">
										<form class="form-horizontal">
											<table id="tableTitle" class="table table-bordered table" >
												<tr>
													<td>분류</td>
													<td>${categoryName}</td>
												</tr>
												<tr>
													<td>닉네임</td>
													<td>${writerName}</td>
												</tr>
												<tr>
													<td>제목</td>
													<td>${title}</td>
												</tr>
												<tr>
													<td width="200px;" height="200px;">내용</td>
													<td>${content}</td>
												</tr>
											</table>
											<br>
											<hr>
											<div class="form-group">

												<label id="content" class="control-label col-lg-2"	for="content">답변내용 : </label>

												<div class="col-lg-12" style="margin-bottom: 10px;">
													<input type="text" class="form-control" name="content" id="content" rows="16" placeholder="문의한 내용에 대해 답변을 작성하시오">
												</div>
											</div>
										</form>
										<div class="form-group">
											<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
												<button type="submit" class="btn btn-info btn-md" style="margin-right: 5px;">답변등록</button>
												<button type="reset" onclick="location.href='${root}/app/admin/qnaan/detail/${qnaan.no}'" class="btn btn-info btn-md" style="margin-right: 5px;">취소</button>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>