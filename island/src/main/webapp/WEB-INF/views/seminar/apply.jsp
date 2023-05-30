<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 신청 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
	<link rel="stylesheet" href="${root}/resources/css/seminar/apply.css">
	<script defer src="${root}/resources/js/seminar/apply.js"></script>
	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>


  <!--IMPORT -->
  <!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<!-- 토스 -->
<script src="https://js.tosspayments.com/v1/payment"></script>
	
</head>
<body>
	 <!-- 세미나 참가신청 영역 -->
  <div id="seminar-outer-area">

    <div id="seminar-apply-area">
      <div id="seminar-apply-title">
        <h2>세미나 신청하기</h2>
      </div>
      <div id="line"></div>

      <div class="apply-area">
        <h5 id="apply-info-title">세미나 정보</h5>
        <div id="line-second"></div>
      </div>
    
      <div id="apply-info-area">
        
          <img id="seminar-apply-photo" src="${root}/resources/img/seminar/upload/${svo.seminarThumbnail}" alt="세미나사진">
        <table class="info-text">
          <tr>
            <td id="seminar-name">
             [세미나] ${svo.name}
            </td>
          </tr>
          <tr>
            <td class="info">
              세미나 장소 : ${svo.place} ${detailAddress}
            </td>
          </tr>
          <tr>
            <td class="info">
              일시 : ${svo.startDay}   |  시간 : ${svo.seminarTime}
            </td>
          </tr>
          <tr>
            <td class="info">
              ${svo.payYn}  |  비용 : <fmt:formatNumber value="${svo.expense}" pattern="#,### 원"/>
            </td>
          </tr>
        </table><br>


        <!-- 신청자 정보 입력 -->
        <div id="title">신청자 정보</div>※회원의 정보와 연동됩니다.
        <div id="member-info">
          <table class="table table-bordered" id="info-table" style="table-layout: fixed">
            <tr>
              <th class="table-light" width="10%">이름</th>
              <td>${loginMember.name}</td>
              <th class="table-light"  width="15%">이메일</th>
              <td>${loginMember.email}@${loginMember.email2}</td>
            </tr>
            <tr>
              <th class="table-light">소속</th>
              <td>${loginMember.attach}</td>
              <th class="table-light">전화번호</th>
              <td>${loginMember.phone}</td>
            </tr>
          </table>
        </div>


        <!-- 결제 정보 -->
        <div id="title">결제정보</div>
        <div id="pay-info">
          <table class="table table-bordered" id="info-table" style="table-layout: fixed">
            <tr>
              <th class="table-light" width="13%">결제금액</th>
              <th class="pay"><fmt:formatNumber value="${svo.expense}" pattern="#,### 원"/></th>
              
            </tr>
            	<c:if test="${svo.expense ne '0' && svo.expense gt 0}">
            	
		            <tr>
		              <th class="table-light">결제수단</th>
		              <td>
		                <div>
		                  <button type="button" class="btn btn-outline-secondary" id="card">
		                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card" viewBox="0 0 16 16">
		                      <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"/>
		                      <path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"/>
		                    </svg>
		                    신용카드
		                  </button>
		                  <button type="button" class="btn btn-outline-secondary" id="account">
		                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-exchange" viewBox="0 0 16 16">
		                      <path d="M0 5a5.002 5.002 0 0 0 4.027 4.905 6.46 6.46 0 0 1 .544-2.073C3.695 7.536 3.132 6.864 3 5.91h-.5v-.426h.466V5.05c0-.046 0-.093.004-.135H2.5v-.427h.511C3.236 3.24 4.213 2.5 5.681 2.5c.316 0 .59.031.819.085v.733a3.46 3.46 0 0 0-.815-.082c-.919 0-1.538.466-1.734 1.252h1.917v.427h-1.98c-.003.046-.003.097-.003.147v.422h1.983v.427H3.93c.118.602.468 1.03 1.005 1.229a6.5 6.5 0 0 1 4.97-3.113A5.002 5.002 0 0 0 0 5zm16 5.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0zm-7.75 1.322c.069.835.746 1.485 1.964 1.562V14h.54v-.62c1.259-.086 1.996-.74 1.996-1.69 0-.865-.563-1.31-1.57-1.54l-.426-.1V8.374c.54.06.884.347.966.745h.948c-.07-.804-.779-1.433-1.914-1.502V7h-.54v.629c-1.076.103-1.808.732-1.808 1.622 0 .787.544 1.288 1.45 1.493l.358.085v1.78c-.554-.08-.92-.376-1.003-.787H8.25zm1.96-1.895c-.532-.12-.82-.364-.82-.732 0-.41.311-.719.824-.809v1.54h-.005zm.622 1.044c.645.145.943.38.943.796 0 .474-.37.8-1.02.86v-1.674l.077.018z"/>
		                    </svg>
		                    실시간 계좌이체
		                  </button>
		                  
		                  <div style="margin-left: 10px;">간편결제</div>
		                  <button type="button" class="btn btn-light" id="kakaopay">
		                    <img src="${root}/resources/img/seminar/kakaopay.png" onclick="kakaopay()" alt="카카오페이" width="80px" height="27px">
		                  </button>
		                  <button type="button" class="btn btn-light" id="naverpay">
		                    <img src="${root}/resources/img/seminar/naverpay.png" alt="네이버페이" width="80px" height="27px">
		                  </button>
		                  </button>
		                  <button type="button" class="btn btn-light" id="tosspay">
		                    <img src="${root}/resources/img/seminar/tosspay.png" id="payment-button" alt="토스페이" width="110px" height="55px" style="margin-top: -13px;">
		                  </button>
		                </div>
		
		              </td>
		            </tr>
            	</c:if>

          </table>
        </div>

        <!-- 신청자 동의 -->
        <div id="title">신청자 동의</div>
        <div id="member-agree">
          <table class="table table-bordered" style="table-layout: fixed">
            <tr>
              <th class="table-light" width="13%">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                전체동의
              </th>
              <td id="agree-info">
                <input class="form-check-input" type="checkbox" name="box1" id="flexCheckDefault2">
                (필수) 개인정보 제3자 제공 동의 내용보기<br>
                아일랜드(이하 “회사“)는 신청자와 개설자간 원활한 의사소통 및 모임 진행을 위하여 필요한 최소한의 개인정보만을 개설자에게 제공하며, 
                회사가 제공하는 서비스를 통하여 결제가 이루어진 경우 거래 당사자간 원활한 의사소통과 세미나 등 거래이행을 위하여
                 관련된 정보를 필요한 범위 내에서 거래 당사자에게 제공합니다.<br>
                1. 회사는 귀하께서 세미나 참여를 신청하고자 할 경우, 개인정보 보호법에 따라 아래와 같은 사항은 
                안내하고 동의를 받아 귀하의 개인정보를 제3자에게 제공합니다.＂개인정보 제3자 제공 동의”를 체크하시면 
                개인정보 제공에 대해 동의한 것으로 간주합니다.
                개인정보를 제공받는자 : 세미나 개설자(아일랜드), KG 이니시스<br>
                2. 제공하는 개인정보 항목 : 신청자 이름, 전화번호, 이메일 등<br>
                3. 개인정보를 제공받는 자의 이용 목적 : 모임 신청자와 개설자간 원활한 참여 진행, 본인의사의 확인<br>
                4. 개인정보를 제공받는 자의 개인정보 보유 및 이용 기간<br>
                - 모임 종료 후 3개월 / 회원탈퇴 시 혹은 위탁계약 종료시 까지
                개인정보 제3자 제공 동의는 거부할 수 있으며, 이 경우 참여 신청이 제한될 수 있습니다.<br><br>
                <input class="form-check-input" type="checkbox" name="box2" id="flexCheckDefault3">
                (필수) 취소/환불약관 동의 내용보기<br>
                신청기간 마감 전까지 환불신청 가능(결제수단, 사유, 환불시점에 따라 수수료 차감)
              </td>
            </tr>
          </table>
        </div>
        <form action="${root}/seminar/apply/${svo.no}" method="post" onsubmit="return applyCheck();">
          <input type="hidden" name="loginMemberNo" value="${loginMember.no}">

          <div id="btn-area">
            <c:if test="${svo.expense eq '0' || svo.expense le 0}">
              <input type="submit" class="btn btn-primary" value="신청하기"/>
            </c:if>
            <button type="button" class="btn btn-secondary" id="cancle" onclick="history.back();">취소하기</button>
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
<script>

  const checkBox2 = document.querySelector("input[name=box1]");
  const checkBox3 = document.querySelector("input[name=box2]");
  
  function applyCheck() {
    if (!checkBox2.checked || !checkBox3.checked) {
      alert("필수 동의를 체크해주세요.");
      return false;
    } 
    return true;
  }


  function kakaopay(){
  const result = false;

    if (!checkBox2.checked || !checkBox3.checked) {
      alert("필수 동의를 체크해주세요.");
      return;
    } 
    
        var IMP = window.IMP;
        IMP.init('키값');
        IMP.request_pay({      
            pg : '키값',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),   //주문번호
            name : '[세미나]${svo.name}',                        //상품명
            amount : '${svo.expense}',                          //가격
            //customer_uid : buyer_name + new Date().getTime(),  //해당 파라미터값이 있어야 빌링 키 발급 시도
            buyer_email : $('.sessionuserID').val(),             //구매자 이메일
            buyer_name : '${loginMember.name}',                           //구매자 이름
            buyer_tel : 'hp',                                    //전화번호
            buyer_addr : 'addr',                                //주소
            buyer_postcode : '123-456'                           //우편번호 
         },function(data){
            if(data.success){
               var msg = "결제가 완료 되었습니다! 감사합니다.";               //아임포트 uid는 실제 결제 시 결제 고유번호를 서버와 비교해서 결제처리하는데 필요없긴함.
                  
                  $.ajax({
                     type : 'GET',
                     url : '${root}/seminar/apply/pay',
                     data : {
                      "sNo"  : '${svo.no}',
                      "mNo"  : '${loginMember.no}',
                      "pwNo" : '1'
                    },
                  });
              }else{
                 var msg = "결제 실패"
                 msg += "에러 내용" + rsp.error_msg;
              }
            alert(msg);
            document.location.href="${root}/seminar/list";
         });

    }


    //토스
    var clientKey = 'test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq'
      var tossPayments = TossPayments(clientKey)

      var button = document.getElementById('payment-button') // 결제하기 버튼

      button.addEventListener('click', function () {
        const result = false;

        if (!checkBox2.checked || !checkBox3.checked) {
          alert("필수 동의를 체크해주세요.");
          return;
        }
        tossPayments.requestPayment('카드', {
          amount: '${svo.expense}',
          orderId: 'RBcbHjKR-NmlxD-oMTdLO',
          orderName:  '[세미나] ${svo.name}',
          customerName: '${loginMember.name}',
          successUrl: 'http://127.0.0.1:8888/app/seminar/apply/pay?sNo=${svo.no}&mNo=${loginMember.no}&pwNo=2',
          failUrl: 'http://127.0.0.1:8888/app/seminar/list',
        })
      })
  

  </script>	
    