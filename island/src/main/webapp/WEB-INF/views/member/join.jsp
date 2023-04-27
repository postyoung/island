<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 회원가입 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/join.css">
	
</head>
<body>
    <div id="wrap">
        <form action="" class="join_form">
            <h1 class="title">회원가입</h1>
            <fieldset class="area_required" style="padding-left: 13%;">
                <legend class="sub_title">필수정보</legend>

                    <div id="name" class="">
                        <label for="">이름</label>
                        <input type="text" class="form-control" id="validationServer01" value="" required >
                      </div>
                      
                      
                      <div id="id" style="width: 500px;">
                        <label for="">아이디</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" value="" required>
                        <span><input type="submit" class="btn btn-light" value="중복확인" spellcheck="false"></span>
                      </div>
                    
                      <div id="pwd">
                        <label for="">비밀번호</label>
                        <input type="password" class="form-control is-valid" id="validationServer01" value="" required >
                      </div>

                      <div id="pwd2">
                        <label for="">비밀번호 확인</label>
                        <input type="password" class="form-control is-valid" id="validationServer01" value="" required>
                      </div>

                      <div id="nick">
                        <label for="">닉네임</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" value="" required >
                      </div>

                      <div id="phone">
                        <label for="">전화번호</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" value="" required >
                      </div>

                      <div id="id_num">
                        <label for="">주민번호</label>
                        <input type="text" class="form-control is-valid" id="idNumber01" value="" required style="width: 130px;">
                        -
                        <input type="password" class="form-control is-valid" id="idNumber02" value="" required style="width: 130px;">
                      </div>

                      <div id="email">
                        <label for="">이메일</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" value="" required style="width: 140px;">
                        <select class="form-select is-invalid" id="validationServer04" aria-describedby="validationServer04Feedback" style="width: 140px;">
                          <option selected disabled value="">email.com</option>
                          <option>naver.com</option>
                          <option>daum.net</option>
                          <option>google.com</option>
                          <option>kakao.com</option>
                        </select>
                      </div>

                      <div id="gender">
                        <label for="">성별</label>
                        <input type="radio" name="gender"><label for="">여성
                        <input type="radio" name="gender"><label for="">남성

                </fieldset>
                <fieldset class="area_plus" style="padding-left: 15%;">
                    <legend class="sub_title">추가정보</legend>
                    <div id="company" class="">
                        <label for="">소속</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" value="" style="width: 250px;">
                      </div>
                      <div id="like_place" class="">
                        <label for="">선호지역</label>
                        <select class="form-select is-invalid" id="validationServer04" aria-describedby="validationServer04Feedback">
                            <option selected disabled value="">지역</option>
                            <option>서울</option>
                            <option>경기</option>
                            <option>인천</option>
                            <option>강원</option>
                            <option>부산</option>
                            <option>제주</option>
                            <option>기타</option>
                          </select>
                          <div id="validationServer04Feedback" class="invalid-feedback">
                            선호지역을 선택하세요.
                          </div>
                      </div>
                      <div id="profile">
                        <label for="">프로필 사진</label>
                        <input type="file" name="profile" class="form-control" style="width: 430px;" >
                        </div>

                </fieldset>
                <fieldset class="area_agree">
                    <legend class="agree_title">이용약관 / 개인정보 수집 및 이용 동의</legend>
                    <div class="argument">
                      <div class="agree_box">
                      <div class="all_check_area">
                        <input type="checkbox" id="all" class="all_check" >
                        <label for="" style="font-size: 16px;">전체동의</label>
                        </div>
                        
                        <div>
                          <input type="checkbox" id="chk1" required>
                          <label >(필수) 만 14세 이상입니다.</label>

                        </div>

                        <div>
                          <input type="checkbox" id="chk2" required>
                          <label >(필수) 이용약관 동의</label>
                        </div>

                          <div>
                          <input type="checkbox" id="chk3" required>
                          <label>(필수) 개인정보 수집및 이용 동의</label>
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
                        <label>(선택) 이메일 수신</label>
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