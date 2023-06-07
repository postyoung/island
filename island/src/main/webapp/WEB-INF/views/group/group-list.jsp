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
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<main>
	<h1>소모임 목록</h1>
	<form name="search" method="get">
		<div class="search_form_top">
			<h3 class="sub_title">상세검색</h3>
		</div>
		<div class="dropdown-label">
		</div>
		<label>
			지역:
			<select name="localCategoryNo">
				<option value="">미선택</option>
				<c:forEach items="${localCategoryList}" var="localCategory">
					<option value="${localCategory.no}">${localCategory.name}</option>
				</c:forEach>
			</select>
		</label>
		<label>
			취미:
			<select name="groupCategoryNo">
				<option value="">미선택</option>
				<c:forEach items="${categoryList}" var="category">
					<option value="${category.no}">${category.category}</option>
				</c:forEach>
			</select>
		</label>
		<button type="submit" class="btn_keyword_search">검색</button>
	</form>
	<div class="card_list">
		<c:forEach items="${groupList}" var="group">
			<div class="card" style="width: 100%;">
				<img src="${group.thumbnailPath}" class="card-img-top" alt="..." width="238.750" height="204.814" />
				<div class="card-body">
					<h5 class="card-title">${group.name}</h5>
					<p class="card-text">소개: ${group.intro}</p>
					<p class="card-text">지역: ${group.localCategoryName}</p>
					<p class="card-text">카테고리: ${group.groupCategoryName}</p>
					<p class="card-text">${group.enrollDate}</p>
					<a href="${root}/group/detail?no=${group.no}" class="btn btn-danger">상세보기</a>
				</div>
			</div>
		</c:forEach>
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							...
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							<a href="${root}/group/create"><button type="button" class="btn btn-primary" >개설하기</button></a>
						</div>
					</div>
				</div>
			</div>


				<!-- Modal -->


		</div>
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
			개설하기
		</button>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						...
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
</body>
<%@ include file="/WEB-INF/views/group/group-listpage.jsp" %>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>

</html>