<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>ISLAND 1:1문의 게시판 | ISLAND</title>    
     <%@include file="/WEB-INF/views/common/header-member.jsp" %>
        <!-- css연결 -->
    <link rel="stylesheet" href="${root}/resources/css/community/qna/QnAlist.css">
    
    
    </head>
    <body>
    
    <!-- 고객센터 전체 -->
    <!-- 메뉴바 -->
    <div id="wrap">
    <div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
        <h1 class="text-center" id="title">1:1 문의</h1>
        <h5 class="text-center">아일랜드에서 알려드립니다.</h5>
    </div>
    
    <!-- 고객센터 메뉴바 -->
   <%@ include file="/WEB-INF/views/community/commu-nav.jsp" %>
   
   <!-- 카테고리 드롭다운 -->
  <div class="search_cate_area">
   <select class="form-select" aria-label="Default select example">
    <option selected>카테고리</option>
    <option value="1">회원</option>
    <option value="2">소모임</option>
    <option value="3">세미나</option>
    <option value="3">결제/환불</option>
    <option value="3">기타</option>
  </select>

   
   <!-- 검색영역 -->
   	<div id="search-area">
	  <div>
	    <form action="" id="search">
	        <input type=text class="form-control search-box"  name="fd" placeholder="리뷰에 해당하는 세미나명을 검색어로 입력해주세요.">
	        <button type="submit" class="btn btn-dark search-btn">검색</button>
	    </form>
	  </div>
	</div>
	
</div>
    
    
    <div class="container notice-area">
      <table class="table table-hover table-bordered" style="text-align: center;">
        <thead>
          <tr class="table-light">
            <th>글번호</th>
            <th>제목</th>
            <th>카테고리</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <td>01</td>
            <td>아이디 찾기가 안돼요..</td>
            <td>소모임</td>
            <td>2021/03/21</td>
          </tr>
    
        </tbody>
      </table>
    </div>
  <form action="${root}/community/qna/write">
    <div>
      <input type="submit" class="btn btn-outline-primary" value="작성하기" style="margin-left: 79%;">
    </div>
  </form>

    
            <br><br>
                
          <!-- 페이징 -->
		<%@ include file="/WEB-INF/views/common/paging.jsp" %>
    
    
                
                
    
          </div>
        </div>
        <!-- 푸터영역 -->
      </div>
            <%@include file="/WEB-INF/views/common/footer.jsp" %>
    	
      </div>
    
    
    </body>
    </html>
    