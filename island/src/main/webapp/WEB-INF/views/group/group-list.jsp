<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>island</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<%@include file="/WEB-INF/views/common/header-member.jsp"%>

<style>
.card {
	width: 190px;
	height: 274px;
	background: white;
	padding: .4em;
	border-radius: 6px;
}

.card-image {
	background-color: rgb(236, 236, 236);
	width: 100%;
	height: 60%;
	border-radius: 6px 6px 0 0;
}

.card-image:hover {
	transform: scale(0.98);
}

.category {
	text-transform: uppercase;
	font-size: 0.7em;
	font-weight: 600;
	color: rgb(63, 121, 230);
	padding: 10px 7px 0;
}

.category:hover {
	cursor: pointer;
}

.heading {
	font-weight: 600;
	color: rgb(88, 87, 87);
	padding: 7px;
}

.heading:hover {
	cursor: pointer;
}

.author {
	color: gray;
	font-weight: 400;
	font-size: 11px;
	padding-top: 20px;
}

.name {
	font-weight: 600;
}

.name:hover {
	cursor: pointer;
}

.gr-list-ct {
	position: relative;
	width: 196px;
}

.gr-list-ct input {
	position: relative;
	width: 100%;
	padding: 20px 10px 10px;
	background: transparent;
	outline: none;
	box-shadow: none;
	border: none;
	color: #23242a;
	font-size: 1em;
	letter-spacing: 0.05em;
	transition: 0.5s;
	z-index: 10;
}

.gr-list-ct span {
	position: absolute;
	left: 0;
	padding: 20px 10px 10px;
	font-size: 1em;
	color: #8f8f8f;
	letter-spacing: 00.05em;
	transition: 0.5s;
	pointer-events: none;
}

.gr-list-ct input:valid ~span, .gr-list-ct input:focus ~span {
	color: gray;
	transform: translateX(-10px) translateY(-34px);
	font-size: 0, 75em;
}

.gr-list-ct i {
	position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 2px;
	background: gray;
	border-radius: 4px;
	transition: 0.5s;
	pointer-events: none;
	z-index: 9;
}

.gr-list-ct input:valid ~i, .gr-list-ct input:focus ~i {
	height: 44px;
}

button {
	width: 136px;
	height: 46px;
	background-color: gray;
	border: 1px solid black;
	border-radius: 6px;
	cursor: pointer;
	font-size: 17px;
	transition: .4s;
}

button:hover {
	box-shadow: 5px 6px 0px rgb(0, 0, 0);
}

main {
	padding-left: 250px;
	padding-right: 250px;
}

.card_list {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	grid-gap: 10px;
	padding: 10px;
}
</style>
</head>
<body>
	<main>
		<h1>소모임 목록</h1>
		<form class="detail_seach">
			<select name="job">
				<option value="">직업선택</option>
				<option value="학생">학생</option>
				<option value="회사원">회사원</option>
				<option value="기타">기타</option>
			</select>
			<section>
				<div class="gr-list-ct">
					<input required="required" type="text"> <span>상세검색</span> <i></i>
				</div>
				<button class="arc-btn-retro">검색하기</button>
			</section>
		</form>
		<div class="card_list">
			<div class="card">
				<div class="card-image">
					<img src="예시 이미지.jpeg" alt="">
				</div>
				<div class="category">모임제목</div>
				<div class="heading">
					모임내용
					<div class="author">
						작성날짜 <span class="name"></span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-image">
					<img src="예시 이미지.jpeg" alt="">
				</div>
				<div class="category">모임제목</div>
				<div class="heading">
					모임내용
					<div class="author">
						작성날짜 <span class="name"></span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-image">
					<img src="예시 이미지.jpeg" alt="">
				</div>
				<div class="category">모임제목</div>
				<div class="heading">
					모임내용
					<div class="author">
						작성날짜 <span class="name"></span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-image">
					<img src="예시 이미지.jpeg" alt="">
				</div>
				<div class="category">모임제목</div>
				<div class="heading">
					모임내용
					<div class="author">
						작성날짜 <span class="name"></span>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-image">
					<img src="예시 이미지.jpeg" alt="">
				</div>
				<div class="category">모임제목</div>
				<div class="heading">
					모임내용
					<div class="author">
						작성날짜 <span class="name"></span>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
<%@ include file="/WEB-INF/views/common/paging.jsp"%>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</html>