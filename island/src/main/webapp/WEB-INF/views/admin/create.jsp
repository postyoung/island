<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-계정생성 | ISLAND</title>
<style>
#join-submit {
	width: 100%
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
				<!-- 본인 작업 영역 -->
				<div class="container-fluid px-4">
					<h1 class="mt-4">관리자 계정 생성</h1>
					<div class="card col-sm-12 mt-4" id="loginBox">
						<div class="card-body col-sm-12 d-flex justify-content-center">
							<div
								class="col-sm-12 col-md-offset-3 d-flex justify-content-center">
								<form role="form" action="${root}/admin/create" method="post"
									onsubmit="return checkValidation();">
									<div class="form-group">
										<label for="inputName"><h4>관리자 이름</h4></label> <input
											type="text" class="form-control" name="name" id="inputName"
											placeholder="이름을 입력해 주세요">
									</div>
									<div class="form-group">
										<label for="InputId" class="mt-4"><h4>아이디</h4></label> <input
											type="text" class="form-control" name="id" id="InputId"
											placeholder="아이디를 입력해주세요"> <input type="button"
											class="btn btn-primary mt-4" value="아이디 중복 확인"
											onclick="checkDup();">
									</div>
									<div class="form-group">
										<label for="inputPassword" class="mt-4"><h4>비밀번호</h4></label>
										<input type="password" class="form-control" name="pwd"
											id="inputPassword" placeholder="비밀번호를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="inputPasswordCheck" class="mt-4"><h4>비밀번호
												확인</h4></label> <input type="password" class="form-control" name="pwd2"
											id="inputPasswordCheck"
											placeholder="비밀번호 확인을 위해 다시 한번 입력 해 주세요">
									</div>
									<label for="radioBox" class="mt-4"><h4>권한 설정</h4></label> <br>
									<div class="form-check form-check-inline" id="radioBox">
										<input class="form-check-input" type="radio" name="pmNo"
											id="inlineRadio1" value="1"> <label
											class="form-check-label" for="inlineRadio1">권한 레벨 : 1</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="pmNo"
											id="inlineRadio2" value="2"> <label
											class="form-check-label" for="inlineRadio2">권한 레벨 : 2</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="pmNo"
											id="inlineRadio3" value="3"> <label
											class="form-check-label" for="inlineRadio3">권한 레벨 : 3</label>
									</div>
									<div class="form-group text-center mt-4">
										<input type="submit" id="join-submit" value="계정 생성"
											class="btn btn-primary">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
<script>
	let isIdDupOk = false;
	//아이디 중복확인
	function checkDup() {
		const id = document.querySelector("input[name=id]").value;
		$.ajax({
			url : '/app/admin/id-check',
			type : 'POST',
			data : {
				'id' : id
			},
			success : function(data) {
				if (data == 'notDup') {
					isIdDupOk = true;
					alert("사용 가능한 아이디 입니다.");
				} else {
					alert("사용 불가한 아이디 입니다.");
				}
			},
			error : function(e) {
				console.log(e);
			},
		});
	}

	//비밀번호 일치해야 제출 가능하게
	function checkValidation() {
		if (!isIdDupOk) {
			alert("중복확인을 진행해주세요");
			return false;
		}

		if (!isPwdOk()) {
			alert("비밀번호가 일치하지 않습니다.");
			document.querySelector("input[name=pwd]").focus();
			return false;
		}
		return true;
	}

	function isPwdOk() {
		const pwd1 = document.querySelector("input[name=pwd]").value;
		const pwd2 = document.querySelector("input[name=pwd2]").value;

		if (pwd1 != pwd2)
			return false;
		return true;
	}

	//아이디 값이 변경되면, 중복확인 값 초기화시키기
	const idTag = document.querySelector("input[name=id]");
	idTag.addEventListener('change', checkIdChange);

	function checkIdChange() {
		isIdDupOk = false;
	}
</script>
</html>