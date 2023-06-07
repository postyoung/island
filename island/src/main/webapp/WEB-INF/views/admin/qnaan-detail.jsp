<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 1:1문의 상세페이지 | ISLAND</title>


<!-- 헤더랑 겹쳐서 별도 추가한 css -->
<style>
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
			<div id="wrap">
				<!-- 메뉴바 -->
				<main>
					<div class="shadow p-3 mb-5 bg-body rounded" style="height: 100%;">
								<h1 class="text-center">1 : 1 문의하기 상세페이지</h1>
						<!-- 문의하기 양식  -->
							<form class="qnaanDetailform" style="margin-left: 225px;" action="${root}/admin/qnaan/list" method="get">
								<div class="container">
									<h2>문의하기 상세페이지</h2>
									<br>
									<!-- 테이블양식 -->
									<div class="view-area act">
										<div class="Qnaan_area">
											<table id="tableTitle" class="table table-bordered table" >
												<tr>
													<td>분류</td>
													<td>${qnaan.categoryName}</td>
												</tr>
												<tr>
													<td>닉네임</td>
													<td>${qnaan.writerNo}</td>
												</tr>
												<tr>	
													<td>제목</td>
													<td>${qnaan.title}</td>
												</tr>
												<tr>
													<td width="200px;" height="200px;">내용</td>
													<td >${qnaan.content}</td>
												</tr>
												<tr>
														<td width="200px;" height="200px;">답변내용</td>
														<td>${qnaan.qnContent} </td>
													</tr>
											</table>
										</div>
									</div>
									<div class="form-area">
										<form action="${root}/admin/qnaan/edit" method="POST">
											<input type="hidden" name="no" value="${qnaanVo.no}">
											<div class="qnaan-area">
												<table id="tableAnswer" class="table table-bordered table">
													<tr>
														<td width="200px;" height="200px;">답변내용</td>
														<td>${qnaanVo.qnContent} </td>
													</tr>
												</table>
											</div>
										</form>
									</div>	
									<hr>
									
									<div id="btn1" class="col-sm-offset-2 col-lg-10" style="text-align: right; margin-bottom: 10px; width: 100%;">
										<button type="submit" class="btn btn-info btn-md" style="margin-right: 5px;">답변완료</button>
										<button class="btn btn-md btn-warning" onclick="toggleActive();">수정하기</button>
										<button class="btn btn-md btn-danger" onclick="location.href='${root}/admin/qnaan/delete?num=${qnaanvo.no}'">삭제하기</button>
										<button class="btn btn-md btn-info" onclick="location.href='${root}/admin/qnaan/list'">목록</button>
									</div>
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

<<script>

//수정하기 버튼 클릭 시 동작하는 내용
function toggleActive() {
	const viewArea = document.querySelector(".view-area");
	const formArea = document.querySelector(".form-area");
	console.log(viewArea.classList);
	viewArea.classList.remove('act');
	formArea.classList.add('act');
}
</script>
