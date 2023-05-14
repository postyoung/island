<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1 문의내용 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-member.jsp"%>

<!-- css연결 -->

<link rel="stylesheet" href="${root}/resources/css/community/qna/QnAdetail.css">


</head>
<body>
	    
    <!-- 고객센터 전체 -->
    <!-- 메뉴바 -->
    <div id="wrap">
		<div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
			<h1 class="text-center" id="title">1:1 문의내용</h1>
			<h5 class="text-center">아일랜드에서 알려드립니다.</h5>
		</div>
		
		<!-- 고객센터 메뉴바 -->
	   <%@ include file="/WEB-INF/views/community/commu-nav.jsp" %>
			<!-- 문의하기 양식  -->
			<div id="wrap">
				
			<form class="inquiryWriteform" style="margin-left: 225px;" action="${root}/community/qna/edit" method="post">
			
				<div class="container">
					<h2 class="title">문의내용</h2>
					<br>
					<form class="form-horizontal" >
						<div class="form-group">
						<div class="row_wrap">
						<div class="input_title">
							<!--  -->
							
									<input type="hidden" class="form-control" name="no" id="no"  required readonly value="${qvo.no}"> 
				
							<!--  -->
							<div class="form-group">
								<label  for="name">작성자</label>
								<div class="col-lg-4">
									<input type="text" class="form-control" name="nick" id="name"  required readonly value="${qvo.writerName}"> 
								</div>
							</div>

							<div class="form-group">
								<label for="phone">전화번호</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" name="phone" id="phone"  required readonly value="${qvo.writerPhone}">
								</div>
							</div>
							<div class="form-group">
								<label  for="email">이메일</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" name="email" id="email"  required readonly value="${qvo.writerEmail}@${qvo.writerEmail2}">
								</div>
							</div>
							 
							
							<!-- 카테고리 드롭다운 -->
							<div class="search_cate_area">

							<label for="title">제목</label>
							
							<select class="form-select" aria-label="Default select example" value="${qvo.categoryNo}" name="categoryNo">
							<option selected>카테고리</option>
							<option value="10">회원</option>
							<option value="20">소모임</option>
							<option value="30">세미나</option>
							<option value="40">결제/환불</option>
							<option value="50">기타</option>
						</select>
							<div class="col-lg-4">
								<input type="text" class="form-control" name="title" id="title_input" value="${qvo.title}" name="title">
							</div>
						</div>
						<div class="form-group">
	
							<label for="content">내용</label>
	
							<div>
								<textarea class="form-control" name="content" id="content" rows="16"  name="content">${qvo.content}</textarea>
							</div>
						
						</div>
						
					
						
					</div>
					<br>
					<br>
					<!-- 버튼영역 -->
					<form method="post">
					<div class="btn_area">
						<input type="submit"  class="btn btn-outline-primary" style="line-height: 2;" value="수정"></input>
						<a  class="btn btn-primary" style="line-height: 2;" href="${root}/community/qna/list">목록</a>
					</div>
					</form>
				
					
				
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