<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 목록 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${root}/resources/css/seminar/list.css">
</head>
<body>


<!-- 컨텐츠 전체 -->
<div id="seminar-area">
  <div id="seminar-title">
    <h2><b>ISLAND</b> | 모집중인 세미나</h2>
  </div>
  <div id="seminar-serch-area">
    <form action="${root}/seminar/search" class="d-flex" role="search" id="search-box">
      <select class="form-select form-select-sm mb-3" aria-label=".form-select-lg example" id="select-size">
        <option selected>지역</option>
        <option value="1">서울</option>
        <option value="2">경기</option>
        <option value="3">인천</option>
        <option value="4">강원</option>
        <option value="5">부산</option>
        <option value="6">제주</option>
        <option value="7">기타</option>
      </select>
      <input class="form-control me-2" id="search-box-size" type="search" placeholder="검색할 내용을 입력하세요." aria-label="Search">
      <button class="btn btn-light " type="submit">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
          <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
        </svg>
      </button>
    </form>
  </div>

  <div id="select-menu">
    <a href="#" class="ms-3 me-3">최신순</a>
    |<a href="#" class="ms-3 me-3">인기순</a>
    |<a href="#" class="ms-3 me-3">종료된 세미나</a>
    <button type="button" class="btn btn-outline-secondary" onclick="location.href='${root}/seminar/create'">개설하기</button>
  </div>

  <!-- 세미나 카드 영역 -->
  <main>
    <div class="album py-5 ">
      <div class="container">
  
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        
		
		<c:forEach items="${svoList}" var="svo">
		
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/${svo.seminarThumbnail}" width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">${svo.likeCount}</span>
                <p class="card-text">
                  <b>${svo.name}</b>
                </p>
                <p class="card-text">
                  일정 : ${svo.startDay} /시간 : ${svo.seminarTime}
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.href='${root}/seminar/detail'">상세보기</button>
                  </div>
                  <small class="text-muted">${svo.payYn}</small>
                </div>
              </div>
            </div>
          </div>
		
		</c:forEach>
 
          
        </div>
      </div>
    </div>
  
  </main>

</div>	



	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/seminar-paging.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
	
</body>
</html>

<c:if test="${not empty alertMsg}">
	<script>
		alert("${alertMsg}");
	</script>
</c:if>
<c:remove var="alertMsg"/>

<script>

  var i = 0;
  $('i').on('click',function(){
      if(i==0){
          $(this).attr('class','bi-heart-fill');
          i++;
      }else if(i==1){
          $(this).attr('class','bi-heart');
          i--;
      }

  });

</script>