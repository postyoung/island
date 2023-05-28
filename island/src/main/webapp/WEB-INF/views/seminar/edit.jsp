<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 정보수정 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
	<!-- include libraries(jQuery, bootstrap) -->
	<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

	<!-- include summernote css/js -->
	<!-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script> -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	
<link rel="stylesheet" href="${root}/resources/css/seminar/edit.css">
<!-- <script>

$(document).ready(function() {
  $('#summernote').summernote({
    placeholder: '내용을 입력해주세요.',
        tabsize: 2,
        height: 500,
        width : 1300
  });

});
</script> -->

</head>
<body>

	<!-- 세미나 정보수정 영역 -->
  <div id="seminar-outer-area">

    <div id="seminar-create-area">
      <div id="seminar-create-title">
        <h2>세미나 수정</h2>
      </div>
      <div id="line"></div>
  
  
      <form action="${root}/seminar/edit" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="no" value="${svo.no}">
        <article id="photo-file-area">
          <div id="image_container" style="background-image:url('${root}/resources/img/seminar/upload/${svo.seminarThumbnail}'); background-size: 300px 300px;">
            <div id="image_container"></div>
          </div>
          <div class="mb-3">
            <input class="form-control" type="file" name="thumbnailFile" id="formFile" accept=".png,.jpg,.jpeg" onchange="setThumbnail(event);">
          </div>
        </article>
  
        <article id="default-info-area">
          <div class="info">기본정보</div><span class="essential">(필수)</span>
          <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label">세미나명</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="name" value="${svo.name}" id="inputEmail3" placeholder="세미나명을 입력해주세요."  maxlength="35">
            </div>
          </div>
          <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label">작성자 정보</label>
            <div class="col-sm-10">
              <table>
                <tr>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label">담당자</label></td>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label input-box">전화번호</label></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control readonly-box" id="name" value="${svo.writerNick}" readonly></td>
                  <td><input type="tel" class="form-control input-box readonly-box" id="telNum" value="${svo.phone}" readonly></td>
                </tr>
                <tr>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label">이메일</label></td>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label input-box">소속</label></td>
                </tr>
                <tr>
                  <td><input type="email" class="form-control readonly-box" id="email" value="${svo.email}@${svo.email2}" readonly></td>
                  <td><input type="text" class="form-control input-box readonly-box" id="attach" value="${svo.memberAttach}" readonly></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="input-group">
            <label for="inputPassword3" class="col-sm-2 col-form-label">세미나 간단 소개</label>
            <input type="text" class="form-control" name="intro" value="${svo.intro}" placeholder="내용을 입력하세요." id="seminar-meet">
          </div>
        </article> 
         
      
  
        <div class="detail-info-area">
          <div class="detail-title">상세내용</div><span class="essential">(필수)</span>
          	<div id="detail-info-box">
	          	<textarea id="summernote" name="exintro" required>${svo.exintro}</textarea>
          	</div>
        </div>



     
        <div class="apply-area">
          <h2 id="apply-title">세미나 정보</h2><span class="essential">(수정불가)</span>
          <div id="line-second"></div>
  
        </div>
  
        <!-- 세미나 일시 -->
        <div class="detail-apply-area">
          <div id="seminar-detail-info">
            <b>※ 세미나 일시 : </b>  ${svo.startDay}     <b>|   시간</b> : ${svo.seminarTime} <br>
            <b>※ 모집인원 : </b> ${svo.maxCapacity} 명<br>
            <b>※ 세미나 신청 마감일 : </b> ${svo.closeDay}  <b>|   시간</b>${svo.closeTime} <br>
            <b>※ 유무료 선택 </b> : ${svo.payYn}
            <c:if test= '${svo.payYn == "유료"}'>
              <b>|   비용 : </b> ${svo.expense}
              <b>|   은행 : </b> ${svo.bankName}
              <b>|   계좌번호 : </b> ${svo.acountnum}
            </c:if>
            <br>
            <b>※ 세미나 주소 : </b>  ${svo.place} ${svo.detailAddress}
          </div>
           
            <!-- 카카오 지도 api 영역  -->
          <div id="map" style="width:1200px;height:400px; margin: auto; margin-top: 20px;"></div>
      
          <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=키값&libraries=services"></script>
          <script>
          var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
              mapOption = {
                  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                  level: 4 // 지도의 확대 레벨
              };  
          
          // 지도를 생성합니다    
          var map = new kakao.maps.Map(mapContainer, mapOption); 
          
          // 주소-좌표 변환 객체를 생성합니다
          var geocoder = new kakao.maps.services.Geocoder();
          
          // 주소로 좌표를 검색합니다
          geocoder.addressSearch('${svo.place}', function(result, status) {
          
              // 정상적으로 검색이 완료됐으면 
              if (status === kakao.maps.services.Status.OK) {
          
                  var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
          
                  // 결과값으로 받은 위치를 마커로 표시합니다
                  var marker = new kakao.maps.Marker({
                      map: map,
                      position: coords
                  });
          
                  // 인포윈도우로 장소에 대한 설명을 표시합니다
                  var infowindow = new kakao.maps.InfoWindow({
                      content: '<div style="width:150px;text-align:center;padding:6px 0;">세미나 장소</div>'
                  });
                  infowindow.open(map, marker);
          
                  // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                  map.setCenter(coords);
              } 
          });    
          </script>

            
        </div>

        <div id="btn-area">
          <input class="btn btn-primary" type="submit" value="수정하기">
          <button class="btn btn-light" id="cancle-btn" type="button" onclick="history.back();">취소하기</button>
        </div>

      
      </form>
  
  
  
    </div>
  </div>



  	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

<script>
  //세미나 사진 썸네일 이미지 미리보기
function setThumbnail(event) {
  var reader = new FileReader();

  reader.onload = function(event) {
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    img.classList.add('seminar-photo');
    var imageContainer = document.querySelector("div#image_container");
    imageContainer.innerHTML = "";
    imageContainer.appendChild(img);
  };

  reader.readAsDataURL(event.target.files[0]);
}



  //썸머노트 설정

  $('#summernote').summernote({
    placeholder: '내용을 입력해주세요.',
        height: 800,
        width : 1300,
        maxHeight : 900,
        minHeight : 200,
        callbacks : {
           onImageUpload : seminarExintroImg
        },
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });





//썸머노트 이미지 업로드
function  seminarExintroImg(fileList){
  const fd = new FormData();

  for(let file of fileList){
    fd.append('fileList', file);
  }

  $.ajax({
    url : '${root}/seminar/upload/summernote',
    type : 'post',
    data : fd,
    processData : false,
    contentType : false,
    dataType : 'json',
    success : function(changeNameList){
      for(let changeName of changeNameList){
        $("#summernote").summernote('insertImage', '/app/resources/img/seminar/upload/summernote/' + changeName);
      }
    },
    error : function(error){
      console.log(error);
    }
  
  });

}
</script>