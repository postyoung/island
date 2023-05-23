<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 페이징 -->
<div class="paging-area">

  <nav aria-label="..." >
    <ul class="pagination">

      <li class="page-item ${pv.currentPage == 1 ? 'disabled' : ''}">
        <a class="page-link" href="${root}/community/notice/list?page=${pv.currentPage-1}">이전</a>
      </li>
    
      <c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1" var="i">
        <li class="page-item ${pv.currentPage == i ? 'active' : ''}">
          <a class="page-link" href="${root}/community/notice/list?page=${i}">${i}</a>
        </li>
      </c:forEach>
    
      <li class="page-item ${pv.currentPage == pv.endPage ? 'disabled' : ''}">
        <a class="page-link" href="${root}/community/notice/list?page=${pv.currentPage+1}">다음</a>
      </li>
    
    </ul>
    
  </nav>

</div>


</body>
</html>
