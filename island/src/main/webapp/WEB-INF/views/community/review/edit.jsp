<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰수정 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member-textarea.jsp" %>
	
	<!-- include libraries(jQuery, bootstrap) -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
	
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
	      [세미나] <span> ${srDetail.seminarName}</span>
	    </div>
	
	      <form action="${root}/community/seminarReview/edit" method="post" enctype="multipart/form-data">
	      	<input type="hidden" name="no" value="${srDetail.no}">
	        <table>
	          <tr>
	            <th class="text-center">제목</th>
	            <td><input type="text" name="title" class="form-control" value="${srDetail.title}" required></td>
	          </tr>
	          <tr>
	            <th class="text-center">평점</th>
		            <td>
		            	<c:set var="checkedStars" value="${fn:length(srDetail.point)}" />

							<input type="radio" class="form-check-input" value="★★★★★" name="point" id="point0" ${checkedStars == 5 ? "checked" : ""}>
							<label for="point0">★★★★★</label>
							
							<input type="radio" class="form-check-input bean" value="★★★★" name="point" id="point1" ${checkedStars == 4 ? "checked" : ""}>
							<label for="point1">★★★★</label>
							
							<input type="radio" class="form-check-input bean" value="★★★" name="point" id="point2" ${checkedStars == 3 ? "checked" : ""}>
							<label for="point2">★★★</label>
							
							<input type="radio" class="form-check-input bean" value="★★" name="point" id="point3" ${checkedStars == 2 ? "checked" : ""}>
							<label for="point3">★★</label>
							
							<input type="radio" class="form-check-input bean" value="★" name="point" id="point4" ${checkedStars == 1 ? "checked" : ""}>
							<label for="point4">★</label>
			         
		            </td>
	          </tr>
	          <tr>
	            <th colspan="2" class="text-content" required>내용</th>
	          </tr>
	          <tr>
	            <th colspan="2">
		            <textarea id="summernote" name="content">
		            	${srDetail.content }
		            </textarea>
	            </th>
	          </tr>
	          <tr>
	            <th class="text-center">썸네일</th>
	            <td><input type="file" name="thumbnailFile" class="form-control" accept=".png,.jpg" ></td>
	          </tr>
	        </table>
	        <div id="btn-area">
	          <button type="submit" type="submit" class="btn btn-primary">수정</button>
	          <button type="button" class="btn btn-secondary cancle" onclick="history.back();">취소</button>
	        </div>
	      </form>
	  </div>
	
	</div>
		
	
	
	
	
	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

<script>
$('#summernote').summernote({
	placeholder: '내용을 입력해주세요.',
	tabsize: 2,
	height: 500,
	width : 1080,
	focus : true,
	lang : 'ko-KR',	// 한글 설정
	callbacks: {	//여기 부분이 이미지를 첨부하는 부분
		onImageUpload : function(files) {
			 for (var i = files.length - 1; i >= 0; i--) {
				uploadSummernoteImageFile(files[i],this);
			 }
		},
		onPaste: function (e) {
			var clipboardData = e.originalEvent.clipboardData;
			if (clipboardData && clipboardData.items && clipboardData.items.length) {
				var item = clipboardData.items[0];
				if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
					e.preventDefault();
				}
			}
		}
	}
});


/**
* 이미지 파일 업로드
*/
function uploadSummernoteImageFile(file, editor) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "${root}/community/uploadSummernoteImageFile",
		contentType : false,
		processData : false,
		success : function(data) {
        	//항상 업로드된 파일의 url이 있어야 한다.
			//$('#summernote').summernote('insertImage', url, filename);
			$(editor).summernote('insertImage', data.url);
		}
	});
}


//이미지 드래그 앤 드랍
$("div.note-editable").on('drop',function(e){
    for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
    	uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
    }
   e.preventDefault();
})

</script>