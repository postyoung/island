<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 로그인 | ISLAND</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<%@include file="/WEB-INF/views/common/header-member.jsp" %>
<!-- css연결 -->
<link rel="stylesheet" href="${root}/resources/css/member/login.css">
<!-- js연결 -->
<script src="${root}/resources/js/member/passwordEdit.js" defer></script>

<c:if test="${not empty alertMsg}">
    <script type="text/javascript">
        alert('${sessionScope.alertMsg}');
    </script>
</c:if>

<c:remove var="alertMsg" scope="session"/>

</head>
<body>
    <div id="wrap">
        <form action="${root}/mypage/passwordEdit" class="login_form" method="POST">
            <h1 class="title">비밀번호 변경</h1>
            <fieldset class="area_required" style="padding-left: 17%;">
                <div>
                    <div>
                        <input type="password" name="pwd" class="form-control" id="pwdField" required placeholder="비밀번호를 입력하세요">
                        <div id="validationFeedback_Pwd" class="invalid-feedback" style="color: red; font-size: 14px;">최소 8 자 대문자, 소문자, 숫자, 특수문자 각 하나 이상을 포함하여 <br>작성하십시오.</div>
                    </div>
                    <br>
                    <div>
                        <input type="password" name="pwd2" class="form-control" id="pwd2Field" required placeholder="비밀번호 확인">
                        <div id="pwdMatchMsg" style="display: none;">비밀번호가 일치하지 않습니다.</div>
                    </div>
                    <ul class="check_area">
                        <li>
                            <label for="save_id" style="margin-right: 280px;"></label>
                        </li>
                        <li class="find">
                            <a href="${root}/mypage/find" style="margin-right: 10px;">아이디찾기</a>
                        </li>
                        <li class="join">
                            <a href="${root}/member/join">회원가입</a>
                        </li>
                    </ul>
                </fieldset>
                <input type="submit" class="joinbtn_submit" value="확인" id="submitButton">
            </form>
        </div>
    </body>
    </html>
    