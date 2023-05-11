<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>island</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
	<script defer src="${root}/resources/js/group/group-list.js"></script>
	<link rel="stylesheet" href="${root}/resources/css/group/group-list.css">
</head>
<body>
<main>
	<h1>소모임 목록</h1>
	<div class="search_form_top">
		<h3 class="sub_title">상세검색</h3>
	</div>
	<fieldset class="filter_area">
		<div class="btn_open" type="button">지역</div>
		<div class="dropdown-label">
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				<span class="dropbtn_icon"></span>
				<span class="dropbtn_content"></span>
				<span class="dropbtn_click" style="font-family: Material Icons; font-size : 16px; color : #3b3b3b; float:right;"
					  onclick="dropdown()">선택하기</span>
			</button>
			<div class="dropdown-content">
				<div class="fastfood" onclick="showMenu(this.innerText)">서울</div>
				<div class="fastfood" onclick="showMenu(this.innerText)">경기</div>
				<div class="fastfood" onclick="showMenu(this.innerText)">인천</div>
				<div class="fastfood" onclick="showMenu(this.innerText)">강원</div>
				<div class="fastfood" onclick="showMenu(this.innerText)">부산</div>
				<div class="fastfood" onclick="showMenu(this.innerText)">제주</div>
				<div class="fastfood" onclick="showMenu(this.innerText)">기타</div>
			</div>
		</div>
		<span class="check_value" title=""></span>

		<div class="check_area">
			<ul class="area_check">

				<!-- 지역 목록 -->

			</ul>
			<div class="button_area">
				<div class="btn_wrap">
					<button type="button" class="btn_check">적용</button>
				</div>
			</div>
		</div>
	</fieldset>
	<fieldset class="filter_event_date">
		<div id="eventDate" class="btn_open" type="date" value="모임기간">모임기간</div>
		<label for="date">날짜:</label>
		<input type="date" class="form-control" id="date" name="date">
	</fieldset>
	<fieldset class="search_area">
		<div class="gr-list-ct">
			<input required="required" type="text"> <span>상세검색</span> <i></i>
		</div>
		<button type="button" class="btn_keyword_search">검색</button>
	</fieldset>
	<div class="card_list">
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/274639/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/274620/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/275716/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/268393/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/267736/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/254150/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/251858/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/275031/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/275393/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<div class="card" style="width: 15rem;">
			<img src="https://cfile1.onoffmix.com/images/event/274137/s" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">모임 제목</h5>
				<p class="card-text">모임내용</p>
				<p class="card-text">작성날짜</p>
				<a href="${root}/group/detail" class="btn btn-danger">상세보기</a>
			</div>
		</div>
		<a href="${root}/group/create"><button type="button" class="btn_keyword_search" onclick="list()">개설하기</button></a>
	</div>
</main>
</body>
<%@ include file="/WEB-INF/views/common/paging.jsp" %>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

</html>