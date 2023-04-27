<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 공지사항리스트 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-admin.jsp"%>
   
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet" 
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"	crossorigin="anonymous"></script>

<!-- 추가부트스트랩 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- css연결 -->
<link rel="stylesheet" href="${root}/resources/css/admin/notice/notice-list.css">

</head>
<style>
	
	
	</style>
<body>
	<!-- main -->
	<div id="wrap">
		<form action="" class="noticelistform">
			<div class="container">
				<h2>공지사항 리스트</h2>
				<!-- <%--
					List<Board> list= (List<Board>)request.getAttribute("list");
					EL : \${이름}
					JSTL : java 코드를 태그형식으로 만들어놓은 커스텀태그 라이브러리
				--%> -->

				<table class="table table-hover table-bordered">
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
							<td>[공지]개인정보</td>
							<td>관리자</td>
							<td>20210321</td>
						</tr>
						<tr>
							<td>01</td>
							<td>[공지] 근로자의 날</td>
							<td>관리자</td>
							<td>20220322</td>
						</tr>
						<tr>
							<td>02</td>
							<td>[공지]사무실이전으로 인한 일부 업무중단</td>
							<td>관리자</td>
							<td>20220630</td>
						</tr>
						<tr>
							<td>03</td>
							<td>[공지]시스템점검으로 인한 서비스이용불가안내</td>
							<td>관리자</td>
							<td>20230101</td>
						</tr>
						<tr>
							<td>04</td>
							<td>[공지]창립기념일 휴무안내</td>
							<td>관리자</td>
							<td>20220828</td>
						</tr>
						<tr>
							<td>05</td>
							<td>[공지][약관]개인정보취급방침에 변경에 따른 안내</td>
							<td>관리자</td>
							<td>20211001</td>
						</tr>
						<tr>
							<td>06</td>
							<td>[공지]모임신청 시 본인인증 필수 전환</td>
							<td>관리자</td>
							<td>20221103</td>
						</tr>
						
						
					<%-- 위에 테이블..수정할것
						<c:forEach items="${list}" var="board" varStatus="i">
							<tr>
								<td>${i.count}</td>
								<td><a href="boardSelect.do?idx=${board.idx}">${board.title}</a></td>
								<td>${board.writer}</td>
								<td>${board.indate}</td>
								<td>${board.count}</td>
							</tr>
						 </c:forEach>
 					--%>
 					
 					
					</tbody>
				</table>
				<div id="write-btn-area">
					
						<button type="submit" class="btn btn-info btn-lg" style="float: right;" ><a href="${root}/notice/write"></a>글쓰기</button>
					</a>
				</div>
					
					<br>
					
					<!-- 페이징처리 -->
					<br>
					
					<div id="page-area">
						<c:if test="${pv.currentPage > 1}">
							<a class="btn btn-primary btn-lg"
								href="${root}/notice/list?page=${pv.currentPage-1}">이전</a>
						</c:if>
						<c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1"
							var="i">
							<c:if test="${pv.currentPage != i}">
								<a class="btn btn-primary btn-lg"
									href="${root}/notice/list?page=${i}">${i}</a>
							</c:if>
							<c:if test="${pv.currentPage == i}">
								<a class="btn btn-secondary btn-lg">${i}</a>
							</c:if>
						</c:forEach>
						<c:if test="${pv.currentPage < pv.maxPage}">
							<a class="btn btn-primary btn-lg"
								href="${root}/notice/list?page=${pv.currentPage+1}">다음</a>
						</c:if>
					</div>
				
			</div>
	</div>



</body>
</html>