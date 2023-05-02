<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 상세 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="${root}/resources/css/seminar/detail.css">
	<script defer src="${root}/resources/js/seminar/detail.js"></script>
</head>
<body>
	<!-- 세미나 참가신청 영역 -->
  <div id="seminar-outer-area">

    <!-- 위에 영역 -->
    <div id="seminar-top-area">
      <div class="title-area">
        <div class="title">SEMINAR</div>
        <div id="siren-area">
          <button id="siren-btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <img src="${root}/resources/img/seminar/siren-icon.png" alt="신고아이콘" id="siren-icon">
          </button>
        </div>
      </div>
      <div id="line-second"></div>
    
      <div id="seminar-info-area">
          <img id="seminar-apply-photo" src="${root}/resources/img/seminar/upload/seminar1.png" alt="세미나사진">
        <table class="info-text">
          <tr>
            <td id="seminar-name" class="info-table">
             [세미나] 나에게 딱 맞는 창업아이템 온라인 특강
            </td>
          </tr>
          <tr>
            <td id="introduction" class="info-table">
              나에게 딱 맞는 창업아이템 찾고 싶다면? 이번기회에 꼭 찾아보세요.
            </td>
          </tr>
          <tr>
            <td class="info-table">
              세미나 장소 : 강남구 역삼동 테헤란로4길 남도빌딩
            </td>
          </tr>
          <tr>
            <td class="info-table">
              일시 : 2023-05-01 (월) 14:00 ~ 16:30
            </td>
          </tr>
        </table>
      
      </div>

      <!-- 컨테이너 -->
      <div class="container">
        <div class="row">
          <div class="col-4">
            
             <!-- 개설자 정보 -->
            <h5>개설자 정보</h5>
            <div id="founder-info">
              <table id="info-table" style="table-layout: fixed">
                <tr>
                  <th rowspan="5">
                    <img src="${root}/resources/img/seminar/upload/member-profile1.jpg" alt="프로필사진" id="founder-photo">
                  </th>
                </tr>
                <tr>
                  <th>이름</th>
                  <td>김땡땡</td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td>dajl@naver.com</td>
                </tr>
                <tr>
                  <th>연락처</th>
                  <td>010-1234-1234</td>
                </tr>
                <tr>
                  <th>소속</th>
                  <td>서울대학교 경영학 공동협의</td>
                </tr>
              </table>
            </div>
          </div>

          <!-- 2번째 세미나 정보 + 신청하기 -->
          <div class="col-8">
            
            <div>
              조회수 : 129
              <div id="heart-icon">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                234
              </div>
            </div>
            <div id="second-info">
              <div class="box-div">
                모집인원 : 30명 (선착순)
              </div>
              <div class="box-div">
                모집마감일 : 2023.04.25 (화) 16:00 까지
              </div>
              <span id="free-or-pay"><b>유료</b></span> 21,000원
              <button type="button" class="btn btn-info" onclick="location.href='/seminar-apply.html'">신청하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- 아래영역 -->
    <div id="seminar-buttom-area">
      <div id="info-menu">
        <span><a href="#more-infomation" class="menu-title-click">상세정보</a></span>
        <span><a href="#map-view" class="menu-title-click">지도보기</a></span>
        <span><a href="#add-comment" class="menu-title-click">문의/기대평</a></span>
        <span><a href="#guide" class="menu-title-click">참여신청/취소 안내</a></span>
      </div>
      <div id="line-second"></div>

      <!-- 상세정보 -->
      <div class="detail-info-content" id="more-infomation">
        <div class="menu-title">상세정보</div>
        제 강의는 시중에 나와있는 강의중 제일 생각이 많아지는 강의입니다. <br>
        그래도 월 100명이상 가까이 문의 주시고
        수강생분중 아이템 찾을 확률은 92% 이상입니다.
        그러나 무작정 제 강의를 추천 드리지 않습니다.
        제 강의는 일반 창업컨설팅과 다를수 있기 때문입니다.
        저는 이 강의를 창업아이템에 대한 이론 강의가 아닌,
        아이템 찾는 공식을 활용하여 ‘누구나 자신에게 딱 맞는 아이템 찾을수 있는 비밀’에 대해
        초점을 두고 강의 내용을 구성했습니다.
        강의에서 실제로 90%이상 확률을 가진
        ‘나에게 딱 맞는 창업아이템 찾는 비밀’을 알려드립니다.
        이제까지 500명이상 컨설팅과 교육을 하고
        성공사례를 만들어왔습니다.
        정말 창업아이템을 제대로 찾고 싶은 사람들이
        이 강의를 들으셨으면 좋겠습니다.
        아랫글을 읽는 것만으로도 충분히 레벨업 되실 겁니다.
        지금부터
        7일,30일,90일.. 단숨에 자신의 아이템 찾는 비밀을 공개하겠습니다.
        *7일만에 전화통화 한번으로 아이템 찾고 음악사업하는 30대 대표님
        *1년 고민했지만 90일만에 아이템 찾고 대체육 사업준비하는 20대 대표님
        *대기업 영업사원에서 2달만에 사회초년생 멘토로 나선 30대 대표님
        이런 사례들은 수강후 매번 쏟아지는
        한국창업아이템협회의 포트폴리오의 극히 일부에 불과합니다.
        성공의 비결을 말씀드리자면,
        바로 방법에 집중하는것이 아닌, 본질에 중점을 두었기 때문입니다.
        ▶︎창업아이템기본공식은 다음과 같습니다.
        기존 창업아이템은 ‘혁신’’트렌드’’기술’이라는 
        개념만 중시되었습니다. 
        그러나 이제 이 3가지 기술로는 의미가 없어졌습니다.
        3가지 기술이 있더라도 사업을 지속하지 않으면 의미가 없기 때문입니다.
        지속하지 않으면 성공도 없습니다.
        실패하고 싶지 않다면 기존 생각을 버려야 합니다.

      </div>

      <!-- 지도보기 -->
      <div class="adress-info-content" id="map-view">
        <div class="menu-title">지도보기</div>
        <div class="location">
          <i class="bi bi-pin-map" id="map-img"></i>
          서울특별시 강남구 테헤란로14길 6 남도빌딩 2층 204호
        </div>
        
        <!-- 카카오 지도 api 영역  -->
        <div id="map" style="width:1200px;height:400px; margin: auto; margin-top: 20px;"></div>

        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=키값&libraries=services"></script>
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




      </div>

      <!-- 문의 기대평댓글 -->
      <div class="comment-area" id="add-comment">
        <div class="menu-title">문의/기대평 댓글 (0건)</div>
        <div id="line-second"></div>
        <div id="reply-form">
          <form action="#" method="post">
            <img src="${root}/resources/img/seminar/upload/member-profile1.jpg" alt="프로필사진" id="member-photo"> 
            <textarea class="form-control reply-textarea" id="exampleFormControlTextarea1" rows="3" placeholder="기대평이나 문의사항을 댓글에 남겨주세요. 부적절한 내용시 제재받을 수 있습니다."></textarea>
            <input class="btn btn-outline-secondary" id="reply-write" type="submit" value="등록">
          </form>
          <div id="line-third"></div>
        </div>
        <div id="reply-form">
            <img src="${root}/resources/img/seminar/upload/member-profile1.jpg" alt="프로필사진" id="member-writed-photo"> 
            <div id="reply-box">
              <span><b>박정*</b></span>
              <span id="reply-write-date">2023/04/12 13:40</span>
              <span id="edit-and-delete-area">
                <a href="#" class="reply-btn">수정</a>|
                <a href="#" class="reply-btn">삭제</a>
              </span>
              <div id="writed-content">
                세미나 참여 원하는데 참여 연령 조건이 따로 있을까요?
              </div>
            </div>  
          <div id="line-third"></div>
        </div>

        
      </div>


      <!-- 참여신청/취소 안내 -->
      <div class="apply-guide-area" id="guide">
        <div class="menu-title">참여신청/취소 안내</div>
        <div id="guide-content">
          * 모임의 신청/취소/변경/환불은 참여신청 기간 내에만 가능합니다. <br>
          * 결제한 유료모임은 환불 시 결제 수단과 환불 시점에 따라 수수료가 부과될 수 있습니다. 자세한 사항은 취소/환불약관을 확인해주세요.<br>
          * 결제, 환불, 참여신청 수정/취소, 참여상태 확인, 참여내역 확인은 마이페이지에서 할 수 있습니다. <br>
          * 세미나 모집정원 초과 여부에 따라 참여신청이 제한될 수 있습니다.<br>
          * 아일랜드 결제서비스를 이용하는 세미나는 개설자의 사업자 여부에 따라 결제증빙 발행이 가능합니다.<br>
          * 개설자 통장입금 방식 및 세미나 참여/결제 확인은 개설자에게 문의 바랍니다.<br>
          * 아일랜드는 참여신청 및 참가비 결제 기능을 제공하는 회사로 세미나 개설자(주최측)가 아닙니다. 세미나 내용과 관련한 사항은 모임 개설자에게 문의 바랍니다.<br>
        </div>
        <div class="top-btn-area">
          <a href="#" class="top-btn">
            <i class="bi bi-arrow-up"></i><br>
            TOP
          </a>
        </div>
      </div>
      <div id="btn-zone">
        <button type="button" class="btn btn-dark" onclick="${root}/seminar/list">목록</button>
        <button type="button" id="edit-btn" class="btn btn-light" onclick="${root}/seminar/edit">수정</button>
        <button type="button" id="delete-btn" class="btn btn-danger" onclick="seminarDelete()">삭제</button>
      </div>
    </div>

  </div>

	<!-- 신고 모달 영역 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">세미나 신고하기</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div class="caution">
	          해당 모임의 취지가 다르거나 부적절한 모임일 경우 신고를 할 수 있습니다.<br>
	          신고된 모임은 부적절한지의 여부를 결정하여 삭제 또는 경고의 조치가 주어지며
	          신고 기능을 악용하는 것도 위반여부를 판단하여 사용에 제한이 있을 수 있으니
	          주의하시기 바랍니다.
	        </div>
	        <form>
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">신고사유 카테고리</label>
	            <select class="form-select">
	              <option value="00" selected>선택하기</option>
	              <option value="1">부적절한 컨텐츠로 선정적이거나, 음란물, 폭력적 컨텐츠를 포함</option>
	              <option value="2">내용에 허위 정보, 사기성 광고, 인신공격, 혐오발언 포함</option>
	              <option value="3">저작권을 침해하는 내용</option>
	              <option value="4">기타</option>
	            </select>
	          </div>
	          <div class="mb-3">
	            <label for="message-text" class="col-form-label">상세사유</label>
	            <textarea class="form-control" id="message-text"></textarea>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-danger">신고하기</button>
	      </div>
	    </div>
	  </div>
	</div>




	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>