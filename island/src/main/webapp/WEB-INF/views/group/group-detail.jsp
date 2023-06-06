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
                        <p class="mb-2 width" >모임소개</p>
                        <p class="mb-2 width">모임일시 : ${smallGroup.starttime}</p>
                        <p class="mb-2 width">모집인원 : ${smallGroup.peoplenum}명</p>
                        <p class="mb-2 width">모집마감일 : ${smallGroup.finishtime}</p>
                        <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                        </svg>모임장소</p>
                        <a href="${root}/group/join"><button class="btn btn-primary" onclick="ask()">신청하기</button></a></a>
                        <br>
                        <button type="button" class="btn btn-primary">신고<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-megaphone-fill" viewBox="0 0 16 16">
                            <path d="M13 2.5a1.5 1.5 0 0 1 3 0v11a1.5 1.5 0 0 1-3 0v-11zm-1 .724c-2.067.95-4.539 1.481-7 1.656v6.237a25.222 25.222 0 0 1 1.088.085c2.053.204 4.038.668 5.912 1.56V3.224zm-8 7.841V4.934c-.68.027-1.399.043-2.008.053A2.02 2.02 0 0 0 0 7v2c0 1.106.896 1.996 1.994 2.009a68.14 68.14 0 0 1 .496.008 64 64 0 0 1 1.51.048zm1.39 1.081c.285.021.569.047.85.078l.253 1.69a1 1 0 0 1-.983 1.187h-.548a1 1 0 0 1-.916-.599l-1.314-2.48a65.81 65.81 0 0 1 1.692.064c.327.017.65.037.966.06z"/>
                        </svg></button>
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
                        <div id="pro" class="mb-0">이름 : ${loginMember.name}</div>
                        <div class="mb-2 width">이메일 : ${loginMember.email}@${loginMember.email2}</div>
                        <div class="mb-2 width">전화번호 : 010-1234-5678</div>
                        <div class="mb-2 width">소속 : 없음</div>
                        <a href="${root}/group/edit"><button class="btn btn-primary" onclick="modify()">수정하기</button></a>
                        <a href="${root}/group/list"><button class="btn btn-primary" onclick="detaildelete()">삭제하기</button></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <div class="white-box">
                <h1>상세내용</h1>
                <hr>
                <div>
                    ${smallGroup.exintro}
                    <hr>
                    <c:forEach var="image" items="${detailImages}">
                        <img src="${root}/resources/img/group/upload/${image.changeName}" width="100%" alt="${image.originName}">
                    </c:forEach>
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
    </div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

<script>

</script>
