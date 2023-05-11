<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 자주묻는질문 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<link rel="stylesheet" href="${root}/resources/css/community/faq-list.css">
</head>
<body>
	
	<!-- 고객센터 전체 -->
	<!-- 메뉴바 -->
	<div id="wrap">
	<div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
	    <h1 class="text-center" id="title">자주하는질문</h1>
	    <h5 class="text-center">아일랜드 이용 중 불편했던 점이나 궁금한 점을 빠르게 안내드립니다.</h5>
	</div>
	
	<nav id="communication-menu">
	  <a href="${root}/community/notice/list">공지사항</a>
	  <a href="${root}/community/faq/list"><b>자주하는질문</b></a>
	  <a href="${root}/community/qna/list">1:1 문의하기</a>
	  <a href="${root}/community/seminarReview/list">세미나 리뷰</a>
	</nav>
	
	<!-- 카테고리 버튼 영역 -->
	<div id="faq-category-area">
	  <a href="#" class="category-box">회원</a> 
	  |<a href="#" class="category-box">모임</a> 
	  |<a href="#" class="category-box">세미나</a> 
	  |<a href="#" class="category-box" >결제/환불</a> 
	  |<a href="#" class="category-end-box">기타</a>
	</div>
	
	
	<!-- content -->
	<div id="layoutSidenav_content">
	  <div id="faq-area">
	    <!-- faq 리스트 -->
	    <div class="accordion accordion-flush" id="accordionFlushExample">
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingOne">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
	            aria-expanded="false" aria-controls="flush-collapseOne">
	            회원가입의 조건이 있나요?</button>
	        </h2>
	        <div id="flush-collapseOne" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingOne"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            이름과 이메일, 전화번호 입력만으로 간편하게 온오프믹스에 가입하실 수 있습니다.<br> 회원가입에 드는
	            비용 없이 만 14세 이상이라면 누구나 회원가입이 가능합니다.<br> <br>[회원가입 방법]<br>-
	            PC : 메인페이지 오른쪽 상단 → 회원가입 메뉴 선택<br>- 모바일 : 왼쪽 상단 메뉴 → 로그인 →
	            회원가입 메뉴 선택<br>- SNS : 로그인 페이지 → SNS 로그인 → 회원가입
	          </div>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingTwo">
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
	            aria-expanded="false" aria-controls="flush-collapseTwo">
	            비밀번호를 잊어버렸습니다.</button>
	        </h2>
	        <div id="flush-collapseTwo" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingTwo"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            비밀번호를 분실하신 경우 비밀번호 찾기를 통해 비밀번호를 재설정하실 수 있습니다.<br> <br>[PC
	            비밀번호 재설정 방법]<br>① 로그인 → 아이디/비밀번호 찾기 → 비밀번호 찾기<br>② 가입한
	            이메일 주소 입력 → 확인 버튼 클릭<br>③ 입력한 이메일로 비밀번호 재설정 안내 메일 발송<br>④
	            발송된 안내 메일 확인 → 새 비밀번호로 설정 → 변경된 비밀번호로 로그인<br> <br>[모바일
	            비밀번호 재설정 방법]<br>① 왼쪽 상단 메뉴 → 로그인 → 비밀번호 찾기<br>② 가입한
	            이메일 주소 입력→ 확인 버튼 클릭<br>③ 입력한 이메일로 비밀번호 재설정 안내 메일 발송<br>④
	            발송된 안내 메일 확인 → 새 비밀번호로 설정 → 변경된 비밀번호로 로그인<br> <br>※ 참고<br>-
	            비밀번호 재설정 안내 메일은 자동 발송되어 스팸메일함으로 분류될 수 있습니다.<br>- 비밀번호는
	            8~48자리의 영문, 숫자, 특수문자로 설정하실 수 있습니다.<br>- 비밀번호 재설정 안내 메일이 지속
	            수신되지 않는다면 '고객센터-문의하기'로 문의 바랍니다.
	          </div>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingThree">
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
	            aria-expanded="false" aria-controls="flush-collapseThree">
	            가입 아이디(이메일)를 잊어버렸습니다.</button>
	        </h2>
	        <div id="flush-collapseThree" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingThree"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            아이디(이메일)를 분실하신 경우 ‘아이디 찾기’에서 확인하실 수 있습니다.<br> <br>[PC에서
	            아이디 찾기 방법]<br>① 로그인 → 아이디/비밀번호 찾기 → 아이디 찾기<br>② 이름,
	            휴대전화 번호 입력→ 확인 버튼 클릭<br>③ 가입한 아이디(이메일) 확인 후 로그인<br> <br>[모바일
	            웹/앱에서 아이디 찾기 방법]<br>① 왼쪽 상단 메뉴 → 로그인 →아이디 찾기<br>② 이름,
	            휴대전화 번호 입력 → 확인 버튼 클릭<br>③ 가입한 아이디(이메일) 확인 후 로그인
	          </div>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingFour">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
	            aria-expanded="false" aria-controls="flush-collapseFour">
	            가입 이름, 아이디(이메일)를 변경하고 싶어요.</button>
	        </h2>
	        <div id="flush-collapseFour" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingFour"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            회원명과 아이디(이메일)는 주요 정보로 직접 변경이 불가합니다.<br>변경을 원하실 경우 아래 요청양식
	            기재 후 고객센터로 문의 바랍니다.<br> <br>[회원명, 아이디 변경 요청]<br>①
	            기존 아이디(이메일), 회원명, 휴대전화 번호 :<br>② 변경 희망 회원명 or 아이디(이메일) :<br>③
	            변경 요청 사유 (간략히) : <span style="color: rgb(65, 149, 245);">﻿<br>
	              <br></span>※ 참고<br>아이디 변경의 경우 이미 가입된 이메일로는 변경이 불가능합니다.<br>변경
	            신청 전 가입 여부를 확인하여 주시기 바랍니다.<br>☞
	            <!-- <a href="http://onoffmix.com/account/find" target="_self" style="color: rgb(65, 149, 245);">회원가입 여부 확인(PC)</a>
	                    <font color="#4195f5"><br></font>☞
	                    <a href="http://m.onoffmix.com/account/find/id" target="_self">
	                    <span style="background-color: rgb(119, 119, 119);"></span> -->
	            <span style="color: rgb(65, 149, 245);">회원가입 여부 확인(모바일) 
	          </div>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingFive">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
	            aria-expanded="false" aria-controls="flush-collapseFive">
	            회원정보 수정은 어디에서 하나요?</button>
	        </h2>
	        <div id="flush-collapseFive" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingFive"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            온오프믹스 회원이시라면 아래의 방법으로 회원정보 수정이 가능합니다.<br> <br>[회원정보 수정
	            방법]<br>- PC : 로그인 → 마이페이지 → 회원정보 수정 → 비밀번호 입력 → 회원정보 수정<br>-
	            모바일 : 왼쪽 상단 메뉴 → 로그인 → 내 정보 수정 → 비밀번호 입력 → 회원정보 수정<br> <br>※
	            참고<br>- 모바일에서는 기본정보만 수정이 가능하며 이외 회원정보는 PC에서 변경이 가능합니다.<br>-
	            이름, 이메일 주소는 수정이 불가능합니다.<br>- 등록한 정산정보는 변경이 불가능합니다.<br>
	            <div>- 'KaKao로 로그인'을 통해 가입한 경우 '비밀번호 찾기'로 비밀번호를 설정하신 후
	              회원정보 수정이 가능합니다.</div>
	
	          </div>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingSix">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
	            aria-expanded="false" aria-controls="flush-collapseSix">
	            이메일 인증을 반드시 해야 하나요?</button>
	        </h2>
	        <div id="flush-collapseSix" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingSix"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            이메일 인증은 필수 사항은 아닙니다만, 이메일 사용 여부 확인을 위한 절차입니다.<br>모임 관련
	            안내사항을 메일로 발송하고 있어 이메일 인증을 권장 드립니다.<br> <br>[이메일 인증 방법]<br>-
	            마이페이지 → 회원정보수정 → 이메일 인증하기
	          </div>
	          <div style="display: none;">이메일인증 아이디인증 email인증</div>
	          </span>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingSix">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
	            aria-expanded="false" aria-controls="flush-collapseSix">
	            아일랜드 회원가입 후 비회원으로 신천한 모임내역을 통합할 수 있나요?</button>
	        </h2>
	        <div id="flush-collapseSix" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingSix"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            이메일 인증은 필수 사항은 아닙니다만, 이메일 사용 여부 확인을 위한 절차입니다.<br>모임 관련
	            안내사항을 메일로 발송하고 있어 이메일 인증을 권장 드립니다.<br> <br>[이메일 인증 방법]<br>-
	            마이페이지 → 회원정보수정 → 이메일 인증하기
	          </div>
	          <div style="display: none;">이메일인증 아이디인증 email인증</div>
	          </span>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingSix">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
	            aria-expanded="false" aria-controls="flush-collapseSix">
	            신청한 모임 내역은 어디서 확인하나요?</button>
	        </h2>
	        <div id="flush-collapseSix" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingSix"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            이메일 인증은 필수 사항은 아닙니다만, 이메일 사용 여부 확인을 위한 절차입니다.<br>모임 관련
	            안내사항을 메일로 발송하고 있어 이메일 인증을 권장 드립니다.<br> <br>[이메일 인증 방법]<br>-
	            마이페이지 → 회원정보수정 → 이메일 인증하기
	          </div>
	          <div style="display: none;">이메일인증 아이디인증 email인증</div>
	          </span>
	        </div>
	      </div>
	      <div class="accordion-item">
	        <h2 class="accordion-header" id="flush-headingSix">
	
	          <button class="accordion-button collapsed" type="button"
	            data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
	            aria-expanded="false" aria-controls="flush-collapseSix">
	            회원탈퇴는 어떻게 하나요?</button>
	        </h2>
	        <div id="flush-collapseSix" class="accordion-collapse collapse"
	          aria-labelledby="flush-headingSix"
	          data-bs-parent="#accordionFlushExample">
	          <div class="accordion-body">
	            이메일 인증은 필수 사항은 아닙니다만, 이메일 사용 여부 확인을 위한 절차입니다.<br>모임 관련
	            안내사항을 메일로 발송하고 있어 이메일 인증을 권장 드립니다.<br> <br>[이메일 인증 방법]<br>-
	            마이페이지 → 회원정보수정 → 이메일 인증하기
	          </div>
	          <div style="display: none;">이메일인증 아이디인증 email인증</div>
	          </span>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>




	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/paging.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>