<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1 문의작성 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-member.jsp"%>

<!-- css연결 -->

<link rel="stylesheet" href="${root}/resources/css/community/qna/QnAwrite.css">
	

</head>
<body>
	    
    <!-- 고객센터 전체 -->
    <!-- 메뉴바 -->
    <div id="wrap">
		<div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
			<h1 class="text-center" id="title">1:1 문의작성</h1>
			
		</div>
		
		<!-- 고객센터 메뉴바 -->
	   <%@ include file="/WEB-INF/views/community/commu-nav.jsp" %>
			<!-- 문의하기 양식  -->
			<div id="wrap">
				
			<form class="inquiryWriteform" style="margin-left: 225px;" action="${root}/community/qna/write" method="post">
				<div class="container">
					<h2 class="title">문의작성하기</h2>
					<br>
					<form class="form-horizontal" >
						<div class="form-group">
						<div class="row_wrap">
						<div class="input_title">
							
							
							<div class="form-group">
								<label  for="name">작성자</label>
								<div class="col-lg-4">
									<input type="text" class="form-control" name="name" id="name"  required value="${loginMember.nick}" readonly> 
								</div>
							</div>
							<div class="form-group">
								<label for="phone">전화번호</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="phone" id="phone"  required value="${loginMember.phone}" readonly>
								</div>
							</div>
							<div class="form-group">
								<label  for="email">이메일</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" name="email" id="email"  required value="${loginMember.email}@${loginMember.email2}" readonly>
								</div>
							</div>
							 
							
							<!-- 카테고리 드롭다운 -->
							<div class="search_cate_area">

							<label for="title">제목</label>
							
							<select class="form-select" aria-label="Default select example" name="categoryNo">
							<option selected>카테고리</option>
							<option value="10">회원</option>
							<option value="20">소모임</option>
							<option value="30">세미나</option>
							<option value="40">결제/환불</option>
							<option value="50">기타</option>
						</select>
							<div class="col-lg-4">
								<input type="text" class="form-control" name="title" id="title_input" placeholder="제목을 입력해주세요" required>
							</div>
						</div>
						<div class="form-group">
	
							<label for="content">내용</label>
	
							<div>
								<textarea class="form-control" name="content" id="content" rows="16" placeholder="ISLAND를 이용하시면서 궁금한 점이나 어려운 점, 모임 관련 내용이나 온오프믹스 전반적인 문의를 입력 해 주세요." required></textarea>
							</div>
						
						</div>
						<!-- 개인정보영역 -->
						<div class="input_agreement">
							<h6 class="label">
								개인정보수집 및 이용 동의</h6>
							<label class="agree_area" style="width: 780px;">
								<input class="privacy_check" type="checkbox" name="privacy" value="1" required> 작성해주신 이메일, 전화번호는 문의내용 확인 및 답변처리
								용도로 쓰이며 3년간 보관 후 파기합니다.
								 <span class="check_box"></span>
							</label>
						</div>
						<p class="info_message">
						이 사이트는 reCAPTCHA에 의해 보호되며 Google
						 <a	href="https://policies.google.com/privacy" target="_blank" class="info_message">개인정보 취급 방침</a> 및 
						 <a href="https://policies.google.com/terms" target="_blank" class="info_message">서비스 약관</a>이 적용됩니다.
						</p>
					</div>
					<br>
					<br>
					<!-- 버튼영역 -->
					<div class="btn_area">
						<input type="submit" class="btn btn-outline-primary" value="등록"></input>
						<a  class="btn btn-outline-primary" style="line-height: 2;" href="${root}/community/qna/list">취소</a>
					</div>
					
				
				</div>
						
					</form>
				</div>
			
			</div>
			
			</div>

			
			


	<!-- footer -->
	<div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</div>
</body>
</html>