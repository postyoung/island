<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
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
						<!-- 문의하기 양식  -->
							<div class="container">
								<h2>문의하기 </h2>
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
										<c:if test="${loginAdmin.id eq 'admin'}">
											<div id="qnaan-btn-area" style="text-align: right; margin-top: 10px;">
												<button class="btn btn-md btn-info" onclick="toggleActive();">답변</button>
												<button class="btn btn-info btn-md" style="margin-right: 5px;" onclick=" location.href='${root}/admin/qnaan/list'" >취소</button>
											</div>
										</c:if>
									</div>
								</div>
								<div class="form-area">
									<form action="${root}/admin/qnaan/write" method="POST">
										<div class="qnaan-area">
											<table id="tableAnswer" class="table table-bordered table">
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
												<td><textarea id="form-content" style="height: 300px;" name="content"></textarea></td>
											</tr>
											</table>
										</div>
										<div style="text-align: right;">
											<input class="btn btn-md btn-warning" type="submit" value="문의답변작성">
											<input class="btn btn-md btn-info"  type="button" value="목록"	onclick="location.href ='${root}/admin/qnaan/list'">
										</div>
									</form>
								</div>	
								<hr>
							</div>
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
