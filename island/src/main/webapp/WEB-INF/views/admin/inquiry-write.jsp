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
					<form action="${root}/admin/inquiry/list" class="inquiryDetailform"	method="get">

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
													<div class="row">
														<div class="col">
															닉네임 : <input type="text" class="form-control"placeholder="내가그린기린" aria-label="First name">
														</div>
													</div>
													<br>
													<div class="row-md-8">
														<select class="form-select">
															<option value="" selected="selected" class="inquire_group">문의분류</option>
															<option value="01">회원</option>
															<option value="02">모임</option>
															<option value="03">세미나</option>
															<option value="04">결제/환불</option>
															<option value="05">기타</option>
														</select>
														<div class="col">
															제목 : <input type="text" class="form-control" placeholder="로그인되지 않습니다." aria-label="Last name">
														</div>
													</div>
													<div class="form-group">

														<label id="content" class="control-label col-lg-2"	for="content">내용 : </label>

														<div class="col-lg-12">
															<textarea class="form-control" name="content"
																id="content" rows="16"
																placeholder="로그인 시도를 하였지만 관리자에게 문의하라는 메시지 창이 뜹니다."></textarea>
														</div>

													</div>

													<div class="input_agreement">
														<h6 class="label">개인정보수집 및 이용 동의 *</h6>
														<label> 
															<input class="privacy_check" type="checkbox" name="privacy" value="1"> 작성해주신이메일, 전화번호는 문의내용 확인 및 답변처리 용도로 쓰이며 3년간 보관 후 파기합니다. <span
															class="check_box"></span>
														</label>
													</div>
													<p class="info_message">
														이 사이트는 reCAPTCHA에 의해 보호되며 Google
														 <a	href="https://policies.google.com/privacy"	target="_blank">개인정보 취급 방침</a> 및 
															<a href="https://policies.google.com/terms" target="_blank">서비스 약관</a>이 적용됩니다.
													</p>
													<hr>
													<div class="form-group">

														<label id="content" class="control-label col-lg-2" for="content">답변내용 : </label>

														<div class="col-lg-12" style="margin-bottom: 10px;">
															<textarea class="form-control" name="content" id="content" rows="16" placeholder=" 문의한 내용에 대해 답변을 작성하시오"></textarea>
														</div>
													</div>
													<div class="form-group">
														<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
															<button type="submit" class="btn btn-info btn-md" style="margin-right: 5px;">답변등록</button>
															<button type="reset" class="btn btn-info btn-md" style="margin-right: 5px;">취소</button>
				
														</div>
													</div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</form>
						</div>
					</form>
				</div>
			</div>
		</div>
</body>
</html>