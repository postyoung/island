<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 로그인 | ISLAND</title>
<%@include file="/WEB-INF/views/common/header-member.jsp" %>
<link rel="stylesheet" href="${root}/resources/css/member/login.css">

<c:if test="${not empty alertMsg}">
    <script type="text/javascript">
    alert('${sessionScope.alertMsg}');
    </script>
</c:if>

<c:remove var="alertMsg" scope="session"/>

</head>
<body>
<div id="wrap">
    <form action="${root}/member/login" class="login_form" method="POST">
        <h1 class="title">로그인</h1>
        <fieldset class="area_required" style="padding-left: 17%;">
            <div>
                <div id="name" class="">
                    <input type="text" name="id" class="form-control" id="validationServer01" value="${saved_id}" required placeholder="아이디를 입력하세요">
                  </div>
                  
                  
                  <div id="id" style="width: 500px;">
                    <input type="password" name="pwd"  class="form-control" id="validationServer01" value="" required placeholder="비밀번호를 입력하세요">
                  </div>
                  

                      <ul class="check_area">
                          <li>
                              <input type="checkbox" id="save_id" name="save_id" >
                              <label for="save_id" style="margin-right: 158px;">아이디 저장</label>
                            </li>
                            <li class="find">
                                <a href="${root}/mypage/find" style="margin-right: 10px;">아이디 / 비밀번호변경</a>
                            </li>
                            <li class="join">
                                <a href="${root}/member/join">회원가입</a>
                            </li>
                        </ul>

                
                
                

            </fieldset>
            <input type="submit" class="joinbtn_submit" value="로그인">
           
        </form>


    
</div>

</body>
</html>

<script>
    window.onload = function() {
        var savedIdCheckbox = document.querySelector("input[name=save_id]");
        var savedId = getCookie("saved_id");
        if (savedId !== "") {
            savedIdCheckbox.checked = true;
            // 아이디 필드에 저장된 아이디 값 설정
            document.querySelector("input[name=id]").value = savedId;
        
        }
    }

    // 쿠키 가져오기
    function getCookie(name) {
        var value = "; " + document.cookie;
        var parts = value.split("; " + name + "=");
        if (parts.length === 2) {
            return parts.pop().split(";").shift();
        }
        return "";
    }
</script>
