<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰수정 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<link rel="stylesheet" href="${root}/resources/css/community/review/edit.css">
</head>
<body>

	<!-- 안내 -->
	<div id="wrap">
	  <div class="p-4 p-md-5 mb-4 rounded text-bg-white back-area">
	    <h1 class="text-center" id="title">세미나 리뷰 수정</h1>
	    <h5 class="text-center">작성하신 리뷰 내용을 수정해주세요.</h5>
	  </div>
	</div>
	
	
	<!-- 타이틀영역 -->
	<div>
	  <div id="review-write-area">
	    <div id="top-area">
	      REVIEW EDIT
	    </div>
	    <div id="line"></div>
	
	    <div id="seminar">
	      [세미나] <span> 나에게 딱 맞는 창업아이템 온라인 특강</span>
	    </div>
	
	      <form action="" method="post">
	        <table>
	          <tr>
	            <th class="text-center">제목</th>
	            <td><input type="text" name="title" class="form-control" value="이런 세미나가 자주 열렸으면 좋겠습니다. 추천합니다!" required></td>
	          </tr>
	          <tr>
	            <th class="text-center">평점</th>
	            <td>
	              <input type="radio" class="form-check-input" name="point" id="point0">
	              <label for="point0">★★★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point1" checked>
	              <label for="point1">★★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point2">
	              <label for="point2">★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point3">
	              <label for="point3">★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point4">
	              <label for="point4">★</label>
	            </td>
	          </tr>
	          <tr>
	            <th colspan="2" class="text-content" required>내용</th>
	          </tr>
	          <tr>
	            <th colspan="2">
	              <textarea style="resize: none;" name="content" class="form-control" id="" cols="140" rows="15">
창업아이템 세미나에 참석하고 나서, 다양한 창업 아이디어와 경험을 공유받았습니다.
세미나에서는 성공적인 창업을 위한 기본 원칙과 함께, 창업을 위한 아이디어 도출 
방법, 마케팅 전략 등에 대한 내용이 다루어졌습니다.

특히, 다른 참가자들과 함께 공유한 경험들은 매우 유익했습니다.
세미나를 통해 새로운 아이디어를 발견하고, 그 아이디어를 발전시키는 방법들을 
배울 수 있었습니다. 세미나의 강사분들은 창업 경험이 많으셨기 때문에, 
우리에게 실제적인 조언과 해결책을 제시해주셨습니다.

또한, 세미나는 다양한 팀 프로젝트 및 토론 활동을 포함하여 진행되었습니다. 
이를 통해 참가자들은 아이디어를 더욱 발전시키기 위한 협업의 중요성과, 
다른 의견을 수렴하고 존중하는 방법을 배웠습니다.

마지막으로, 이번 창업아이템 세미나는 나에게 큰 도전과 기회를 제공해주었습니다. 세미나를 통해 배운 내용을 실제로 적용하여, 나의 창업 아이디어를 발전시키는 데 큰 도움이 되었습니다. 나는 이번 세미나를 통해, 나의 창업 경험을 더욱 확장하고, 창업에 대한 열정을 더욱 강화시키게 되었습니다.
	              
	              </textarea>
	            </th>
	          </tr>
	          <tr>
	            <th class="text-center">첨부파일</th>
	            <td><input type="file" name="title" class="form-control" accept=".png,.jpg"></td>
	          </tr>
	        </table>
	        <div id="btn-area">
	          <button type="button" type="submit" class="btn btn-primary">수정</button>
	          <button type="button" class="btn btn-secondary cancle">취소</button>
	        </div>
	      </form>
	  </div>
	
	</div>
		
	
	
	
	
	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>