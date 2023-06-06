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
	
<c:if test="${not empty alertMsg}">
  	<script type="text/javascript">
	  alert('${sessionScope.alertMsg}');
  	</script>
  </c:if>
  
  <c:remove var="alertMsg" scope="session"/>

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
				
			<div class="inquiryWriteform" style="margin-left: 225px;" method="get">
				<div class="container">
					<h2 class="title">문의내용</h2>
					<br>
					
						<div class="form-group">
						<div class="row_wrap">
						<div class="input_title">

							<input type="hidden" name="no" value="${qvo.no}">
							
							
							<div class="form-group">
								<label  for="name">작성자</label>
								<div class="col-lg-4">
									<div  class="form-control" name="name" id="name">${qvo.writerName}</div>
								</div>
							</div>
							<div class="form-group">
								<label for="phone">전화번호</label>
								<div class="col-sm-4">
									<div  class="form-control" name="phone" id="phone">${qvo.writerPhone}</div>
								</div>
							</div>
							<div class="form-group">
								<label  for="email">이메일</label>
								<div class="col-sm-4">
									<div class="form-control" name="email" id="email">${qvo.writerEmail}@${qvo.writerEmail2}</div>
								</div>
							</div>

							
							 
							
							<!-- 카테고리 드롭다운 -->
							<div class="search_cate_area">

							<label for="title">제목</label>
							
							<div class="form-control" id="category" >${qvo.categoryName}</div>
							
							<div>
								<div class="form-control" name="title" id="title_input" >${qvo.title}</div>
							</div>
						</div>
						</div>
						<div class="form-group" style="margin-bottom: 10px;">
	
							<label for="content">내용</label>
	
							<div>
								<div class="form-control" name="content" id="content" >${qvo.content}</div>
							</div>
						
						</div>
						</div>

						<!-- 추가된 디테일 영역 -->

						
						
						<div class="search_cate_area">
					
							
						</div>
					</div >
					<hr>
					<c:forEach items="${answerList}" var="avo">
					<div class="form-group"  style="margin-top: 100px;">
						<label  for="name">관리자</label>
						<div class="col-lg-4">
							<div  class="form-control" name="name" id="name">${avo.adminWriter}</div>
						</div>
					</div>
					<div class="form-group">
						<label  for="name">답변날짜</label>
						<div class="col-lg-4">
							<div  class="form-control" name="name" id="name">${avo.enrollDate}</div>
						</div>
					</div>
						<div class="form-group">
	
							<label for="content">답변내용</label>
	
							<div>
								<div class="form-control" name="content" id="content" >${avo.content}</div>
							</div>
						
						</div>
						</div>
					</c:forEach>
						
																
						
					</div>
					<br>
					<br>
					<!-- 버튼영역 --> 
					<c:if test="${loginMember.no == qvo.writerNo}">
						<div class="btn_area">
						<a  class="btn btn-outline-primary" style="line-height: 2;" href="${root}/community/qna/edit?no=${qvo.no}">수정</a>
						<a  class="btn btn-outline-primary" style="line-height: 2;" href="${root}/community/qna/delete?no=${qvo.no}">삭제</a>
						<a  class="btn btn-primary" style="line-height: 2;" href="${root}/community/qna/list">목록</a>
					</div>
					</c:if>
					
					
					
				
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