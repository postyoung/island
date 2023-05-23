<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1 공지사항 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-member.jsp"%>

<!-- css연결 -->

<link rel="stylesheet" href="${root}/resources/css/community/notice/Noticedetail.css">
	

</head>
<body>
	    
    <!-- 고객센터 전체 -->
    <!-- 메뉴바 -->
    <div id="wrap">
		<div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
			<h1 class="text-center" id="title">공지사항</h1>
			<h5 class="text-center">아일랜드에서 알려드립니다.</h5>
		</div>
		
		<!-- 고객센터 메뉴바 -->
	   <%@ include file="/WEB-INF/views/community/commu-nav.jsp" %>
			<!-- 공지사항 양식  -->
			<div id="wrap">
				
			<div class="inquiryWriteform" style="margin-left: 225px;" action="${root}/admin/inquiry/list" method="post">
				<div class="container">
					<h2 class="title">공지사항</h2>
					<br>
						<div class="form-group">
						<div class="row_wrap">
						<div class="input_title">
							<input type="hidden" name="no" value="${nvo.no}">
							
							<div class="form-group">
								<label  for="name">작성자</label>
								<div class="col-lg-4">
									<div  class="form-control" name="name" id="name">${nvo.writerName}</div>
								</div>
							</div>
						<div class="form-group">
							<label for="title">제목</label>
							<div>
								<div class="form-control" name="title" id="title_input">${nvo.title}</div>
							</div>
						</div>
						</div>
						<div class="form-group">
	
							<label for="content">내용</label>
	
							<div>
								<div class="form-control" name="content" id="content">${nvo.content}</div>
							</div>
						
						</div>
						
					
						
				
					<br>
					<br>
						<!-- 버튼영역 --> 
					<div class="btn_area">
						<a  class="btn btn-primary" style="line-height: 2;" href="${root}/community/notice/list">목록</a>
					</div>
					
					
				
					
				</div>
				</div>
						
			</div>
			
		</div>
			
	</div>


			
			


	<!-- footer -->
	<div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</div>
</body>
</html>