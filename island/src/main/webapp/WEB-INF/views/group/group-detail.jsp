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
    <script defer src="${root}/resources/js/group/group-detail.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=93e8d759aeee323f18540c3b4ad9a0aa&libraries=services"></script>
    <link rel="stylesheet" href="${root}/resources/css/group/group-detail.css">
    <script defer src="${root}/resources/js/group/group-detail.js"></script>
    <title>island</title>
</head>
<body style="background: #f7f9fc">

<div class="container">
    <div class="white-box">
        <div class="row">
            <div class="col-md-8">
                <div class="d-flex">
                    <div class="flex-shrink-0">
                        <img id="groupfro" src="${root}/resources/img/group/k.jpeg">
                    </div>
                    <div class="flex-grow-1 ms-3 py-2">
                        <h2 class="mb-0">모임제목</h2>
                        <p class="mb-2 width">모임소개</p>
                        <p class="mb-2 width">모임일시 : </p>
                        <p class="mb-2 width">모집인원 : 1명</p>
                        <p class="mb-2 width">모집마감일 : 2023</p>
                        <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                        </svg>모임장소</p>
                        <a href="${root}/group/join"><button class="btn btn-primary">신청하기</button></a></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</div>


<div class="container mt-4">
    <div class="row">
        <div class="col-md-3">
            <div class="white-box">
                <div class="d-flex" style="font-size: 12px;">
                    <div class="flex-shrink-0">
                        <img src="${root}/resources/img/group/k.jpeg" class="mt-2" width="60px">
                    </div>
                    <div class="flex-grow-1 ms-3 py-2">
                        <div id="pro" class="mb-0">이름 : 권순영</div>
                        <div class="mb-2 width">이메일 : postsoonyoung@gmail.com</div>
                        <div class="mb-2 width">전화번호 : 010-1234-5678</div>
                        <div class="mb-2 width">소속 : 없음</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="white-box">
                <h1>상세내용</h1>
                <hr>
                <div>
                    1) 모든 요일 수준별 반편성.
                    <br>
                    2) 기타입문자 원데이클래스로 맛보기 강습 체험가능.
                    <br>
                    3) 정규반 1달 등록에 강습 무제한 수강.
                    <br>
                    4) 연습실 무료사용. 악기 무료대여.
                    <br>
                    5) 일렉반, 드럼은 소수로 1인1악기 개별 강습.
                    <br>
                    6) 강습이후 카페같은 이쁜공간에서 반사람들과 친목, 뒷풀이, 합주,공연, 다과 등 힐링의 시간을 보내실 수 있습니다^^
                    <hr>
                    <h2>지도보기</h2>
                    <hr>
                    <h2>댓글</h2>
                    <form>
                        <label for="name">이름:</label>
                        <input type="text" id="name" name="name" required>
                        <label for="comment">댓글:</label>
                        <textarea id="comment" name="comment" required></textarea>
                        <button type="submit">제출</button>
                    </form>
                    <div id="comment-list"></div>
                </div>
            </div>
        </div>
                    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
