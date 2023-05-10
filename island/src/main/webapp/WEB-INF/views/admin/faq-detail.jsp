<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND FAQ 상세페이지 | ISLAND</title>


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
					<form action="${root}/admin/faq/edit" class="inquiryWriteform">

						<div class="p-4 p-md-5 mb-4 rounded text-bg-white">
							<div class="col-md-0 px-0">
								<h1 class="text-center">FAQ 상세페이지</h1>
							</div>
						</div>

						<!-- 문의하기 양식  -->
						<div id="wrap">
							<form class="inquiryWriteform" style="margin-left: 225px;"
								action="${root}/admin/faq/list" method="post">
								<div class="container">
									<h2>FAQ</h2>
									<br>
									<!-- 테이블양식 -->
									<form class="form-horizontal">
										<table id="tableTitle" class="table table-bordered table" style="">
											<tr>
												<td>분류</td>
												<td>회원</td>
											</tr>
											<tr>
												<td>제목</td>
												<td>회원가입의 조건이 있나요?</td>
											</tr>
											<tr>
												<td>작성일시</td>
												<td>20210321</td>
											</tr>											
											<tr>
												<td width="300px;" height="300px;">내용</td>
												<td >이름과 이메일, 전화번호 입력만으로 간편하게 온오프믹스에 가입하실 수 있습니다.<br> 회원가입에 드는	비용 없이 만 14세 이상이라면 누구나 회원가입이 가능합니다.<br>
												<br>[회원가입 방법]<br>-	PC : 메인페이지 오른쪽 상단 → 회원가입 메뉴 선택<br>- 모바일 : 왼쪽 상단 메뉴 → 로그인 →회원가입 메뉴 선택<br>- SNS : 로그인 페이지 → SNS 로그인 → 회원가입</td>
											</tr>
										</table>
			
									</form>
									
									<div class="form-group">
										<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
											<button type="submit" class="btn btn-warning btn-md"style="margin-right: 5px;">수정</button>
											<button type="reset" onclick=" location.href='http://127.0.0.1:8888/app/admin/faq/list'"class="btn btn-danger btn-md" style="margin-right: 5px;">삭제</button>
											<button type="reset" onclick=" location.href='http://127.0.0.1:8888/app/admin/faq/list'"class="btn btn-info btn-md" style="margin-right: 5px;">취소</button>
											
										</div>
									</div>
											
								</div>
							</form>
						</div>
				</div>
</body>
</html>