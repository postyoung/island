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
				<form action="${root}/admin/inquiry/detail" class="inquiryListform"	method="get">
					<div class="p-4 p-md-5 mb-4 rounded text-bg-white">
						<div class="col-md-0 px-0">
							<h1 class="text-center">1 : 1 문의하기</h1>
						</div>
					</div>
					<form action="" class="inquiry-list">
						<div class="container mt-5">
							<div class="btn-group" role="group">
								<select type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
									<option>전체</option>
									<option>답변대기</option>
									<option>답변완료</option>
								</select>
							</div>

							<br> <br>
							<div id="board-list">
								<div class="container">
									<table class="table" id="user-table">
										<thead>
											<tr>
												<td width="5%" class="text-center">분류</td>
												<td width="35%" class="text-center">제목</td>
												<td width="15%" class="text-center">닉네임</td>
												<td width="17%" class="text-center">작성일</td>
												<td width="17%" class="text-center">답변여부</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="text-center">회원</td>
												<td class="text-center" onclick=" location.href='http://127.0.0.1:8888/app/admin/inquiry/detail'">로그인되지 않습니다.</td>
												<td class="text-center">내가그린기린</td>
												<td class="text-center">20221007</td>
												<td class="text-center">답변대기</td>
											</tr>
											<tr>
												<td class="text-center">회원</td>
												<td class="text-center">마이페이지관련문의</td>
												<td class="text-center">매머드사이즈</td>
												<td class="text-center">20221012</td>
												<td class="text-center">답변완료</td>
											</tr>
											<tr>
												<td class="text-center">세미나</td>
												<td class="text-center">세미나가입문의</td>
												<td class="text-center">너도밥나무</td>
												<td class="text-center">20221112</td>
												<td class="text-center">답변대기</td>
											</tr>
											<tr>
												<td class="text-center">소모임</td>
												<td class="text-center">소모임기간문의</td>
												<td class="text-center">핑거족</td>
												<td class="text-center">20221122</td>
												<td class="text-center">답변완료</td>
											</tr>
											<tr>
												<td class="text-center">결제</td>
												<td class="text-center">결제에 오류가 납니다.</td>
												<td class="text-center">판다너구리</td>
												<td class="text-center">20221212</td>
												<td class="text-center">답변완료</td>
											</tr>

											<%-- <c:forEach var="vo" items="${list }">
											<tr class="board_info">
												<td width="5%" class="text-center">${vo.no }</td>
												<td width="35%"><a href="../freeboard/detail.do?no=${vo.no }">${vo.subject }</a>
													&nbsp;&nbsp;
													<c:if test="${vo.rcount>0 }">(${vo.rcount })</c:if></td>
			
												<td width="15%" class="text-center">${vo.nick }</td>
												<td width="17%" class="text-center">${vo.dbday }</td>
												<td width="13%" class="text-center">${vo.hit }</td>
											</tr>
										</c:forEach> --%>
										</tbody>
									</table>
									
									<!-- 버튼 잠시 주석처리..
									<div class="form-group">
										<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
											<button type="submit" class="btn btn-info btn-md" style="margin-right: 5px;">문의답변</button>

										</div>
									</div> -->
									
									
									<%-- <table>
										<tr>
											<td><c:if test="${sessionScope.id!=null }">
													<div class="wrap">
														<a href="${root}/inquiry/inquiry-write.jsp" class="button">새글</a>
														<a href="${root}/common/header-admin.jsp" class="button">홈</a>
													</div>
												</c:if></td>
											<br>
											<br>
											<div id="page-area" class="text-right inline" style="font-size: 20px;">
												<a href="../freeboard/list.do?&page=${curpage>1?curpage-1:curpage}" class="btn btn-lg btn-success"
													style="font-size: 18px; width: 74px; height: 48px;">이전</a>
												${curpage } page / ${totalpage } pages
												 <a href="../freeboard/list.do?&page=${curpage<totalpage?curpage+1:curpage}" class="btn btn-lg btn-success"
													style="font-size: 18px; width: 74px; height: 48px;">다음</a>
											</div>
											<br>
											<br>

										</tr>
									</table> --%>
								</div>
							</div>
						</div>
					</form>
				</form>
			</div>
		</div>
</body>
</html>