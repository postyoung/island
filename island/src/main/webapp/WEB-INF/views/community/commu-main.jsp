<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 공지사항 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>

<link rel="stylesheet" href="${root}/resources/css/community/commu-main.css">
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
	
	
	<div class="container notice-area">
	  <table class="table table-hover table-bordered" style="text-align: center;">
	    <thead>
	      <tr class="table-light">
	        <th>글번호</th>
	        <th>제목</th>
	        <th>작성자</th>
	        <th>작성일</th>
	      </tr>
	    </thead>
	    <tbody class="table-group-divider">
			<c:forEach items="${nvoList}" var="nvo">
					<tr>
						<td>${nvo.no}</td>
						<td>${nvo.title}</td>
						<td>${nvo.writerName}</td>
						<td>${nvo.enrollDate}</td>
					</tr>
				</c:forEach>
		</table>
	</div>

        <br><br>
	



	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/notice-paging.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
</body>
</html>
<script>
	      //행 클릭했을 때 , 상세조회
		  const tbody = document.querySelector('table > tbody');
      console.log(tbody);
      tbody.addEventListener("click" , (event)=>{
      const no = event.target.parentNode.children[0].innerText;
        location.href = '${root}/community/notice/detail?no=' + no;
      });
    
</script>
