<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <%@include file="/WEB-INF/views/common/header-member.jsp" %>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

  <title>Hello, world!</title>
  <style>
    .white-box {
      background: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0.5px 0.5px 2px 1px #eee;
    }

    .pill {
      
      border: 1px solid lightgray;
      border-radius: 100px;
      padding: 3px 12px 5px 12px;
      margin-right: 2px;
      margin-bottom: 5px;
    }
  </style>

</head>

<body style="background: #f7f9fc">

  <div class="container">
    <div class="white-box">
      <div class="row">
        <div class="col-md-8">
          <div class="d-flex">
            <div class="flex-shrink-0">
              <img src="예시 이미지.jpeg">
            </div>
            <div class="flex-grow-1 ms-3 py-2">
              
              <p class="mb-2 width">모임제목</p>
              <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                  class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                  <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                </svg>모임장소</p>
              <button class="btn btn-primary">신청하기</button>
            </div>
          </div>
        </div>
        <div class="col-md-4 mt-4 mt-md-1" style="font-size: 16px">
          <div class="row">
            <div class="col-6">
              <p>이름</p>
            </div>
            <div class="col-6">
              <p>이메일</p>
            </div>
            <div class="col-6">
              <p>소속</p>
            </div>
            <div class="col-6">
              <p>전화번호</p>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>


  <div class="container mt-4">
    <div class="row">
      <div class="col-md-3">
        <!-- <div class="white-box">
          <h4>Works</h4>
          <p>lorem ipsum</p>
        </div> -->
      </div>
      <div class="col-md-6">
        <div class="white-box">
          <h4>지도</h4>
          <textarea name="main" id="" cols="68" rows="30"></textarea>
          <hr>
        </div>
       
      

        
          </div>
        </div>


      </div>
    </div>
  </div>






  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
    crossorigin="anonymous"></script>

</body>
 <%@ include file="/WEB-INF/views/common/footer.jsp" %>	

</html>