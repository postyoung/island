<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 상세 | ISLAND</title>

   <!-- 헤더 -->
   <%@ include file="/WEB-INF/views/common/header-member.jsp" %>
   
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
   <!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  
   <link rel="stylesheet" href="${root}/resources/css/seminar/detail.css">

</head>
<body>
   <!-- 세미나 참가신청 영역 -->
  <div id="seminar-outer-area">

    <!-- 위에 영역 -->
    <div id="seminar-top-area">
      <div class="title-area">
        <div class="title">SEMINAR</div>
        <div id="siren-area">
          <button id="siren-btn" data-bs-toggle="modal" data-bs-target="#seminarReport">
            <img src="${root}/resources/img/seminar/siren-icon.png" alt="신고아이콘" id="siren-icon">
          </button>
        </div>
      </div>
      <div id="line-second"></div>
    
      <div id="seminar-info-area">
          <img id="seminar-apply-photo" src="${root}/resources/img/seminar/upload/${svo.seminarThumbnail}" alt="세미나사진">
        <table class="info-text">
          <tr>
            <td id="seminar-name" class="info-table">
             [세미나] ${svo.name}
            </td>
          </tr>
          <tr>
            <td id="introduction" class="info-table">
              ${svo.intro}
            </td>
          </tr>
          <tr>
            <td class="info-table">
              세미나 장소 : ${svo.place} ${svo.detailAddress}
            </td>
          </tr>
          <tr>
            <td class="info-table">
              일시 : ${svo.startDay} | 시간 : ${svo.seminarTime}
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
                    <img src="${root}/resources/img/member/profile/load/${svo.profile}" onerror= "this.onerror=null; this.src = 
        'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'" id="founder-photo">
                  </th>
                </tr>
                <tr>
                  <th>담당자 : </th>
                  <td class="writer-area">${svo.writerNick}</td>
                </tr>
                <tr>
                  <th>이메일 : </th>
                  <td class="writer-area">${svo.email}@${svo.email2}</td>
                </tr>
                <tr>
                  <th>연락처 : </th>
                  <td class="writer-area">${svo.phone}</td>
                </tr>
                <tr>
                  <th>소속 : </th>
                  <td class="writer-area">${svo.memberAttach}</td>
                </tr>
              </table>
            </div>
          </div>

          <!-- 2번째 세미나 정보 + 신청하기 -->
          <div class="col-8">
            
            <div>
              조회수 : ${svo.hit}
              <button class="btn btn-secondary" id="interest-btn" onclick="location.href='${root}/seminar/interest?no=${svo.no}&writerNo=${svo.writerNo}'">관심내역 추가</button>
            </div>
            <div id="second-info">
              <div class="box-div">
                모집인원 : ${svo.maxCapacity}명 (선착순)   |  현재 신청가능 인원 : ${svo.maxCapacity - svo.currentCapacity}명
                <div id="heart-icon">
                  <i class="bi-heart-fill" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                  ${svo.likeCount}
                </div>
              </div>
              <div class="box-div">
                모집마감일 : ${svo.closeDay}  ${svo.closeTime} 까지
              </div>
              <span id="free-or-pay"><b>${svo.payYn}</b></span> <fmt:formatNumber value="${svo.expense}" pattern="#,### 원"/>
              <span id="apply-state">
                
              </span>
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
        ${svo.exintro}

      </div>

      <!-- 지도보기 -->
      <div class="adress-info-content" id="map-view">
        <div class="menu-title">지도보기</div>
        <div class="location">
          <i class="bi bi-pin-map" id="map-img"></i>
          ${svo.place} ${svo.detailAddress}
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

      <!-- 문의 기대평댓글 -->
      <div class="comment-area" id="add-comment">
        <div class="menu-title">문의/기대평 댓글 (<span id="replyCount-area"></span>건)</div>
        <div id="line-second"></div>
        <div id="reply-form">
          <form action="${root}/seminar/reply/write" method="post" onsubmit="return writeReply();">
            <img src="${root}/resources/img/member/profile/load/${svo.loginMemberProfile}" onerror= "this.onerror=null; this.src = 
        'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'"  id="member-photo"> 
            <input type="hidden" name="sNo" value="${svo.no}">
            <textarea class="form-control reply-textarea" name= "content" id="exampleFormControlTextarea1" required rows="3" placeholder="기대평이나 문의사항을 댓글에 남겨주세요. 부적절한 내용시 제재받을 수 있습니다." style="resize: none;"></textarea>
            <input class="btn btn-outline-secondary" id="reply-write" type="submit" value="등록">
          </form>
          <div id="line-third"></div>
        </div>

        <!-- 회원들이 작성한 댓글 영역  -->
        <div id="reply-form">
            

        </div>

        
      </div>


      <!-- 참여신청/취소 안내 -->
      <div class="apply-guide-area" id="guide">
        <div class="menu-title">참여신청/취소 안내</div>
        <div id="guide-content">
          * 세미나의 신청/취소/변경/환불은 참여신청 기간 내에만 가능합니다. <br>
          * 결제한 유료모임은 환불 시 결제 수단과 환불 시점에 따라 수수료가 부과될 수 있습니다. 자세한 사항은 취소/환불약관을 확인해주세요.<br>
          * 결제, 환불, 참여신청 수정/취소, 참여상태 확인, 참여내역 확인은 마이페이지에서 할 수 있습니다. <br>
          * 세미나 모집정원 초과 여부에 따라 참여신청이 제한될 수 있습니다.<br>
          * 아일랜드 결제서비스를 이용하는 세미나는 개설자의 사업자 여부에 따라 결제증빙 발행이 가능합니다.<br>
          * 개설자 통장입금 방식 및 세미나 참여/결제 확인은 개설자에게 문의 바랍니다.<br>
          * 아일랜드는 참여신청 및 참가비 결제 기능을 제공하는 회사로 세미나 개설자(주최측)가 아닙니다. 세미나 내용과 관련한 사항은 세미나 개설자에게 문의 바랍니다.<br>
        </div>
        <div class="top-btn-area">
          <a href="#" class="top-btn">
            <i class="bi bi-arrow-up"></i><br>
            TOP
          </a>
        </div>
      </div>
      <div id="btn-zone">
        <button type="button" class="btn btn-dark" onclick="location.href='${root}/seminar/list'">목록</button>
        <c:if test="${loginMember.no == svo.writerNo}">
        <button type="button" id="edit-btn" class="btn btn-light" onclick="location.href='${root}/seminar/edit/${svo.no}'">수정</button>
        <button type="button" id="delete-btn" class="btn btn-danger" onclick="seminarDelete()">삭제</button>
        </c:if>
      </div>
    </div>

  </div>

   <!-- 세미나 신고 모달 영역 -->
   <div class="modal fade" id="seminarReport" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
           <form action="${root}/seminar/report" method="POST" onsubmit="return validateForm()">
             <div class="mb-3">
             <input type="hidden" name="sNo" value="${svo.no}">
               <label for="recipient-name" class="col-form-label"><b>신고하시는 사유를 선택해주세요. (필수)</b></label>
               <div id="category">
                 <input class="form-check-input" type="radio" name="reCategoryNo" value="1" id="reCategoryName1">
                 <label class="form-check-label" for="reCategoryName1" style="font-size:15px;">
                   부적절한 컨텐츠로 선정적이거나, 음란물, 폭력적 컨텐츠를 포함
                 </label><br>
                 <input class="form-check-input" type="radio"  name="reCategoryNo" value="2" id="reCategoryName2">
                 <label class="form-check-label" for="reCategoryName2">
                   내용에 허위 정보, 사기성 광고, 인신공격, 혐오발언 포함 
                 </label><br>
                 <input class="form-check-input" type="radio" name="reCategoryNo" value="3" id="reCategoryName3">
                 <label class="form-check-label" for="reCategoryName3">
                   저작권을 침해하는 내용
                 </label><br> 
                 <input class="form-check-input" type="radio" name="reCategoryNo" value="4"  id="reCategoryName4">
                 <label class="form-check-label" for="reCategoryName4">
                   기타
                 </label>
               </div>
             </div>
             <div class="mb-3">
               <label for="message-text" class="col-form-label">상세사유</label>
               <textarea class="form-control" id="message-text" name="reportDetail" style="resize: none;"></textarea>
             </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
              <button type="submit" class="btn btn-danger">신고하기</button>
            </div>
           </form>
       </div>
     </div>
   </div>
   
   
   
   <!-- 회원 신고 모달 영역 -->
   <div class="modal fade" id="memberReport" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
           <h1 class="modal-title fs-5" id="exampleModalLabel">회원 신고하기</h1>
           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
         </div>
         <div class="modal-body">
           <div class="caution">
             해당 회원의 활동이 부적절한 경우 신고를 할 수 있습니다.<br>
             신고된 내용이 부적절한지의 여부를 결정하여 회원 블락처리 및 댓글 삭제 조치가 주어지며
             신고 기능을 악용하는 것도 위반여부를 판단하여 사용에 제한이 있을 수 있으니
             주의하시기 바랍니다.
           </div>
           <form action="${root}/seminar/member/report/${svo.no}" method="POST" onsubmit="return memberReportValid();">
             <div class="mb-3">
              <input type="hidden" id="writer-no-input" name="mNo" value="">
              <input type="hidden" id="reply-no-input" name="srNo" value="">
               <label for="recipient-name" class="col-form-label"><b>신고하시는 사유를 선택해주세요. (필수)</b></label>
               <div id="category">
                 <input class="form-check-input" type="radio" name="cNo" value="1" id="meReCategoryName1">
                 <label class="form-check-label" for="meReCategoryName1">
                   욕설/비방/혐오 발언으로 다른회원에게 공격적인 언행
                 </label><br>
                 <input class="form-check-input" type="radio" name="cNo" value="2" id="meReCategoryName2">
                 <label class="form-check-label" for="meReCategoryName2">
                   광고, 홍보, 중복 등록 등 스팸/도배 행위 
                 </label><br>
                 <input class="form-check-input" type="radio" name="cNo" value="3" id="meReCategoryName3">
                 <label class="form-check-label" for="meReCategoryName3">
                   성적/폭력적인 내용으로 불법적인 언행
                 </label><br> 
                 <input class="form-check-input" type="radio" name="cNo" value="4" id="meReCategoryName4">
                 <label class="form-check-label" for="meReCategoryName4">
                   기타
               </div>
               </label>
             </div>
             <div class="mb-3">
               <label for="message-text" class="col-form-label">상세사유</label>
               <textarea class="form-control" name="reportEx" id="member-report-message-text" style="resize: none;"></textarea>
             </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
              <button type="submit" class="btn btn-danger">신고하기</button>
            </div>
           </form>
         </div>
       </div>
     </div>
   </div>
   
   

   <!-- 푸터 -->
   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

<c:if test="${not empty alertMsg}">
   <script>
      alert("${alertMsg}");
   </script>
</c:if>
<c:remove var="alertMsg"/>

<script>

//세미나 신고 상세사유 입력체크
const radioBtn = document.querySelector("#reCategoryName4");
const detailEx = document.querySelector("#message-text");

function validateForm(){
  var selectedValue = $('input[name="reCategoryNo"]:checked').val(); // 선택된 라디오 버튼의 값 가져오기

  if (!selectedValue) {
    alert('신고 사유를 선택해주세요.'); 
    return false; 
  }

   if(radioBtn.checked && detailEx.value == ""){
      alert("신고 상세사유를 입력해주세요.");
      return false;
   }
}

//회원 신고 상세사유 입력체크
const meReRadioBtn = document.querySelector("#meReCategoryName4");
const meReportDtailEx = document.querySelector("#member-report-message-text");

function memberReportValid(){
  var selectedValue = $('input[name="cNo"]:checked').val(); // 선택된 라디오 버튼의 값 가져오기

  if (!selectedValue) {
    alert('신고 사유를 선택해주세요.'); 
    return false;
  }

  if(meReRadioBtn.checked && meReportDtailEx.value ==""){
    alert("신고 상세사유를 입력해주세요.")
    return false;
  }
}



//댓글 삭제하기
function replyDelete(replyNo , replyWriter){
  const loginMemberNo = '${loginMember.no}'; 
  if(replyWriter == loginMemberNo){
    const result = confirm("해당 댓글을 삭제하시겠습니까?");
    if(result == true){
      location.href='${root}/seminar/reply/delete?no='+replyNo+'&writerNo='+replyWriter+'&sNo=' +${svo.no};
      //alert("해당 댓글이 삭제되었습니다");
    }
  }else if(typeof loginMemberNo == 'undefined' || loginMemberNo == null || loginMemberNo == "" || replyNo != loginMemberNo){
    alert("작성자만 삭제가 가능합니다.");
  }
}


//세미나 댓글 조회하기
loadSeminarReply();

function loadSeminarReply(){
  const loginMemberNo = '${loginMember.no}';

  $.ajax({
    url : "${root}/seminar/reply/list",
    type : "get",
    data : {
      'sNo' : '${svo.no}'
    },
    dataType: "json",
    contentType:'application/json; charset=utf-8',
  success: function(data) {
    // 서버로부터 받은 JSON 데이터 처리
    const replyCountArea = document.querySelector("#replyCount-area");
    if(data == 0){
      replyCountArea.innerText = 0;
    }else{
      replyCountArea.innerText = data[0].replyCount;
    }

    for (let replyVo of data) {
      const replyTemplate = `
        <div class="reply-box">
          <img src="${root}/resources/img/member/profile/load/`+ replyVo.profile+ `" onerror= "this.onerror=null; this.src = 'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'"id="member-writed-photo">
          <div id="reply-box">
            <span><b> `+ replyVo.writerNick +` </b></span>
            <span id="reply-write-date">`+ replyVo.enrollDate + `</span>
            <span id="member-report">
              <button id="siren-btn" data-bs-toggle="modal" data-bs-target="#memberReport" data-writer-no="`+ replyVo.writerNo+ `" data-reply-no="`+ replyVo.no+`">
                신고하기
              </button>
            </span>
            <span id="edit-and-delete-area">
                <a class="reply-btn" onclick="replyDelete(`+ replyVo.no + `,`+replyVo.writerNo +`)">삭제</a>
            </span>
              <div id="writed-content">` + replyVo.content + `</div>
          </div>
          <div id="line-third"></div>
        </div>
      `;

      $('#reply-form').append(replyTemplate);
    }

$('#memberReport').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget); // 클릭한 버튼 요소 가져오기
  var writerNo = button.data('writer-no'); // 데이터 속성 값 추출
  var replyNo = button.data('reply-no'); // 데이터 속성 값 추출
  var modal = $(this);
  modal.find('#writer-no-input').val(writerNo); // 모달 내용의 writerNo input 요소에 값 설정
  modal.find('#reply-no-input').val(replyNo); // 모달 내용의 replyNo input 요소에 값 설정
});

  }
  });
}


//댓글작성 시 로그인 되어있는지 확인
function writeReply(){
  const writerNo = '${loginMember.no}'
  if(writerNo <=0){
    alert("로그인 후 이용해주세요.");
    return false;
  }
  return true;
}


//세미나 게시글 삭제
function seminarDelete(){
  if(confirm("해당 세미나를 삭제하시겠습니까?")){
    location.href='${root}/seminar/delete/${svo.no}'
  }
}

//세미나 이미 신청자인지 조회
applyCheckSeminar();

function applyCheckSeminar(){
  const applyStatusArea = document.querySelector("#apply-state");
  const loginMemberNo = '${loginMember.no}';
  $.ajax({
    url : '${root}/seminar/apply/check',
    type : 'GET',
    data : {
      'loginMemberNo' : loginMemberNo,
      'no' : '${svo.no}',
      'closeDay' : '${svo.closeDay}',
      'closeTime' : '${svo.closeTime}'
    },
    success : function (data){
      console.log(data);
      if(data == '0'){
        applyStatusArea.innerHTML +='<c:if test="${loginMember.no != svo.writerNo}">'
        applyStatusArea.innerHTML +=' <button type="button" class="btn btn-info" onclick="apllyBtn();">신청하기</button></c:if>'
      }else if(data == '1'){
        applyStatusArea.innerHTML = "<span class='apply-state'>신청완료</span>"
      }else{
        applyStatusArea.innerHTML = "<span class='apply-state'>신청마감</span>";
      }

      }, 
    error : function(error){
      console.log(error.status);
    }
  });

}

//세미나 신청 이동
function apllyBtn(){
  location.href='${root}/seminar/apply/${svo.no}';
}

</script>