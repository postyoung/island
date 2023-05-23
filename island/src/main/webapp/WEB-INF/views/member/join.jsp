<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 회원가입 | ISLAND</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <!-- 헤더연결 -->
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <!-- css연결 -->
    <link rel="stylesheet" href="${root}/resources/css/member/join.css">
    <!-- js연결 -->
    <script src="${root}/resources/js/member/join.js" defer></script>
	
</head>
<body>
    <div id="wrap">
        <form action="${root}/member/join" class="join_form" method="POST" enctype="multipart/form-data" onsubmit="return checkValidation();"> 
            <h1 class="title">회원가입</h1>
            <fieldset class="area_required" style="padding-left: 13%;">
                <legend class="sub_title">필수정보</legend>

                    <div id="name_area" class="">
                        <label for="">이름</label>
                        <input type="text" class="form-control" id="name" value="" required name="name">
                      </div>
                      
                      <div id="id_area" style="width: 500px;">
                        <label for="">아이디</label>
                        <input type="text" class="form-control" id="id" value="" required name="id">
                        <span><input type="button" class="btn btn-light" value="중복확인" spellcheck="false" onclick="checkDupId();"></span>
                        <div id="validationFeedback_Id" class="validationFeedback_Id">
                          최소 2 자 대문자,소문자,숫자,_ 만 사용하실 수 있습니다.
                        </div>
                      </div>
                    
                      <div id="pwd_area">
                        <label for="">비밀번호</label>
                        <input type="password" class="form-control" id="pwd" name="pwd" value="" required aria-describedby="validationServer04Feedback">
                      </div>
                      <div id="validationFeedback_Pwd" class="validationFeedback_Pwd">
                        최소 8 자 대문자,소문자,숫자,특수문자 각 하나이상을 포함하여 작성하시오.
                      </div>

                      <div id="pwd2_area">
                        <label for="">비밀번호 확인</label>
                        <input type="password" class="form-control" id="pwd2" value="" >
                      </div>

                      <div id="nick_area" style="width: 500px;">
                        <label for="">닉네임</label>
                        <input type="text" class="form-control" id="nick" value="" name="nick" >
                        <span><input type="button" class="btn btn-light" value="중복확인" spellcheck="false" onclick="checkDupNick();"></span>
                    </div>

                      <div id="phone_area">
                        <label for="">전화번호</label>
                        <input type="text" class="form-control" id="phone" name="phone" value="" required >
                        <div id="validationFeedback_Phone" class="validationFeedback_Phone" hidden>
                          전화번호 11자리를 입력하세요.
                        </div>
                      </div>

                      <div id="id_num_area">
                        <label for="">주민번호</label>
                        <input type="text" class="form-control" id="id_num" value="" name="resident" required style="width: 130px;">
                        -
                        <input type="password" class="form-control" id="id_num2" name="resident2" value="" required style="width: 130px;">
                      </div>

                      <div id="email_area">
                        <label for="">이메일</label>
                        <input type="text" class="form-control" id="email" name="email" required style="width: 140px;">
                        <select class="form-select is-invalid" id="email_address" name="email2" aria-describedby="validationServer04Feedback" style="width: 140px;" required>
                          <option selected disabled>email.com</option>
                          <option value="naver.com">naver.com</option>
                          <option value="daum.net">daum.net</option>
                          <option value="google.com">google.com</option>
                          <option value="kakao.com">kakao.com</option>
                        </select>
                      </div>

                      <div id="gender_area">
                        <label for="">성별</label>
                        <input type="radio" name="gender" value="F" id="F" class="gender"><label for="F">여성</label>
                        <input type="radio" name="gender" value="M" id="M" class="gender"><label for="M">남성</label>

                </fieldset>
                <fieldset class="area_plus" style="padding-left: 15%;">
                    <legend class="sub_title">추가정보</legend>
                    <div id="company" class="">
                        <label for="">소속</label>
                        <input type="text" class="form-control" id="attach" value="" style="width: 250px;" name="attach">
                      </div>
                      <div id="like_place" class="">
                        <label for="">선호지역</label>
                        <select class="form-select is-invalid" id="like_region" name="local" aria-describedby="validationServer04Feedback">
                            <option selected disabled value="">지역</option>
                            <option value="10">서울</option>
                            <option value="20">경기</option>
                            <option value="30">인천</option>
                            <option value="40">강원</option>
                            <option value="50">부산</option>
                            <option value="60">제주</option>
                            <option value="70">기타</option>
                          </select>
                          <div id="validationServer04Feedback" class="invalid-feedback">
                            선호지역을 선택하세요.
                          </div>
                      </div>
                      <div id="profile">
                        <label for="">프로필 사진</label>
                        <input type="file" name="profile" class="form-control" style="width: 430px;">
                        </div>

                </fieldset>
                <fieldset class="area_agree">
                    <legend class="agree_title">이용약관 / 개인정보 수집 및 이용 동의</legend>
                    <div class="argument">
                      <div class="agree_box">
                      <div class="all_check_area">
                        <input type="checkbox" id="all" class="all_check" >
                        <label for="all" style="font-size: 16px;">전체동의</label>
                        </div>
                        
                        <div>
                          <input type="checkbox" id="chk1" required>
                          <label for="chk1">(필수) 만 14세 이상입니다.</label>

                        </div>

                        <div>
                          <input type="checkbox" id="chk2" required>
                          <label for="chk2">(필수) 이용약관 동의</label>
                        </div>

                          <div>
                          <input type="checkbox" id="chk3" required>
                          <label for="chk3">(필수) 개인정보 수집및 이용 동의</label>
                        </div>
                          <div>
                          <dl>
                            <dt>개인정보 수집</dt>
                            <dd>
                            <div>
                              <span>목적</span>
                              이용자 식별 및 본인 여부 확인                     
                            </div>
                            <div>
                              <span>항목</span>
                              성명, 휴대전화, 이메일, 비밀번호
                            </div>
                            <div>
                              <span>보유기간</span>
                              회원 탈퇴 시 파기
                            </div>
                          </dd>                              
                        </dl>
                      </div>
                      <div class="agree_plus" style="padding-bottom: 10%;">
                        <input type="checkbox" id="chk4">
                        <label for="chk4">(선택) 이메일 수신</label>
                        <div></div>
                        <dl>
                          <dt>선택정보 수집</dt>
                          <dd>
                            <div>
                              <span>목적</span>
                              회사 광고 및 파트너 센터 서비스제공
                            </div>
                            <div>
                              <span>항목</span>
                              이름, 이메일
                            </div>
                            <div>
                              <span>보유기간</span>
                              수신동의 철회 또는 회원 탈퇴시 파기
                            </div>
                          </dd>
                        </dl>
                      </div>
                    </div>
                  </div>
              </fieldset>
              <input type="submit" class="joinbtn_submit" value="가입완료">
            </form>


        
    </div>
    
</body>
</html>
