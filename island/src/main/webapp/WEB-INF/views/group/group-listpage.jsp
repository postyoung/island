<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        <ul class="pagination" >
            <li class="page-item ${pageVo.currentPage == 1 ? "disabled" : ""}">
                <a class="page-link" href="${root}/group/list?page=${pageVo.currentPage - 1}">이전</a>
            </li>
            <c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">
                <c:if test="${i == pageVo.currentPage}">
                    <li class="page-item active"><a class="page-link" href="${root}/group/list?page=${i}">${i}</a></li>
                </c:if>
                <c:if test="${i != pageVo.currentPage}">
                    <li class="page-item" aria-current="page"><a class="page-link" href="${root}/group/list?page=${i}">${i}</a></li>
                </c:if>
            </c:forEach>
            <li class="page-item ${pageVo.currentPage == pageVo.maxPage ? "disabled" : ""}">
                <a class="page-link" href="${root}/group/list?page=${pageVo.currentPage + 1}">다음</a>
            </li>
        </ul>
    </nav>

</div>


</body>
</html>
