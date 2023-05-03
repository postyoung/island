<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="ko">
    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>ISLAND Q&A게시판 | ISLAND</title>    
     <%@include file="/WEB-INF/views/common/header-member.jsp" %>
        <!-- css연결 -->
    <link rel="stylesheet" href="${root}/resources/css/member/QnAlist.css">
    
    
    </head>
    <body>
    
    <!-- 고객센터 전체 -->
    <!-- 메뉴바 -->
    <div id="wrap">
    <div class="p-4 p-md-5 mb-4 rounded text-bg-white title-area back-area">
        <h1 class="text-center" id="title">1:1 문의하기</h1>
        <h5 class="text-center">아일랜드에서 알려드립니다.</h5>
    </div>
    
    <nav id="communication-menu">
      <a href="#"><b>공지사항</b></a>
      <a href="#">자주하는질문</a>
      <a href="#">1:1 문의하기</a>
      <a href="/commu-seminar-review copy.html">세미나 리뷰</a>
    </nav>
    
    
    <div class="container notice-area">
      <table class="table table-hover table-bordered" style="text-align: center;">
        <thead>
          <tr class="table-light">
            <th>글번호</th>
            <th>제목</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <tr>
            <td>01</td>
            <td>아이디 찾기가 안돼요..</td>
            <td>2021/03/21</td>
          </tr>
    
        </tbody>
      </table>
    </div>
  <form action="">
    <div>
      <input type="submit" class="btn btn-outline-primary" value="작성하기" style="margin-left: 80%;">
    </div>
  </form>

    
            <br><br>
                
                <!-- 페이징 -->
                <div class="paging-area">
    
                  <nav aria-label="..." >
                    <ul class="pagination" >
                      <li class="page-item disabled">
                        <a class="page-link">이전</a>
                      </li>
                      <li class="page-item active"><a class="page-link" href="#">1</a></li>
                      <li class="page-item " aria-current="page">
                        <a class="page-link" href="#">2</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">다음</a>
                      </li>
                    </ul>
                  </nav>
    
                </div>
    
    
                
                
    
          </div>
        </div>
      </div>
              
    
    
    
      <!-- 푸터 -->
      <div class="container">
        <footer class="py-5">
          <div class="row">
            <div class="col-6 col-md-2 mb-3">
              <h5 class="footer-part">고객센터</h5>
              <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">1:1문의</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQ</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">공지사항</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">개인정보처리방침</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">서비스약관 및 정책</a></li>
              </ul>
            </div>
      
            <div class="col-6 col-md-2 mb-3" style="text-align: center;">
              <h5  class="footer-part">메뉴</h5>
              <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">소모임</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">세미나</a></li>
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
              <img id="footer-logo" src="/img/메인로고.png" alt="이미지" width="200px" height="100px" >
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
    