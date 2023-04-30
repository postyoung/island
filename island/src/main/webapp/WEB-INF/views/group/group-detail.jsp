<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <%@include file="/WEB-INF/views/common/header-member.jsp" %>
        <style>
.grbutton {
 color: #ecf0f1;
 font-size: 17px;
 background-color: #e67e22;
 border: 1px solid #f39c12;
 border-radius: 5px;
 padding: 10px;
 box-shadow: 0px 6px 0px #d35400;
 transition: all .1s;
}
.grbutton:active {
 box-shadow: 0px 2px 0px #d35400;
 position: relative;
 top: 2px;
}
        </style>
    <title>Document</title>
</head>
<body>
    <div class="flex mb-5">
        <div class="flex max-h-80">
            <img class="object-contain" src="예시 이미지.jpeg" alt="모임이미지">
        </div>
        <div class="flex flex-column justify-between pl-3 py-3">
            <div>
                <h2 class="text-3xl">모임제목</h2>
            </div>
            <div class="text-md">
                <div>모임기간</div>
                <div>모임장소</div>
                <div>한줄소개</div>
                <div>날짜</div>
            </div>
            <div>
                <button class="grbutton">신청하기</button>
                <div class="right_area">
                    <a href="javascript:;" class="icon heart">
                       <img style="width:10px" src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
                    </a>
                  </div>
            </div>
        </div>
        <div>
            <h1>상세보기</h1>
            <textarea name="main" id="" cols="300" rows="50"></textarea>
        </div>
        <div>
            <h1>지도보기</h1>
        </div>
        <div>
            <h1>리뷰</h1>
        </div>
</body>
 <%@ include file="/WEB-INF/views/common/footer.jsp" %>	
</html>