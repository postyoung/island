<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <script defer src="${root}/resources/js/group/group-create.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=93e8d759aeee323f18540c3b4ad9a0aa&libraries=services"></script>
    <link rel="stylesheet" href="${root}/resources/css/group/group-create.css">
    <title>island</title>
</head>
<body>
<section id = "contact" class="contact">
    <div class = "container">
        <div class = "title">
            <h2>모임수정하기</h2>
        </div>
        <div class = "contact-me">
            <div class="left">
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-location-dot"></i>
                    </div>
                    <div class="info-text">
                        <div class="profile-image">
                            <img id="preview" src="default-profile-image.png" alt="프로필 이미지">
                            <label for="image-upload" class="custom-file-upload">이미지 업로드</label>
                            <input id="image-upload" type="file" onchange="previewImage(event)">
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-phone-volume"></i>
                    </div>
                    <div class="info-text">
                        <h3>담당자명</h3>
                        <input type="text" placeholder="" name="text" class="input" value="권순영" disabled>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-phone-volume"></i>
                    </div>
                    <div class="info-text">
                        <h3>전화번호</h3>
                        <input type="text" placeholder="" name="text" class="input" value="010-1234-5678" disabled>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="info-text">
                        <h3>이메일</h3>
                        <input type="email" placeholder="" name="text" class="input" value="ppp@gmail.com" disabled>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="info-text">
                        <h3>소속</h3>
                        <input type="email" placeholder="" name="text" class="input" value="소속" disabled>
                    </div>
                </div>

            </div>
            <div class="right">
                <form action="#">
                    <div class = "form-group">
                        <label for="name">모임명</label>
                        <input type="text" id="name" value="모임">
                    </div>
                    <div class = "form-group">
                        <label for="email">간단한 모임 소개</label>
                        <input type="text" id="email" value="간단한 모임소개">
                    </div>
                    <div class = "form-group">
                        <label for="msg">상세정보</label>
                        <div class="description-container">
                            <textarea id="description" name="description">상세내용</textarea>
                        </div>
                        <div class = "form-group">
                            <div class="date-selector">
                                <label for="msg">그룹정보</label>
                                <label for="start-date">모임 시작일:</label>
                                <input type="date" id="start-date" name="start-date">
                                <label for="end-date">모임 종료일:</label>
                                <input type="date" id="end-date" name="end-date">
                                <input type="text" id="pr" >
                            </div>
                            <input type="text" id="sample4_postcode" placeholder="우편번호">
                            <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" id="sample4_roadAddress" placeholder="도로명주소">
                            <input type="text" id="sample4_jibunAddress" placeholder="지번주소">
                            <span id="guide" style="color:#999;display:none"></span>
                            <input type="text" id="sample4_detailAddress" placeholder="상세주소">
                            <input type="text" id="sample4_extraAddress" placeholder="참고항목">
                        </div>
                        <a href="${root}/group/detail"><button type="submit">수정하기</button></a>
                </form>
            </div>
        </div>
    </div>
</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>


</html>
