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
    
    <!-- js연결 -->
    <script src="${root}/resources/js/community/qna/qnalist.js" defer></script>

    <c:if test="${not empty alertMsg}">
  	<script type="text/javascript">
	  alert('${sessionScope.alertMsg}');
  	</script>
  </c:if>
  
  <c:remove var="alertMsg" scope="session"/>
    
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
   
   <form action="${root}/community/qna/list" id="search" method="get">
   <!-- 카테고리 드롭다운 -->
  <div class="search_cate_area">
   <select class="form-select" aria-label="Default select example" name="searchType">
      <option value="title">제목</option>
      <option value="content">내용</option>
      <option value="category">카테고리</option>
  </select>
  <select class="hide" aria-label="Default select example"  name="searchValue" id="select_area_cate">
    <c:forEach items="${cvoList}" var="cvo">
      <option value="${cvo.NO}">${cvo.NAME}</option>
	</c:forEach>

</select>
 
   

   
   <!-- 검색영역 -->
   	<div id="search-area">
	  <div>
	        <input type=text class="form-control search-box" value="${searchMap.searchValue}" name="searchValue" placeholder="검색어를 입력해주세요">
	        <button type="submit" class="btn btn-dark search-btn">검색</button>
        </div>
      </div>
      
    </div>
  </form>
    
    <main>

    <div class="container notice-area">
      <table class="table table-hover table-bordered" style="text-align: center;">
        <thead>
          <tr class="table-light">
            <th>글번호</th>
            <th>카테고리</th>
            <th>제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>답변여부</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
        	<c:forEach items="${qvoList}" var="qvo">
          <tr>
            <td>${qvo.no}</td>
            <td>${qvo.categoryName}</td>
            <td>${qvo.title}</td>
            <td>${qvo.writerName}</td>
            <td>${qvo.hit}</td>
            <td>${qvo.answerYn}</td>
          </tr>
        	</c:forEach>
    
        </tbody>
      </table>
    </div>
    <c:if test="${not empty loginMember}">
      <form action="${root}/community/qna/write">
        <div>
          <input type="submit" class="btn btn-outline-primary" value="작성하기" style="margin-left: 79%;">
        </div>
      </form>
  </c:if>
</main>

    
            <br><br>
                
          <!-- 페이징 -->
		<%@ include file="/WEB-INF/views/common/Qna-paging.jsp" %>
    
    
                
                
    
          </div>
        </div>
        <!-- 푸터영역 -->
      </div>
            <%@include file="/WEB-INF/views/common/footer.jsp" %>
    	
      </div>
    
    
    </body>
    </html>
    <script>
	
      // 변수 준비
      const searchTypeTag = document.querySelector('select[name="searchType"]');
      const svInput = document.querySelector('input[name="searchValue"]');
      const svSelect = document.querySelector('select[name="searchValue"]');
    
      //서치타입 초기값 셋팅
      function initSearchType(){
        const optionTag = document.querySelector('option[value="${searchMap.searchType}"]');
        if(optionTag != null){
          optionTag.selected = true;
        }
      }
      
      //서치밸류 형태 변경
      function toggleSearchValueTag(){
        if(searchTypeTag.value != 'category'){
          showNotCategory();
        }else{
          showCategory();
        }
      }
    
      //서치밸류 형태1
      function showNotCategory(){
        //인풋 태그가 보이게
        svInput.classList.remove('hide');
        svInput.name = 'searchValue';
        svSelect.classList.add('hide');
        svSelect.name = 'xxx';
        
        svInput.value = '';
      }
      
      //서치밸류 형태2
      function showCategory(){
        //셀렉트 태그가 보이게
        svInput.classList.add('hide');
        svInput.name = 'xxx';
        svSelect.classList.remove('hide');
        svSelect.name = 'searchValue';
      }
      
      //서치밸류 형태 초기셋팅
      function initSearchValueType(){
        if('${searchMap.searchType}' == 'category'){
          showCategory();
        }else{
          showNotCategory();
        }
      }
      
      //서치밸류 selected 셋팅
      function initSearchValueSelected(){
        const optionTag = document.querySelector('option[value="${searchMap.searchValue}"]');
        if(optionTag != null){
          optionTag.selected = true;
        }
      }
      
      //input태그 (서치밸류) 값 초기셋팅
      function initSearchValueInput(){
        svInput.value = '${searchMap.searchValue}';
      }
      
      initSearchValueSelected();
      initSearchType();
      initSearchValueType();
      initSearchValueInput();
      
      //이벤트 리스너 //서치밸류 형태 변경하는 이벤트 등록
      searchTypeTag.addEventListener('change' , toggleSearchValueTag);
      
      
      //행 클릭했을 때 , 상세조회
      const tbody = document.querySelector('table > tbody');
      console.log(tbody);
      tbody.addEventListener("click" , (event)=>{
      const no = event.target.parentNode.children[0].innerText;
        location.href = '${root}/community/qna/detail?no=' + no;
      });
    
      
    </script>
    