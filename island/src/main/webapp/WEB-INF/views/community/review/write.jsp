<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰작성 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<link rel="stylesheet" href="${root}/resources/css/community/review/write.css">
</head>
<body>
	
	<!-- 안내 -->
	<div id="wrap">
	  <div class="p-4 p-md-5 mb-4 rounded text-bg-white back-area">
	    <h1 class="text-center" id="title">세미나 리뷰 작성</h1>
	    <h5 class="text-center">참석한 세미나에 대한 소감을 작성해주세요.</h5>
	  </div>
	</div>
	
	
	<!-- 타이틀영역 -->
	<div>
	  <div id="review-write-area">
	    <div id="top-area">
	      REVIEW WRITE
	    </div>
	    <div id="line"></div>
	
	    <div id="seminar">
	      [세미나] <span> 나에게 딱 맞는 창업아이템 온라인 특강</span>
	    </div>
	
	      <form action="" method="post">
	        <table>
	          <tr>
	            <th class="text-center">제목</th>
	            <td><input type="text" name="title" class="form-control" required></td>
	          </tr>
	          <tr>
	            <th class="text-center">평점</th>
	            <td>
	              <input type="radio" class="form-check-input" name="point" id="point0">
	              <label for="point0">★★★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point1">
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
	              <textarea style="resize: none;" name="content" class="form-control" id="" cols="140" rows="15"></textarea>
	            </th>
	          </tr>
	          <tr>
	            <th class="text-center">첨부파일</th>
	            <td><input type="file" name="title" class="form-control" accept=".png,.jpg"></td>
	          </tr>
	        </table>
	        <div id="btn-area">
	          <button type="button" type="submit" class="btn btn-success">등록</button>
	          <button type="button" class="btn btn-secondary cancle">취소</button>
	        </div>
	      </form>
	  </div>
	
	</div>
	
	
	
	
	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>