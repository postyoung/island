<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 리뷰상세 | ISLAND</title>
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${root}/resources/css/community/review/detail.css">
<script defer src="${root}/resources/js/community/review/detail.js"></script>

</head>
<body>


	<!-- 고객센터 전체 -->
	<!-- 메뉴바 -->
	<div id="wrap">
	  <div class="p-4 p-md-5 mb-4 rounded text-bg-white back-area">
	    <h1 class="text-center" id="title">세미나 리뷰</h1>
	    <h5 class="text-center">세미나 참석 한 회원의 리뷰를 조회 가능합니다.</h5>
	  </div>
	</div>
	
	<nav id="communication-menu">
	  <a href="#" class="menu-title">공지사항</a>
	  <a href="#">자주하는질문</a>
	  <a href="#">1:1 문의하기</a>
	  <a href="#"><b>세미나 리뷰</b></a>
	</nav>
	
	<!-- 타이틀영역 -->
	<div>
	  <div id="review-write-area">
	    <div id="top-area">
	      REVIEW
	    </div>
	    <div id="siren-area">
	      <button id="siren-btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
	        <img src="${root}/resources/img/seminar/siren-icon.png" alt="신고아이콘" id="siren-icon">
	      </button>
	    </div>
	    <div id="line"></div>
	
	    <div id="seminar">
	      <a href="#">[세미나] <span> 나에게 딱 맞는 창업아이템 온라인 특강</span></a>
	    </div>
	      <table>
	        <tr>
	          <th class="text-center">작성자</th>
	          <td class="left-line">도리도리</td>
	        </tr>
	        <tr>
	          <th class="text-center">제목</th>
	          <td class="left-line">이런 세미나가 자주 열렸으면 좋겠습니다. 추천합니다!</td>
	        </tr>
	        <tr>
	          <th class="text-center">평점</th>
	          <td class="left-line">
	            <label for="point0">★★★★★</label>
	          </td>
	        </tr>
	        <tr>
	          <th colspan="2" class="text-content">내용</th>
	        </tr>
	        <tr>
	          <td colspan="2">
	            <div id="content-text-img">
	            창업아이템 세미나에 참석하고 나서, 다양한 창업 아이디어와 경험을 공유받았습니다.
	             세미나에서는 성공적인 창업을 위한 기본 원칙과 함께, 창업을 위한 아이디어 도출 
	             방법, 마케팅 전략 등에 대한 내용이 다루어졌습니다.<br>
	
	            특히, 다른 참가자들과 함께 공유한 경험들은 매우 유익했습니다.<br>
	            세미나를 통해 새로운 아이디어를 발견하고, 그 아이디어를 발전시키는 방법들을 
	            배울 수 있었습니다. 세미나의 강사분들은 창업 경험이 많으셨기 때문에, 
	            우리에게 실제적인 조언과 해결책을 제시해주셨습니다.<br>
	
	            또한, 세미나는 다양한 팀 프로젝트 및 토론 활동을 포함하여 진행되었습니다. <br>
	            이를 통해 참가자들은 아이디어를 더욱 발전시키기 위한 협업의 중요성과, 
	            다른 의견을 수렴하고 존중하는 방법을 배웠습니다.<br>
	
	            마지막으로, 이번 창업아이템 세미나는 나에게 큰 도전과 기회를 제공해주었습니다. 세미나를 통해 배운 내용을 실제로 적용하여, 나의 창업 아이디어를 발전시키는 데 큰 도움이 되었습니다. 나는 이번 세미나를 통해, 나의 창업 경험을 더욱 확장하고, 창업에 대한 열정을 더욱 강화시키게 되었습니다.
	            <img id="review-photo" src="${root}/resources/img/community/review/upload/review1.jpg" alt="리뷰사진">
	            </div>
	          </td>
	        </tr>
	      </table>
	      <div id="btn-area">
	        <button type="button" type="submit" class="btn btn-success">수정하기</button>
	        <button type="button" type="submit" class="btn btn-danger box" onclick="reviewDelete()">삭제</button>
	        <button type="button" class="btn btn-secondary box">목록</button>
	      </div>
	  </div>
	</div>
	
	</div>
	
	<!-- 리뷰 신고 모달 영역 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h1 class="modal-title fs-5" id="exampleModalLabel">세미나 리뷰 신고하기</h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <div class="caution">
	          해당 리뷰가 부적절한 리뷰일 경우 신고를 할 수 있습니다.<br>
	          신고된 리뷰 내용이 부적절한지의 여부를 결정하여 삭제 조치가 주어지며
	          신고 기능을 악용하는 것도 위반여부를 판단하여 사용에 제한이 있을 수 있으니
	          주의하시기 바랍니다.
	        </div>
	        <form>
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label"><b>신고하시는 사유를 선택해주세요. (필수)</b></label>
	            <div id="category">
	              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
	              <label class="form-check-label" for="flexRadioDefault1">
	                내용이 선정적이거나, 음란물, 폭력적 컨텐츠를 포함
	              </label><br>
	              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
	              <label class="form-check-label" for="flexRadioDefault1">
	                내용에 허위 정보, 사기성 광고, 인신공격, 혐오발언 포함 
	              </label><br>
	              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
	              <label class="form-check-label" for="flexRadioDefault1">
	                개인정보 누출 위험
	              </label><br> 
	              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
	              <label class="form-check-label" for="flexRadioDefault1">
	                기타
	            </div>
	            </label>
	            <!-- <select class="form-select">
	              <option value="0" selected>선택하기</option>
	              <option value="1"></option>
	              <option value="2">내용에 허위 정보, 사기성 광고, 인신공격, 혐오발언 포함</option>
	              <option value="3">기타</option>
	            </select> -->
	          </div>
	          <div class="mb-3">
	            <label for="message-text" class="col-form-label">상세사유</label>
	            <textarea class="form-control" id="message-text" style="resize: none;"></textarea>
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