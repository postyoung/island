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
                        <c:forEach var="image" items="${detailImages}">
                            <img id="groupfro" src="${root}/resources/img/group/upload/${image.changeName}" alt="사진 불러올 수 없음">
                        </c:forEach>
                    </div>
                    <div class="flex-grow-1 ms-3 py-2">
                        <h2 class="mb-0">${smallGroup.name}</h2>
                        <p class="mb-2 width" >${smallGroup.intro}</p>
                        <p class="mb-2 width">모임일시 : ${smallGroup.starttime}</p>
                        <p class="mb-2 width">모집인원 : ${smallGroup.peoplenum}명</p>
                        <p class="mb-2 width">신청기간 : ${smallGroup.applydate} </p>
                        <p class="mb-2 width">모집마감일 : ${smallGroup.finishtime}</p>
                        <p class="mb-2 width">모집장소 : ${smallGroup.place}</p>


                        <a href="${root}/group/join"><button class="btn btn-primary" onclick="ask()">신청하기</button></a></a>
                        <br>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            신고하기
                        </button>
                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        ...
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Understood</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        <img style="border-radius: 20%" src="${root}/resources/img/member/profile/load/${loginMember.profileName}" class="mt-2" width="60px">
                    </div>
                    <div class="flex-grow-1 ms-3 py-2">
                        <div id="pro" class="mb-0">이름 : ${loginMember.name}</div>
                        <div class="mb-2 width">이메일 : ${loginMember.email}@${loginMember.email2}</div>
                        <div class="mb-2 width">전화번호 : ${loginMember.phone}</div>
                        <div class="mb-2 width">소속 : ${loginMember.attach}</div>
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
