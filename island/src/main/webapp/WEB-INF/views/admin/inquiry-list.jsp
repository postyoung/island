<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1문의하기 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-member.jsp"%>
<link rel="stylesheet" href="${root}/resources/css/common/header-member.css">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>



<!-- 추가한 스크립트 -->

<style>
nav {
	background-color: white;
	font-size: 20px;
	width: 100%;
	height: 50px;
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	grid-template-rows: 1fr;
	place-items: center center;
}

nav a {
	text-decoration: none;
	color: black;
}

.search-wrap {
	text-align: right;
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
								<label for="search" class="blind"></label> <input type=text
									size=45 class="input-sm" id="fd" name="fd"
									placeholder="검색어를 입력해주세요.">
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
								<th width="5%" class="text-center">번호</th>
								<th width="35%" class="text-center">제목</th>
								<th width="15%" class="text-center">닉네임</th>
								<th width="17%" class="text-center">작성일</th>
								<th width="13%" class="text-center">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list }">
								<tr class="board_info">
									<td width="5%" class="text-center">${vo.no }</td>
									<td width="35%"><a
										href="../freeboard/detail.do?no=${vo.no }">${vo.subject }</a>
										&nbsp;&nbsp; <c:if test="${vo.rcount>0 }">
                               (${vo.rcount })
                             </c:if></td>

									<td width="15%" class="text-center">${vo.nick }</td>
									<td width="17%" class="text-center">${vo.dbday }</td>
									<td width="13%" class="text-center">${vo.hit }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<table>
						<tr>
							<td><c:if test="${sessionScope.id!=null }">
									<div class="wrap">
										<a href="../freeboard/insert.do" class="button">새글</a>
										<%--<a href="../main/main.do" class="button">홈</a> --%>
									</div>
								</c:if></td>

							<td class="text-right inline">
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<a
								href="../freeboard/list.do?&page=${curpage>1?curpage-1:curpage}"
								class="btn btn-sm btn-success">이전</a> ${curpage } page /
								${totalpage } pages <a
								href="../freeboard/list.do?&page=${curpage<totalpage?curpage+1:curpage}"
								class="btn btn-sm btn-success">다음</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
						
	</form>

	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>


</body>
</html>