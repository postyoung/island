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

</head>
<body>
<div id="wrap">
    <form action="${root}/member/login" class="login_form" method="POST">
        <h1 class="title">로그인</h1>
        <fieldset class="area_required" style="padding-left: 17%;">
            <div>
                <div id="name" class="">
                    <input type="text" class="form-control" id="validationServer01" value="" required placeholder="아이디를 입력하세요">
                  </div>
                  
                  
                  <div id="id" style="width: 500px;">
                    <input type="password"  class="form-control" id="validationServer01" value="" required placeholder="비밀번호를 입력하세요">
                  </div>
                  

                      <ul class="check_area">
                          <li>
                              <input type="checkbox" id="save_id">
                              <label for="save_id" style="margin-right: 158px;">아이디 저장</label>
                            </li>
                            <li class="find">
                                <a href="${root}/mypage/find" style="margin-right: 10px;">아이디 / 비밀번호찾기</a>
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