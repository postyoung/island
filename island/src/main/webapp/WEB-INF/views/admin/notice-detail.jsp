<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 공지사항상세페이지 | ISLAND</title>

<style>
/* 추가한 css */
#notice-area {
	width: 800px;
	margin: auto;
	display: grid;
	grid-template-columns: repeat(2, 300px 300px);
	grid-template-rows: 30px 30px 300px;
}
#notice-area>div:nth-child(6),
#notice-area>div:last-child {
	grid-column: span 3;
}
#notice-area>div {
	border: 1px solid black;
}
#notice-area > div:not(:last-child)  {
	text-align: center;
}
	
#notice-area input, #notice-area textarea {
	width: 100%;
	height: 100%;
	resize: none;
}

.view-area {
	display: none;
}

.form-area {
	display: none;
}

.active {
	display: block;
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
			<!-- main -->
			<div id="wrap">
				<main>
					<h2 align="center" style="margin-top: 20px; margin-bottom: 20px;">공지사항 상세페이지</h2>
					<div class="view-area active" style="margin-left: -350px;">
						<div class="container">
							<div id="notice-area">
								<div>번호</div>
								<div>${vo.no}</div>
								<div>작성일자</div>
								<div>${vo.enrollDate}</div>
								<div>제목</div>
								<div>${vo.title}</div>
								<div>내용</div>
								<div>${vo.content}</div>
							</div>
						</div>
						
						<c:if test="${loginAdmin.id eq 'admin'}">
				
							<div id="notice-btn-area" style="text-align: right; margin-top: 10px;">
								<button class="btn btn-md btn-warning" onclick="toggleActive();">수정하기</button>
								<button class="btn btn-md btn-danger" onclick="location.href='${root}/admin/notice/delete?num=${vo.no}'">삭제하기</button>
							</div>
				
						</c:if>
					</div>																	
						<div class="form-area" >
							<form action="${root}/admin/notice/edit" method="POST">
								<input type="hidden" name="no" value="${vo.no}">
								<div id="notice-area" style="margin-left: 300px;">
									<div>번호</div>
									<div>${vo.no}</div>
									<div>작성일자</div>
									<div>${vo.enrollDate}</div>
									<div>제목</div>
									<div>
										<input type="text" name="title" value="${vo.title}">
									</div>
									<div>내용</div>
									<div>
										<textarea name="content">${vo.content}</textarea>
									</div>
								</div>
								<div style="text-align: right;">
									<input class="btn btn-md btn-warning" type="submit" value="공지사항수정하기">
								</div>
							</form>
						</div>
				</main>
			</div>
		</div>
	</div>
</body>
</html>
<script>
    //수정하기 버튼 클릭 시 동작하는 내용
    function toggleActive(){
        const viewArea = document.querySelector(".view-area");
        const formArea = document.querySelector(".form-area");
        viewArea.classList.remove('active');
        formArea.classList.add("active");
    }
</script>

