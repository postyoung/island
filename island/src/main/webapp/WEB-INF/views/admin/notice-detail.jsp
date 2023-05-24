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
.shadow {
   width: 90%;
   height: 600px;
   margin: auto;
   margin-top: 100px;
}

#form-title, #form-content {
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

.act {
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
					<div class="shadow p-3 mb-5 bg-body rounded">
						<h2 align="center" style="margin-top: 20px;">공지사항 상세 및 수정 페이지</h2>
							<div class="view-area act">
								<div class="notice-area">
									<table id="tableTitle" class="table table-bordered table-hover">
										<tbody>
											<tr>
												<td>번호</td>
												<td>${vo.no}</td>
											</tr>
											<tr>
												<td>작성일자</td>
												<td>${vo.enrollDate}</td>
											</tr>
											<tr>
												<td>제목</td>
												<td>${vo.title}</td>
											</tr>
											<tr>
												<td>내용</td>
												<td style="height: 300px;">${vo.content}</td>
											</tr>
											
										</tbody>
									</table>
									<c:if test="${loginAdmin.id eq 'admin'}">
										<div id="notice-btn-area" style="text-align: right; margin-top: 10px;">
											<button class="btn btn-md btn-warning" onclick="toggleActive();">수정하기</button>
											<button class="btn btn-md btn-danger" onclick="location.href='${root}/admin/notice/delete?num=${vo.no}'">삭제하기</button>
											<button class="btn btn-md btn-info" onclick="location.href='${root}/admin/notice/list'">목록</button>
										</div>
									</c:if>
								</div>
							</div>

						<div class="form-area">
							<form action="${root}/admin/notice/edit" method="POST">
								<input type="hidden" name="no" value="${vo.no}">
								<div class="notice-area">
									<table id="tableTitle" class="table table-bordered table-hover">
										<tbody>
											<tr>
												<td>번호</td>
												<td>${vo.no}</td>
											</tr>
											<tr>
												<td>작성일자</td>
												<td>${vo.enrollDate}</td>
											</tr>
											<tr>
												<td>제목</td>
												<td><input id="form-title" type="text" name="title"	value="${vo.title}"></td>
											</tr>
											<tr>
												<td>내용</td>
												<td><textarea id="form-content" style="height: 300px;" name="content">${vo.content}</textarea></td>
											</tr>

										</tbody>
									</table>
								</div>
									<div style="text-align: right;">
										<input class="btn btn-md btn-warning" type="submit"	value="공지사항수정하기">
										<input class="btn btn-md btn-info" type="button" value="목록" onclick="location.href='${root}/admin/notice/list'">
									</div>
							</form>
						</div>
					</div>
				</main>
			</div>
		</div>
	</div>
</body>
</html>
<script>
	//수정하기 버튼 클릭 시 동작하는 내용
	function toggleActive() {
		
		const viewArea = document.querySelector(".view-area");
		const formArea = document.querySelector(".form-area");
		console.log(viewArea.classList);
		viewArea.classList.remove('act');
		formArea.classList.add('act');
	}
</script>

