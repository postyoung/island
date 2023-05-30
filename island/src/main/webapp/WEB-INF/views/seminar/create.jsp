<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 개설 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
	<!-- include libraries(jQuery, bootstrap) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
	

	<link rel="stylesheet" href="${root}/resources/css/seminar/create.css">
	<script defer src="${root}/resources/js/seminar/create.js"></script>
<script>

//세미나 일시 체크
function validateStartDay() {
  const selectedStartDay = new Date(document.querySelector("input[name=startDay]").value);
  var today = new Date();
  if (selectedStartDay < today) {
    alert('오늘 날짜 이후로 선택해주세요.');
  }
}

//세미나 참가모집 체크 
function validateCloseDay() {
  const selectedStartDay = new Date(document.querySelector("input[name=startDay]").value);
  let selectedCloseDay = new Date(document.querySelector("input[name=closeDay]").value);
  var today = new Date();
  if (selectedStartDay < selectedCloseDay) {
    alert('세미나 날짜 이전으로 선택해주세요.');
  }
}


function validCheck(){
  //세미나 상세내용 비어있는지 체크
  
//썸머노트 안에 내용 체크 
const textareaValue = document.querySelector("#summernote");
if(textareaValue.value == ""){ 
  alert("세미나 상세내용을 작성해주세요.");
  return false;
}

  //세미나 장소 설정했는지 체크
  let place = document.querySelector("input[name=place]");
  if(place.value == ''){
    alert('세미나 주소를 지정해주세요.');
    return false;
  }

  //세미나 일시 오늘날짜 이후인지 체크
  const selectedStartDay = new Date(document.querySelector("input[name=startDay]").value);
  var today = new Date();
  if (selectedDate < today) {
    alert('세미나 일시를 오늘 날짜 이후로 선택해주세요.');
    return false; // 제출을 막음
  }
  return false;
}


</script>
	
	
</head>
<body>
	<!-- 세미나 개설 영역 -->
  <div id="seminar-outer-area">

    <div id="seminar-create-area">
      <div id="seminar-create-title">
        <h2>세미나 개설</h2>
      </div>
      <div id="line"></div>
  
  
      <form action="${root}/seminar/create" method="POST" enctype="multipart/form-data" onsubmit="return validCheck()">
        <article id="photo-file-area">
          <div id="image_container"></div>
          <div class="mb-3">
            <input class="form-control" type="file" name="thumbnailFile" id="formFile" accept=".png,.jpg,.jpeg" onchange="setThumbnail(event);">
          </div>
        </article>
  
        <article id="default-info-area">
          <div class="info">기본정보</div><span class="essential">(필수)</span>
          <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label">세미나명</label>
            <div class="col-sm-10">
              <input type="type" class="form-control" id="inputEmail3" name="name" placeholder="세미나명을 입력해주세요."  maxlength="35" required>
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
                  <td><input type="text" class="form-control" id="inputPassword3" value="${loginMember.nick}" readonly></td>
                  <td><input type="tel" class="form-control input-box" id="inputPassword3" value="${loginMember.phone}" readonly></td>
                </tr>
                <tr>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label">이메일</label></td>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label input-box">소속</label></td>
                </tr>
                <tr>
                  <td><input type="email" class="form-control" id="inputPassword3" value="${loginMember.email}@${loginMember.email2}" readonly></td>
                  <td><input type="text" class="form-control input-box" id="inputPassword3" value="${loginMember.attach}" readonly></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="input-group">
            <label for="inputPassword3" class="col-sm-2 col-form-label">세미나 간단 소개</label>
            <input type="text" name ="intro" class="form-control" placeholder="50자 이내로 내용을 입력하세요." maxlength="50" id="seminar-meet" required>
          </div>
        </article> 
         
        <div class="detail-info-area">
          <div class="detail-title">상세내용</div><span class="essential">(필수)</span>
          	<div id="detail-info-box">
	          	<textarea id="summernote" name="exintro" ></textarea>
          	</div>
        </div>


     
  
        <!-- 신청 영역  -->
        <div class="apply-area">
          <h2 id="apply-title">신청</h2><span class="essential">(필수)</span>
          <div id="line-second"></div>
  
        </div>
  
        <!-- 세미나 일시 -->
        <div class="detail-apply-area">
            <b>세미나 일시 </b><input type="date" name="startDay" class="form-control input-box" required oninput="validateStartDay()"> 
            <select class="form-select select-box-size" name="sHour">
              <option value="00" selected>00</option>
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
            </select>시
    
            <select class="form-select select-box-size" aria-label="multiple select example" name="sMinute">
              <option value="00" selected>00</option>
              <option value="10">10</option>
              <option value="20">20</option>
              <option value="30">30</option>
              <option value="40">40</option>
              <option value="50">50</option>
            </select>분 
            
            <div id="range">~</div>
            
            <select class="form-select select-box-size" name="fHour">
              <option value="00" selected>00</option>
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
            </select>시
    
            <select class="form-select select-box-size" aria-label="multiple select example" name="fMinute">
              <option value="00" selected>00</option>
              <option value="10">10</option>
              <option value="20">20</option>
              <option value="30">30</option>
              <option value="40">40</option>
              <option value="50">50</option>
            </select>분 <br><br>
          

     	<!-- 세미나 장소 -->
          <b>세미나 주소</b>
          <input type="text" class="form-control input-box place" name="place" id="sample5_address" placeholder="주소" required readonly>
          <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색" class="btn btn-warning"><br>
          <div id="detail-address">
            <b>상세주소</b>
            <input type="text" class="form-control detail-address" name="detailAddress" placeholder="상세주소">
          </div>
          <div id="map" style="width:100%;height:400px; margin: auto; margin-top: 20px;"></div>
          <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=키값&libraries=services"></script>
			<script>
			    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			        mapOption = {
			            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
			            level: 4 // 지도의 확대 레벨
			        };
			
			    //지도를 미리 생성
			    var map = new daum.maps.Map(mapContainer, mapOption);
			    //주소-좌표 변환 객체를 생성
			    var geocoder = new daum.maps.services.Geocoder();
			    //마커를 미리 생성
			    var marker = new daum.maps.Marker({
			        position: new daum.maps.LatLng(37.537187, 127.005476),
			        map: map
			    });
			
			
			    function sample5_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                var addr = data.address; // 최종 주소 변수
			
			                // 주소 정보를 해당 필드에 넣는다.
			                document.getElementById("sample5_address").value = addr;
			                // 주소로 상세 정보를 검색
			                geocoder.addressSearch(data.address, function(results, status) {
			                    // 정상적으로 검색이 완료됐으면
			                    if (status === daum.maps.services.Status.OK) {
			
			                        var result = results[0]; //첫번째 결과의 값을 활용
			
			                        // 해당 주소에 대한 좌표를 받아서
			                        var coords = new daum.maps.LatLng(result.y, result.x);
			                        // 지도를 보여준다.
			                        mapContainer.style.display = "block";
			                        map.relayout();
			                        // 지도 중심을 변경한다.
			                        map.setCenter(coords);
			                        // 마커를 결과값으로 받은 위치로 옮긴다.
			                        marker.setPosition(coords)
			                    }
			                });
			            }
			        }).open();
			    }
			</script>



          <br><br>
          <!-- 모집정원 -->
          <b>모집 정원 </b><input type="text" name="maxCapacity" class="form-control input-box" id="person-area" placeholder="00" required> 명 <br><br>

          <!-- 신청마감 기간 -->
          <b>세미나 신청 마감일 </b><input name="closeDay" type="date" class="form-control input-box" required oninput="validateCloseDay()"> 
            <select name="cHour" class="form-select select-box-size">
              <option value="00" selected>00</option>
              <option value="01">01</option>
              <option value="02">02</option>
              <option value="03">03</option>
              <option value="04">04</option>
              <option value="05">05</option>
              <option value="06">06</option>
              <option value="07">07</option>
              <option value="08">08</option>
              <option value="09">09</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
            </select>시
    
            <select name="cMinute" class="form-select select-box-size" aria-label="multiple select example">
              <option value="00" selected>00</option>
              <option value="10">10</option>
              <option value="20">20</option>
              <option value="30">30</option>
              <option value="40">40</option>
              <option value="50">50</option>
            </select>분  <br><br>

            <!-- 유무료 -->
            <b>유무료 선택 </b>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="payYn" value="무료" id="flexRadioDefault1" checked>
              <label class="form-check-label" for="flexRadioDefault1">
                무료
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="payYn" value="유료" id="flexRadioDefault2" >
              <label class="form-check-label" for="flexRadioDefault2">
                유료
              </label>
              <span id="seminar-pay">비용<input type="number" name="expense" id="pay-area" class="form-control">원</span>
              <span id="seminar-pay">
                은행명
                <select class="form-select select-box-size" aria-label="multiple select example" id="bank-select" name="bankNo">
                  
                  <c:forEach items="${bankList}" var="bvo">
	                  <option value="${bvo.no}" selected>${bvo.bankName}</option>
                  </c:forEach>
                 
                </select>
              </span>
              <span id="seminar-pay">계좌번호<input type="text"  name="acountnum" id="account-number" class="form-control">('-')포함 입력</span>
              <div>※ 실시간 계좌입금, 카드결제 두 수단으로 비용결제가 진행됩니다.</div>
            </div>
        </div>

        <div id="btn-area">
          <input class="btn btn-success" type="submit" value="개설하기">
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
  //썸머노트 설정

  $('#summernote').summernote({
    placeholder: '내용을 입력해주세요.',
        height: 500,
        width : 1300,
        maxHeight : 600,
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