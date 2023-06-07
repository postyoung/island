<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  <!-- 헤더 -->
  <%@ include file="/WEB-INF/views/common/header-member.jsp" %>
  <title>island</title>
  <link rel="stylesheet" href="${root}/resources/css/group/group-join.css">
</head>

<body style="background: #f7f9fc">
<div class="container">
  <h1>신청하기</h1>
  <p>신청정보</p>
  <div class="white-box">
    <div class="row">
      <div class="col-md-8">
        <div class="d-flex">
          <div class="flex-shrink-0">
            <img src="${root}/resources/img/group/upload/example.jpeg">
          </div>
          <div class="flex-grow-1 ms-3 py-2">

            <div class="mb-2 width">모임제목</div>
            <div class="mb-2 width">모임기간</div>
            <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                      class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
              <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
            </svg>모임장소</div>
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
  <table class="group_table free">
    <thead>
    <tr>
      <th scope="col" class="group_name">그룹명</th>

      <th scope="col" class="members">신청인원</th>


      <th scope="col" class="selection_type">
        선정방식
        <div class="help_tip"></div>
      </th>
    </tr>
    </thead>
    <tbody>
    <tr  data-group_name="" data-group_members="1" data-group_price="0">
      <td class="group_name">그룹명
        <div class="label_wrap"></div>
      </td>
      <td class="members">1명</td>

      <td class="selection_type">선착순</td>
    </tr>

    </tbody>
  </table>
  <div class="find-btn">
    <a href="${root}/group/detail"> <button class="btn btn-primary">신청하기</button></a>
    <a href="${root}/group/detail"> <button class="btn btn-primary">취소하기</button></a>
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

    </div>
  </div>
</div>
</div>
</div>







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
<!-- 푸터 -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>