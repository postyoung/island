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
        <a class="page-link" href="${root}/community/qna/list?page=${pv.currentPage-1}&searchType=${searchMap.searchType}&searchValue=${searchMap.searchValue}">이전</a>
      </li>
    
      <c:forEach begin="${pv.startPage}" end="${pv.endPage}" step="1" var="i">
        <li class="page-item ${pv.currentPage == i ? 'active' : ''}">
          <a class="page-link" href="${root}/community/qna/list?page=${i}&searchType=${searchMap.searchType}&searchValue=${searchMap.searchValue}">${i}</a>
        </li>
      </c:forEach>
    
      <li class="page-item ${pv.currentPage == pv.endPage ? 'disabled' : ''}">
        <a class="page-link" href="${root}/community/qna/list?page=${pv.currentPage+1}&searchType=${searchMap.searchType}&searchValue=${searchMap.searchValue}">다음</a>
      </li>
    
    </ul>
    
  </nav>

</div>


</body>
</html>