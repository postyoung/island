<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 정보수정 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<link rel="stylesheet" href="${root}/resources/css/seminar/edit.css">
</head>
<body>

	<!-- 세미나 정보수정 영역 -->
  <div id="seminar-outer-area">

    <div id="seminar-create-area">
      <div id="seminar-create-title">
        <h2>세미나 수정</h2>
      </div>
      <div id="line"></div>
  
  
      <form action="${root}/seminar/edit" method="POST">
        <article id="photo-file-area">
          <div id="image_container"></div>
          <div class="mb-3">
            <input class="form-control" type="file" id="formFile" accept="image/*" onchange="setThumbnail(event);">
          </div>
        </article>
  
        <article id="default-info-area">
          <div class="info">기본정보</div><span class="essential">(필수)</span>
          <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label">세미나명</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" id="inputEmail3" placeholder="세미나명을 입력해주세요."  maxlength="35">
            </div>
          </div>
          <div class="row mb-3">
            <label for="inputPassword3" class="col-sm-2 col-form-label">작성자 정보</label>
            <div class="col-sm-10">
              <table>
                <tr>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label">담당자 명</label></td>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label input-box">전화번호</label></td>
                </tr>
                <tr>
                  <td><input type="text" class="form-control" id="name" value="김땡땡" readonly></td>
                  <td><input type="tel" class="form-control input-box" id="telNum" value="010-1234-1234"></td>
                </tr>
                <tr>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label">이메일</label></td>
                  <td><label for="inputPassword3" class="col-sm-2 col-form-label input-box">소속</label></td>
                </tr>
                <tr>
                  <td><input type="email" class="form-control" id="email" value="abc12@nate.com"></td>
                  <td><input type="text" class="form-control input-box" id="attach" value="서울대학교 경영학과 공동협의"></td>
                </tr>
              </table>
            </div>
          </div>
          <div class="input-group">
            <label for="inputPassword3" class="col-sm-2 col-form-label">세미나 간단 소개</label>
            <input type="text" class="form-control" placeholder="내용을 입력하세요." id="seminar-meet">
          </div>
        </article> 
         
        <div class="detail-info-area">
          <div class="detail-title">상세내용</div><span class="essential">(필수)</span>
          <textarea class="detail-context" aria-label="With textarea" rows="30" placeholder="내용을 입력하세요." style="resize: none;"></textarea>
        </div>
  
        <!-- 신청 영역  -->
        <div class="apply-area">
          <h2 id="apply-title">신청</h2><span class="essential">(필수)</span>
          <div id="line-second"></div>
  
        </div>
  
        <!-- 세미나 일시 -->
        <div class="detail-apply-area">
            <b>세미나 일시 </b><input type="date" class="form-control input-box" min="오늘이후" max="최대날짜"> 
            <select class="form-select">
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
    
            <select class="form-select" aria-label="multiple select example">
              <option value="00" selected>00</option>
              <option value="10">10</option>
              <option value="20">20</option>
              <option value="30">30</option>
              <option value="40">40</option>
              <option value="50">50</option>
            </select>분 
            
            <div id="range">~</div>
            
            <select class="form-select">
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
    
            <select class="form-select" aria-label="multiple select example">
              <option value="00" selected>00</option>
              <option value="10">10</option>
              <option value="20">20</option>
              <option value="30">30</option>
              <option value="40">40</option>
              <option value="50">50</option>
            </select>분 <br><br>
          


            <b>세미나 주소</b>
         <!-- 주소 검색창 영역  -->
        <input type="text" class="form-control input-box" id="sample4_postcode" placeholder="우편번호">
        <input type="button" id="address-btn" class="btn btn-outline-warning" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br><br>
        <input type="text" class="form-control input-box" id="sample4_roadAddress" placeholder="도로명주소">
        <input type="text" class="form-control input-box" id="sample4_jibunAddress" placeholder="지번주소">
        <span id="guide" style="color:#999;display:none"></span>
        <input type="text" class="form-control input-box" id="sample4_detailAddress" placeholder="상세주소">
        <input type="text" class="form-control input-box" id="sample4_extraAddress" placeholder="참고항목"> <br>
        
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
        //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
        function sample4_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수
    
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraRoadAddr !== ''){
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample4_postcode').value = data.zonecode;
                    document.getElementById("sample4_roadAddress").value = roadAddr;
                    document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                    
                    // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                    if(roadAddr !== ''){
                        document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                    } else {
                        document.getElementById("sample4_extraAddress").value = '';
                    }
    
                    var guideTextBox = document.getElementById("guide");
                    // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                    if(data.autoRoadAddress) {
                        var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                        guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                        guideTextBox.style.display = 'block';
    
                    } else if(data.autoJibunAddress) {
                        var expJibunAddr = data.autoJibunAddress;
                        guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                        guideTextBox.style.display = 'block';
                    } else {
                        guideTextBox.innerHTML = '';
                        guideTextBox.style.display = 'none';
                    }
                }
            }).open();
           }
          </script>





         <!-- 카카오 지도 api 영역  -->
          <div id="map" style="width:1000px;height:400px; margin: auto; margin-top: 20px;"></div>

          <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5a9bd87958dd4bc286274881ed8c36d3&libraries=services"></script>
          <script>
          var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
              mapOption = {
                  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                  level: 3 // 지도의 확대 레벨
              };  

          // 지도를 생성합니다    
          var map = new kakao.maps.Map(mapContainer, mapOption); 

          // 주소-좌표 변환 객체를 생성합니다
          const geocoder = new kakao.maps.services.Geocoder();

          ////////예시 코드 
          // var juso = document.querySelector('#sample4_roadAddress');
          // var juso ='인천 부평구 열우물로90';



          // 주소로 좌표를 검색합니다
          geocoder.addressSearch('서울특별시 강남구 테헤란로14길 6', function(result, status) {

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


          const input = document.querySelector('#sample4_roadAddress');

            // input 값 변경 시 이벤트 핸들러 등록
            input.addEventListener('change', () => {
              const address = input.value; // 입력된 주소
              console.log(address);
              
            
              geocoder.addressSearch(address, (result, status) => {
                if (status === kakao.maps.services.Status.OK) {
                  const lat = result[0].y; // 위도
                  const lng = result[0].x; // 경도
                  console.log(`위도: ${lat}, 경도: ${lng}`);
                } else {
                  console.error(`주소 검색 실패: ${status}`);
                }
              });
            });
          </script>


          <br><br>
          <!-- 모집정원 -->
          <b>모집 정원 </b><input type="text" class="form-control input-box" id="person-area" value="30"> 명 <br><br>

          <!-- 신청마감 기간 -->
          <b>세미나 신청 마감일 </b><input type="date" class="form-control input-box" value="2023/04/11" min="오늘이후" max="최대날짜"> 
            <select class="form-select">
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
    
            <select class="form-select" aria-label="multiple select example">
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
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
              <label class="form-check-label" for="flexRadioDefault1">
                무료
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
              <label class="form-check-label" for="flexRadioDefault2">
                유료
              </label>
              <span id="seminar-pay">비용<input type="text" id="pay-area" class="form-control">원</span>
              <span id="seminar-pay">
                은행명
                <select class="form-select" aria-label="multiple select example" id="bank-select">
                  <option value="은행" selected>선택</option>
                  <option value="농협">농협은행</option>
                  <option value="국민">국민은행</option>
                  <option value="카카오">카카오뱅크</option>
                  <option value="기업">기업은행</option>
                  <option value="하나">하나은행</option>
                </select>
              </span>
              <span id="seminar-pay">계좌번호<input type="text" id="account-number" class="form-control">('-')포함 입력</span>
              <div>※ 실시간 계좌입금, 카드결제 두 수단으로 비용결제가 진행됩니다.</div>
            </div>
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