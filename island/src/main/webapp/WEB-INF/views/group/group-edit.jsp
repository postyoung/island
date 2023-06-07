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
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/offcanvas-navbar/">
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
            <h2>수정하기</h2>
        </div>
        <form class="create" method="get" enctype="multipart/form-data">
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
                            <td>담당자</td>
                            <td><input type="text" placeholder="" name="text" class="input" value="${loginMember.nick}"></td>
                        </div>
                    </div>
                    <div class="card">
                        <div class="icon">
                            <i class="fa-solid fa-phone-volume"></i>
                        </div>
                        <div class="info-text">
                            <td>전화번호</td>
                            <td><input type="text" placeholder="" name="text" class="input" value="${loginMember.phone}"></td>
                        </div>
                    </div>
                    <div class="card">
                        <div class="icon">
                            <i class="fa-solid fa-envelope"></i>
                        </div>
                        <div class="info-text">
                            <td>이메일</td>
                            <td><input type="email" placeholder="" name="text" class="input" value="${loginMember.email}"></td>
                        </div>
                    </div>
                    <div class="card">
                        <div class="icon">
                            <i class="fa-solid fa-envelope"></i>
                        </div>
                        <div class="info-text">
                            <td>소속</td>
                            <td><input type="text" placeholder="" name="text" class="input" value="${loginMember.attach}"></td>
                        </div>
                    </div>
                    <div class="card">
                        <div class="icon">
                            <i class="fa-solid fa-envelope"></i>
                        </div>
                        <div class="info-text">
                            <td>모집인원</td>
                            <td><input type="text" placeholder="" name="text" class="input" value="${create.peoplenum}"></td>
                        </div>
                    </div>
                    <div class="card">
                        <div class="dropdown">
                            <td>카테고리</td>
                            <!-- Example single danger button -->
                            <div class="btn-group">
                                <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                    Action
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">취미</a></li>
                                    <li><a class="dropdown-item" href="#">교육</a></li>
                                    <li><a class="dropdown-item" href="#">문화</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Separated link</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="right">

                    <div class = "form-group">
                        <label for="name">모임명</label>
                        <input type="text" id="name" value="${create.name}">
                    </div>
                    <div class = "form-group">
                        <label for="name">간단한 모임 소개</label>
                        <input type="text" id="text" value="${create.intro}">
                    </div>
                    <div class = "form-group">
                        <label for="msg">상세정보</label>
                        <div class="description-container">
                            <textarea id="description" name="description"></textarea>
                        </div>
                        <div class = "form-group">
                            <div class="date-selector">
                                <label for="msg">그룹정보</label>
                                <label for="start-date">모임 시작일:</label>
                                <input type="date" id="start-date" name="start-date" value="${create.starttime}">
                                <label for="end-date">모임 종료일:</label>
                                <input type="date" id="end-date" name="end-date" value="${create.finishtime}">
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

                        <a href="${root}/group/list"><button type="submit" onclick="groupcreate()">수정하기</button></a>


                    </div>
                </div>

            </div>
        </form>
    </div>
    </div>

</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
