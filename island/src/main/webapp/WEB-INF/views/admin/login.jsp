<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}"
	scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="${root}/resources/css/common/header-admin.css"
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<title>ISLAND 관리자-로그인 | ISLAND</title>
<style>
main {
	margin: 200px;
}

#loginBtn {
	width: 100%;
}
</style>
</head>
<body class="bg-dark">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">ISLAND
										ADMINISTRATOR</h3>
								</div>
								<div class="card-body">
									<form action="${root}/admin/login" method="POST">
										<div class="form-floating mb-3">
											<input class="form-control" id="id" name="id" type="text"
												placeholder="아이디" /> <label for="id">아이디</label>
										</div>
										<div class="form-floating mb-3">
											<input class="form-control" id="pwd" name="pwd"
												type="password" placeholder="비밀번호" /> <label for="pwd">비밀번호</label>
										</div>
										<div
											class="d-flex align-items-center justify-content-center mt-4 mb-0">
											<input id="loginBtn" type="submit" value="로그인"
												class="btn btn-secondary">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>