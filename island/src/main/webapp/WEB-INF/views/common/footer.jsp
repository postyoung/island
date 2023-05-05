<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- 푸터 -->
  <div class="container">
    <footer class="py-5" style="background-color: white;">
      <div class="row">
        <div class="col-6 col-md-2 mb-3">
          <h5 class="footer-part">고객센터</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="${root}/community/notice/list" class="nav-link p-0 text-body-secondary">공지사항</a></li>
            <li class="nav-item mb-2"><a href="${root}/community/faq/list" class="nav-link p-0 text-body-secondary">FAQ</a></li>
            <li class="nav-item mb-2"><a href="${root}/community/qna/list" class="nav-link p-0 text-body-secondary">1:1문의</a></li>
            <li class="nav-item mb-2"><a href="${root}/community/seminarReview/list" class="nav-link p-0 text-body-secondary">세미나 리뷰</a></li>
            <!-- <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">서비스약관 및 정책</a></li> -->
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">개인정보처리방침</a></li>
          </ul>
        </div>
  
        <div class="col-6 col-md-2 mb-3" style="text-align: center;">
          <h5  class="footer-part">메뉴</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="${root}/group/list" class="nav-link p-0 text-body-secondary">소모임</a></li>
            <li class="nav-item mb-2"><a href="${root}/seminar/list" class="nav-link p-0 text-body-secondary">세미나</a></li>
          </ul>
        </div>
  
        <div class="col-md-5 offset-md-1 mb-3">
          <h5  class="footer-part">회사 정보</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2">(주)아일랜드</a></li>
            <li class="nav-item mb-2">대표이사 | IDEA</li>
            <li class="nav-item mb-2">주소 | 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</li>
            <li class="nav-item mb-2">Tel. 02 -1234 -1234</li>
            <li class="nav-item mb-2">Email. abc@naver.com </li>
          </ul>
        </div>
  
        <div class="col-6 col-md-2 mb-3">
          <img id="footer-logo" src="${root}/resources/img/common-logo/main-logo.png" alt="이미지" width="200px" height="100px" >
        </div>
      </div>
  
      <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
        <p>&copy; 2023 Company, Inc. All rights reserved.</p>
        <ul class="list-unstyled d-flex">
          <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
          <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
          <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
        </ul>
      </div>
      


    </footer>
  </div>

</body>
</html>