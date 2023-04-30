<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1문의하기 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-member.jsp"%>

<!-- css연결 -->
<link rel="stylesheet" href="${root}/resources/css/admin/inquiry/inquiry-list.css">
	


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
	<!-- 메뉴바 -->
	<div id="wrap">
		<form action="" class="inquiryListform">
			<hr>
			<div class="p-4 p-md-5 mb-4 rounded text-bg-white">
				<div class="col-md-0 px-0">
					<h1 class="text-center">1 : 1 문의하기</h1>
				</div>
			</div>
			<hr>
			<nav>
				<a href="#">고객센터</a>
				<a href="${root}/admin/faq/list">자주하는질문</a>
				<a href="${root}/admin/notice/list">공지사항</a>
				<a href="${root}/admin/inquiry/list">문의하기</a>
			</nav>
			<hr>
			<!-- 문의하기 양식  -->
			<div id="wrap">
			<form class="inquiryWriteform" style="margin-left: 225px;" action="${root}/admin/inquiry/list" method="post">
				<div class="container">
					<h2>문의작성하기</h2>
					<br>
					<form class="form-horizontal" >
						<div class="form-group">
						<div class="row_wrap">
						<div class="input_title">
							
							<div class="form-group">
								<label class="control-label-inline col-lg-2" for="name">작성자 :</label>
								<div class="col-lg-4">
									<input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-2" for="phone">전화번호* :</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="phone" id="phone" placeholder="연락처를 입력해주세요">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label-inline col-lg-2" for="email">이메일* :</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" name="email" id="email" placeholder="이메일을 입력해주세요">
								</div>
							</div>
							<select class="title_select" name="INQR_CAT_CD">
								<option value="" selected="selected" class="inquire_group">문의분류</option>
								<option value="01">회원</option>
								<option value="02">모임 신청</option>
								<option value="03">모임 개설</option>
								<option value="04">결제 · 환불</option>
								<option value="05">정산</option>
								<option value="06">플레이스</option>
								<option value="07">광고제휴</option>
								<option value="08">기타</option>
							</select>
							<br>
							<label class="control-label-inline col-lg-2" for="title">제목 : </label>
							<div class="col-lg-4">
								<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해주세요">
							</div>
						</div>
						<div class="form-group">
	
							<label id="content" class="control-label col-lg-2" for="content">내용 : </label>
	
							<div class="col-lg-12">
								<textarea class="form-control" name="content" id="content" rows="16" placeholder="ISLAND를 이용하시면서 궁금한 점이나 어려운 점, 모임 관련 내용이나 온오프믹스 전반적인 문의를 입력 해 주세요." ></textarea>
							</div>
						
						</div>
						
						<div class="input_agreement">
							<h6 class="label">
								개인정보수집 및 이용 동의 *</h6>
							<label>
								<input class="privacy_check" type="checkbox" name="privacy" value="1"> 작성해주신 이메일, 전화번호는 문의내용 확인 및 답변처리
								용도로 쓰이며 3년간 보관 후 파기합니다.
								 <span class="check_box"></span>
							</label>
						</div>
						<p class="info_message">
						이 사이트는 reCAPTCHA에 의해 보호되며 Google
						 <a	href="https://policies.google.com/privacy" target="_blank">개인정보 취급 방침</a> 및 
						 <a href="https://policies.google.com/terms" target="_blank">서비스 약관</a>이 적용됩니다.
						</p>
					</div>
					<br>
					<br>
						<div class="form-group">
							<div id="btn1" class="col-sm-offset-2 col-lg-10">
								<button type="submit" class="btn btn-info btn-lg" style="float: right;">등록</button>
								<button type="reset" class="btn btn-info btn-lg" style="float: right; margin-right: 10px;">취소</button>
								<button type="submit" class="btn btn-info btn-lg" style="float: right; margin-right: 10px;"><a href="${root}/admin/notice/list"></a>목록</button>
							</div>
						</div>
					</form>
				</div>
		</div>
			
			
	<br>
	<br>
	<br>
	<br>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>