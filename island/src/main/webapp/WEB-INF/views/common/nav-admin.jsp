<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<!--왼쪽 nav -->
				<div class="nav">
					<div class="sb-sidenav-menu-heading">관리자</div>
					<a class="nav-link" href="${root}/admin/create">계정 생성</a> <a
						class="nav-link" href="${root}/admin/authorize">권한 설정</a> <a
						class="nav-link" href="${root}/admin/delete">계정 삭제</a>
					<div class="sb-sidenav-menu-heading">신고 관리</div>
					<a class="nav-link" href="${root}/admin/report/member">회원</a> <a
						class="nav-link" href="${root}/admin/report/group">소모임</a> <a
						class="nav-link" href="${root}/admin/report/seminar">세미나</a> <a
						class="nav-link" href="${root}/admin/report/review">세미나 리뷰</a>
					<div class="sb-sidenav-menu-heading">게시판</div>
					<a class="nav-link" href="${root}/admin/notice/list">공지사항</a> <a
						class="nav-link" href="${root}/admin/faq/list">FAQ</a> <a
						class="nav-link" href="${root}/admin/qnaan/list">Q&A</a> <a
						class="nav-link" href="${root}/admin/statistics">통계조회</a>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>