<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.pagination {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  
	}



</style>
</head>
<body>

<!-- 페이징 -->

<div class="paging-area">

  <nav aria-label="..." >
    <ul class="pagination" >
    
	    <c:if test="${pv.currentPage > 1}">
	      <li class="page-item">
	        <a class="page-link" href="${root}/admin/qnaan/list?page=${pv.currentPage-1}">이전</a>
	      </li>
	    </c:if>
			
		<c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1" var="i">
	      <li class="page-item">
	      	<a class="page-link" href="${root}/admin/qnaan/list?page=${i}">${i}</a>
	      </li>
		</c:forEach>	    
      
      	<c:if test="${pv.currentPage < pv.maxPage}">
	      <li class="page-item">
	        <a class="page-link" href="${root}/admin/anqan/list?page=${pv.currentPage+1}">다음</a>
	      </li>
      	</c:if>
  
    </ul>
  </nav>

</div>



</body>
</html>
