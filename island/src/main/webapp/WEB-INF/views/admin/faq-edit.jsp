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
				<form class="noticeWriteform" action="${root}/admin/faq/list" method="get">
					<div class="container">
						<h2>FAQ 수정페이지</h2>
						<form class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-lg-2" for="title">질문 : </label>
								<div class="col-lg-12">
									<input type="text" class="form-control" name="title" id="title"	placeholder="회원가입의 조건이 있나요?">
								</div>
							</div>
							
							<div class="form-group">

								<label id="content" class="control-label col-lg-2" for="content">답변	: </label>

								<div class="col-lg-12">
									
									<textarea class="form-control" name="content" id="content-an" rows="16" style="text-align: left;">
									이름과 이메일, 전화번호 입력만으로 간편하게 온오프믹스에 가입하실 수 있습니다.
									회원가입에 드는 비용 없이 만 14세 이상이라면 누구나 회원가입이 가능합니다.
									[회원가입 방법]
									- PC : 메인페이지 오른쪽 상단 → 회원가입 메뉴 선택
									- 모바일 : 왼쪽 상단 메뉴 → 로그인 →회원가입 메뉴 선택
									- SNS : 로그인 페이지 → SNS 로그인 → 회원가입"
									</textarea>
									
								</div>

							</div>

							<div id="btn-area" style="text-align: right; margin-top:10px;">
										<button type="submit" class="btn btn-md btn-primary" >수정</button>
										<a href="${root}/admin/faq/list"><button type="button" class="btn btn-md btn-warning">취소</button></a>
									</div>
						</form>
					</div>
			</div>
		</div>
	</div>

</body>
</html>