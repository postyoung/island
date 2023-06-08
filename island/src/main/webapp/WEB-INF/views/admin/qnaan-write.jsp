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
			<div id="wrap">
				<!-- 메뉴바 -->
				<form action="${root}/admin/qnaan/write" class="qnaanwriteform"	method="post">
					<main>
						<div class="container">
							<!-- 문의하기 양식  -->
								<h2>문의작성하기</h2>
							<div class="shadow p-3 mb-5 bg-body rounded" style="height: 100%;">
								<br>
								<div class="form-group">
									<div class="row_wrap">
										<div class="input_title">
											<table id="tableTitle" class="table table-bordered table" >
												<tr>
													<td>분류</td>
													<td>${qnaan.categoryName}</td>
												</tr>
												<tr>
													<td>닉네임</td>
													<td>${qnaan.writerName}</td>
												</tr>
												<tr>
													<td>제목</td>
													<td>${qnaan.title}</td>
												</tr>
												<tr>
													<td width="200px;" height="200px;">내용</td>
													<td>${qnaan.content}</td>
												</tr>
											</table>
											<br>
											<hr>
											<div class="form-group">

												<label id="content" class="control-label col-lg-2"	for="content">답변내용 : </label>

												<div class="col-lg-12">
													<textarea class="form-control" name="content" id="content" rows="16" >${qnaan.qnContent}</textarea>
												</div>
											</div>
											<div class="form-group">
												<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
													<button type="submit" class="btn btn-info btn-md" style="margin-right: 5px;">답변등록</button>
													<a href="${root}/admin/qnaan/list"><button type="button" class="btn btn-md btn-warning">취소</button></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</main>
				</form>
			</div>
		</div>
	</div>
</body>
</html>