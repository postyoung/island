<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰작성 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member-textarea.jsp" %>
	
	<!-- include libraries(jQuery, bootstrap) -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	
<link rel="stylesheet" href="${root}/resources/css/community/review/write.css">

<script>

$(document).ready(function() {
  $('#summernote').summernote({
    placeholder: '내용을 입력해주세요.',
        tabsize: 2,
        height: 500,
        width : 1080
  });

});
</script>
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
	
	      <form action="${root}/community/seminarReview/write" method="post" enctype="multipart/form-data">
	        <table>
	          <tr>
	            <th class="text-center">제목</th>
	            <td><input type="text" name="title" class="form-control" required></td>
	          </tr>
	          <tr>
	            <th class="text-center">평점</th>
	            <td>
	              <input type="radio" class="form-check-input" name="point" id="point0" value="★★★★★">
	              <label for="point0">★★★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point1" value="★★★★">
	              <label for="point1">★★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point2" value="★★★">
	              <label for="point2">★★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point3"  value="★★">
	              <label for="point3">★★</label>
	              <input type="radio" class="form-check-input bean" name="point" id="point4" value="★">
	              <label for="point4">★</label>
	            </td>
	          </tr>
	          <tr>
	            <th colspan="2" class="text-content" style="padding-left: 59px;">내용</th>
	          </tr>
	          <tr>
	            <th colspan="2">
	            	<textarea id="summernote" name="content"></textarea>
	              
	            </th>
	          </tr>
	          <tr>
	            <th class="text-center">썸네일</th>
	            <td><input type="file" name="thumbnailFile" class="form-control" accept=".png,.jpg,.jpeg"></td>
	          </tr>
	        </table>
	        <div id="btn-area">
	          <button type="submit" class="btn btn-success">등록</button>
	          <button type="button" class="btn btn-secondary cancle" onclick="location.href='${root}/mypage/list/enrollList/seminar'">취소</button>
	        </div>
	      </form>
	  </div>
	
	</div>
	
	
	
	
	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>