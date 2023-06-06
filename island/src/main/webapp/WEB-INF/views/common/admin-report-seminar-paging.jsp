<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 세미나 신고 관련 페이징</title>
<style>
#page-area {
	
}
</style>
</head>
<body>
	<div id="page-area">
		<c:if test="${pv.currentPage > 1}">
			<a class="btn btn-secondary btn-sm"
				href="${root}/admin/report/seminar?page=${pv.currentPage-1}&searchType=${searchMap.searchType}&searchValue=${searchMap.searchValue}">이전</a>
		</c:if>
		<c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1"
			var="i">
			<c:if test="${pv.currentPage != i}">
				<a class="btn btn-secondary btn-sm"
					href="${root}/admin/report/seminar?page=${i}&searchType=${searchMap.searchType}&searchValue=${searchMap.searchValue}">${i}</a>
			</c:if>
			<c:if test="${pv.currentPage == i}">
				<a class="btn btn-secondary btn-sm">${i}</a>
			</c:if>
		</c:forEach>
		<c:if test="${pv.currentPage < pv.maxPage}">
			<a class="btn btn-secondary btn-sm"
				href="${root}/admin/report/seminar?page=${pv.currentPage+1}&searchType=${searchMap.searchType}&searchValue=${searchMap.searchValue}">다음</a>
		</c:if>
	</div>
</body>
</html>