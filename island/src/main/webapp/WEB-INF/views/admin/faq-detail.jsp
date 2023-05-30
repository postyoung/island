<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND FAQ 상세페이지 | ISLAND</title>


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
			<!-- main-->
			<!-- 문의하기 양식  -->
			<div id="wrap">
				<main>
					<div class="shadow p-3 mb-5 bg-body rounded">
						<h2 align="center" style="margin-top: 10px;" >FAQ 상세페이지</h2>
						<div class="view-area act">
							<div class="faq-area">
								<table id="tableTitle" class="table table-bordered table-hover">
									<tr>
										<td>번호</td>
										<td>${fvo.no}</td>
									</tr>
									<tr>
										<td>분류</td>
										<td>${fvo.categoryName}</td>
									</tr>
									<tr>
										<td>제목</td>
										<td>${fvo.title}</td>
									</tr>
									<tr>
										<td>작성일시</td>
										<td>${fvo.enrollDate}</td>
									</tr>
									<tr>
										<td>내용</td>
										<td style="height: 300px;">${fvo.content}</td>
									</tr>
								</table>
								<c:if test="${loginAdmin.id eq 'admin'}">
										<div id="faq-btn-area" style="text-align: right; margin-top: 10px;">
											<button class="btn btn-md btn-warning" onclick="toggleActive();">수정</button>
											<button class="btn btn-danger btn-md" style="margin-right: 5px;" onclick=" location.href='${root}/admin/faq/delete?num=${fvo.no}'" >삭제</button>
											<button class="btn btn-info btn-md" style="margin-right: 5px;" onclick=" location.href='${root}/admin/faq/list'" >취소</button>
										</div>
								</c:if>
							</div>
						</div>
						<div class="form-area">
							<form action="${root}/admin/faq/edit" method="POST">
								<input type="hidden" name="no" value="${fvo.no}">
								<div class="faq-area">
									<table id="table-Title" class="table table-bordered table">
										<tbody>
											<tr>
												<td>번호</td>
												<td>${fvo.no}</td>
											</tr>
											<tr>
												<td>분류</td>
												<td>${fvo.categoryName}</td>
											</tr>
											<tr>
												<td>제목</td>
												<td><input id="form-title" type="text" value="${fvo.title}"></td>
											</tr>
											<tr>
												<td>작성일시</td>
												<td>${fvo.enrollDate}</td>
											</tr>
											<tr>
												<td>내용</td>
												<td><textarea id="form-content" style="height: 300px;" name="content"> ${fvo.content}</textarea></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div style="text-align: right;">
									<input class="btn btn-md btn-warning" type="submit" value="FAQ수정하기">
									<input class="btn btn-md btn-info"  type="button" value="목록"	onclick="location.href ='${root}/admin/faq/list'">
								</div>
							</form>
						</div>
					</div>
				</main>
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