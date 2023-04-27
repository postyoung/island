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
	#page-area{
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
		<a href="${root}/notice/list">고객센터</a>
		<a href="${root}/faq/list">자주하는질문</a>
		<a href="${root}/notice/list">공지사항</a>
		<a href="${root}/inquiry/list">문의하기</a>
	</nav>
	<hr>

	<form action=""class="inquiry-list">
		<div class="container mt-5">

			<div id="board-search">
				<div class="container">
					<div class="search-window">
						<form action="">
							<div class="search-wrap">
								<label for="search" class="blind"></label>
								 <input type=text size=45 class="input-lg" id="fd" name="fd" placeholder="검색어를 입력해주세요.">
								<button type="submit" class="btn btn-dark">검색</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div id="board-list">
				<div class="container">
					<table class="table" id="user-table">
						<thead>
							<tr>
								<td width="5%" class="text-center">번호</td>
								<td width="35%" class="text-center">제목</td>
								<td width="15%" class="text-center">닉네임</td>
								<td width="17%" class="text-center">작성일</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">00</td>
								<td class="text-center">로그인</td>
								<td class="text-center">관리자</td>
								<td class="text-center">20221007</td>
							</tr>
							<tr>
								<td class="text-center">01</td>
								<td class="text-center">마이페이지</td>
								<td class="text-center">관리자</td>
								<td class="text-center">20221012</td>
							</tr>
							<tr>
								<td class="text-center">03</td>
								<td class="text-center">세미나</td>
								<td class="text-center">관리자</td>
								<td class="text-center">202211103</td>
							</tr>
							<tr>
								<td class="text-center">04</td>
								<td class="text-center">소모임</td>
								<td class="text-center">관리자</td>
								<td class="text-center">20221120</td>
							</tr>
							<tr>
								<td class="text-center">05</td>
								<td class="text-center">신고</td>
								<td class="text-center">관리자</td>
								<td class="text-center">20221230</td>
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

					<table>
						<tr>
							<td>
								<c:if test="${sessionScope.id!=null }">
									<div class="wrap">
										<a href="${root}/inquiry/inquiry-write.jsp" class="button">새글</a>
										<a href="${root}/common/header-admin.jsp" class="button">홈</a>
									</div>
								</c:if>
							</td>
							<br><br>
							<div id="page-area" class="text-right inline" style="font-size: 20px;">
								<a href="../freeboard/list.do?&page=${curpage>1?curpage-1:curpage}" class="btn btn-lg btn-success" style="font-size: 18px; width: 74px; height: 48px;" >이전</a>
								 ${curpage } page / ${totalpage } pages
								 <a href="../freeboard/list.do?&page=${curpage<totalpage?curpage+1:curpage}" class="btn btn-lg btn-success" style="font-size: 18px; width: 74px; height: 48px;">다음</a>
							</div>
							<br><br>
							
						</tr>
					</table>
				</div>
			</div>
		</div>
						
	</form>
	<br><br>
							
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>