<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-정보수정 | ISLAND</title>
<style>
#edit-submit {
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
					<h1 class="mt-4">관리자 정보 수정</h1>
					<div class="card col-sm-12 mt-4" id="loginBox">
						<div class="card-body col-sm-12 d-flex justify-content-center">
							<div
								class="col-sm-8 col-md-offset-3 d-flex justify-content-center">
								<form role="form" action="${root}/admin/edit" method="post">
									<input type="hidden" name="no" value="${loginAdmin.no}">
									<div class="form-group">
										<label for="inputName"><h4>관리자 이름</h4></label> <input
											type="text" class="form-control" id="inputName" name="name"
											value="${loginAdmin.name}" disabled>
									</div>
									<div class="form-group">
										<label for="InputId" class="mt-4"><h4>아이디</h4></label> <input
											type="text" class="form-control" id="InputId" name="id"
											placeholder="아이디를 입력해주세요"> <input type="button"
											class="btn btn-primary mt-4" value="아이디 중복 확인"
											onclick="checkDup();">
									</div>
									<div class="form-group">
										<label for="inputPassword" class="mt-4"><h4>비밀번호</h4></label>
										<input type="password" class="form-control" id="inputPassword"
											name="pwd" placeholder="비밀번호를 입력해주세요">
									</div>
									<div class="form-group">
										<label for="inputPasswordCheck" class="mt-4"><h4>비밀번호
												확인</h4></label> <input type="password" class="form-control"
											id="inputPasswordCheck" name="pwd2"
											placeholder="비밀번호 확인을 위해 다시 한번 입력 해 주세요">
									</div>
									<label for="radioBox" class="mt-4"><h4>권한 설정</h4></label> <br>
									<div class="form-check form-check-inline" id="radioBox">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="1"
											disabled> <label class="form-check-label"
											for="inlineRadio1">권한 레벨 : 1</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio2" value="2"
											disabled> <label class="form-check-label"
											for="inlineRadio2">권한 레벨 : 2</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio3" value="3"
											disabled> <label class="form-check-label"
											for="inlineRadio3">권한 레벨 : 3</label>
									</div>
									<div class="form-group text-center mt-4">
										<input type="submit" id="edit-submit" class="btn btn-primary"
											value="수정 완료" />
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
const checkAll = false;

const inputName = document.querySelector('#inputName');
const checkName = /^[가-힣]+$/;

inputName.addEventListener('input', () => {
  const name = inputName.value;
  if (!checkName.test(name)) {
    nameInput.setCustomValidity('한글로');
  } else {
    nameInput.setCustomValidity('');
  }
});

//아이디 중복 여부 확인
 function checkDup(){
	// const checkId = "^(?=.*[A-Z])(?=.*\\d)[A-Za-z\\d]{8,}$";
	const id = document.querySelector("input[name=id]").value;
    $.ajax({
        url : '/app/admin/id-check',
        type : 'POST',
        data : {
            'id' : id
        } ,
        success : function(data){
            if(data == 'notDup'){
                alert("사용 가능한 아이디 입니다.");
                checkAll = true;
            }else{
                alert("사용 불가한 아이디 입니다.");
                document.querySelector("input[name=id]").value = "";
            }
        } ,
        error : function(e) {
            console.log(e);
        } ,
    });
}

// 비밀번호 일치해야 제출 가능하게
function checkValidation(){
	// const checkPwd = "^(?=.*[!@#$%^&*()\\-_=+\\[{\\]}\\\\|;:'\",<.>/?])(?!.*[ㄱ-ㅎㅏ-ㅣ가-힣])[A-Za-z!@#$%^&*()\\-_=+\\[{\\]}\\\\|;:'\",<.>/?]{8,}$";
    if(!isPwdOk()){
        alert("비밀번호가 일치하지 않습니다.");
        document.querySelector("main input[name=pwd]").focus();
        return false;
    }
    return true;
}

function isPwdOk(){
    const pwd1 = document.querySelector("main input[name=pwd]").value;
    const pwd2 = document.querySelector("main input[name=pwd2]").value;

    if(pwd1 != pwd2) return false;
    return true;
}

if(checkAll > 0) {
	  const target = document.querySelector('#join-submit');
	  target.disabled = false;
}

const idBox = document.querySelector("main input[name=id]");

idBox.addEventListener('change' , checkIdChange);

function checkIdChange(){
	checkAll = false;
}
// const level = ${getAdmin.no};
const level = 2;
const authorize = document.querySelector("#inlineRadio2");
authorize.checked = true;

// const authorize = document.querySelector("#editBtn${getAdmin.no}");
authorize.attr("disabled", true);

</script>
</html>