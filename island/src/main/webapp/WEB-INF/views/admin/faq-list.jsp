<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND FAQ | ISLAND</title>



<style>
#page-area {
	width: 600px;
	margin: auto;
	display: flex;
	justify-content: center;
	font-size: 20px;
}
/* 추가한 css */
div>h2 {
	line-height: 3.3;
	margin-top: 40px;
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
				<!-- faq 리스트 -->
				<form action="${root}/admin/faq/write" class="faqlistform">
					<div class="container">
						<h2 style="margin-left: 40px; margin-top: 40px;">자주하는 질문 FAQ</h2>
						<hr>
						<br> <br>
						<div id="write-btn-area">
							<button type="submit" class="btn btn-info btn-md"style="float: right; margin-right: 5px;">
								<a href="${root}/admin/faq/write"></a>등록</button>
						</div>
						<br> <br>
						<table class="table table-hover table-bordered"
							style="text-align: center;">
							<thead>
								<tr class="info">
									<td>글번호</td>
									<td>제목</td>
									<td>작성자</td>
									<td>작성일</td>
								</tr>
							</thead>
							<tbody>
								<tr> 
									<td>00</td>
									<td>회원가입의 조건이 있나요?</td>
									<td>관리자</td>
									<td>20210321</td>
								</tr>
								<tr>
									<td>01</td>
									<td>비밀번호를 잊어버렸습니다.</td>
									<td>관리자</td>
									<td>20220322</td>
								</tr>
								<tr>
									<td>02</td>
									<td>가입 아이디(이메일)을 잊어버렸습니다.</td>
									<td>관리자</td>
									<td>20220630</td>
								</tr>
								<tr>
									<td>03</td>
									<td>가입 이름, 아이디(이메일)를 변경하고 싶습니다.</td>
									<td>관리자</td>
									<td>20230101</td>
								</tr>
								<tr>
									<td>04</td>
									<td>회원정보 수정은 어디에서 하나요?</td>
									<td>관리자</td>
									<td>20220828</td>
								</tr>
								<tr>
									<td>05</td>
									<td>이메일 인증을 반드시 해야하나요?</td>
									<td>관리자</td>
									<td>20211001</td>
								</tr>

							</tbody>
						</table>




						<!-- 페이징처리 -->
						<br>

						<div id="page-area">
							<c:if test="${pv.currentPage > 1}">
								<a class="btn btn-primary btn-lg"
									href="${root}/faq/list?page=${pv.currentPage-1}">이전</a>
							</c:if>
							<c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1"
								var="i">
								<c:if test="${pv.currentPage != i}">
									<a class="btn btn-primary btn-lg"
										href="${root}/faq/list?page=${i}">${i}</a>
								</c:if>
								<c:if test="${pv.currentPage == i}">
									<a class="btn btn-secondary btn-lg">${i}</a>
								</c:if>
							</c:forEach>
							<c:if test="${pv.currentPage < pv.maxPage}">
								<a class="btn btn-primary btn-lg"
									href="${root}/faq/list?page=${pv.currentPage+1}">다음</a>
							</c:if>
						</div>
					</div>
				</from>
			</div>
		</div>
	
	
</body>
</html>