<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1문의 상세페이지 | ISLAND</title>


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
					<form action="" class="inquiryWriteform">

						<div class="p-4 p-md-5 mb-4 rounded text-bg-white">
							<div class="col-md-0 px-0">
								<h1 class="text-center">1 : 1 문의하기 상세페이지</h1>
							</div>
						</div>

						<!-- 문의하기 양식  -->
						<div id="wrap">
							<form class="inquiryWriteform" style="margin-left: 225px;"
								action="${root}/admin/inquiry/list" method="post">
								<div class="container">
									<h2>문의하기</h2>
									<br>
									<!-- 테이블양식 -->
									<form class="form-horizontal">
										<table id="tableTitle" class="table table-bordered table" style="">
											<tr>
												<td>닉네임</td>
												<td>내가그린기린</td>
											</tr>
											<tr>
												<td>분류</td>
												<td>회원</td>
											</tr>
											<tr>	
												<td>제목</td>
												<td>로그인 되지 않습니다.</td>
											</tr>
											<tr>
												<td width="300px;" height="300px;">내용</td>
												<td >로그인 시도를 하였지만 관리자에게 문의하라는 메시지 창이 뜹니다.</td>
											</tr>
										</table>
			
									</form>
									
									<div class="form-group">
										<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
											<button type="submit" class="btn btn-info btn-md"style="margin-right: 5px;">답변등록</button>
											<button type="reset" class="btn btn-info btn-md" style="margin-right: 5px;">취소</button>
											
										</div>
									</div>
											
								</div>
							</form>
						</div>
				</div>
</body>
</html>