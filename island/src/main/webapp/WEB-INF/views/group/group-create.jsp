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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js" />
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
            <h2>개설하기</h2>
        </div>
        <form class="create" method="post" enctype="multipart/form-data">
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
                            <input id="image-upload" name="thumbnailFile" type="file" onchange="previewImage(event)">
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-phone-volume"></i>
                    </div>
                    <div class="info-text">
                        <td>담당자</td>
                        <td><input type="text" placeholder="담당자" class="input" value="${loginMember.nick}" disabled></td>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-phone-volume"></i>
                    </div>
                    <div class="info-text">
                        <td>전화번호</td>
                        <td><input type="text" placeholder="전화번호" name="text" class="input" value="${loginMember.phone}" disabled></td>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="info-text">
                        <td>이메일</td>
                        <td><input type="email" placeholder="이메일" class="input" value="${loginMember.email}@${loginMember.email2}" disabled></td>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="info-text">
                        <td>소속</td>
                        <td><input type="text" placeholder="소속" class="input" value="${loginMember.attach}" disabled></td>
                    </div>
                </div>
                <div class="card">
                    <div class="icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="info-text">
                        <td>모집인원</td>
                        <td><input type="number" min="1" placeholder="" name="peoplenum" class="input" value="${create.peoplenum}" required></td>
                    </div>
                </div>
                <div class="card">
                    <div class="dropdown">
                        <td>지역</td>
                        <!-- Example single danger button -->
                        <div class="btn-group">
                            <button type="button" id="local-category-button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                선택
                            </button>
                            <ul class="dropdown-menu">
                                <c:forEach items="${localCategoryList}" var="c">
                                    <li><button type="button" class="dropdown-item" onclick="selectLocalCategory(this, ${c.no})">${c.name}</button></li>
                                </c:forEach>
                            </ul>
                            <input type="hidden" name="lNo" />
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="dropdown">
                        <td>카테고리</td>
                        <!-- Example single danger button -->
                        <div class="btn-group">
                            <button type="button" id="category-button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                선택
                            </button>
                            <ul class="dropdown-menu">
                                <c:forEach items="${categoryList}" var="c">
                                    <li><button type="button" class="dropdown-item" onclick="selectCategory(this, ${c.no})">${c.category}</button></li>
                                </c:forEach>
                            </ul>
                            <input type="hidden" name="cNo" />
                        </div>
                    </div>
                </div>

            </div>
            <div class="right">

                    <div class = "form-group">
                        <label for="name">모임명</label>
                        <input type="text" name="name" id="name" value="${create.name}" required>
                    </div>
                    <div class = "form-group">
                        <label for="name">간단한 모임 소개</label>
                        <input type="text" name="intro" id=intro" value="${create.intro}" required>
                    </div>
                    <div class = "form-group">
                        <label for="exintro">상세정보</label>
                        <div class="description-container">
                            <textarea id="exintro" name="exintro" required></textarea>
                        </div>
                        <div>
<%--                            <img id="preview" src="default-profile-image.png" alt="이미지s">--%>
                            <div id="detail-images"></div>
                            <label for="files" class="custom-file-upload">이미지 업로드</label>
                            <input id="files" name="files" type="file" multiple onchange="previewImages(event)">
                        </div>
                        <div class = "form-group">
                            <div class="date-selector">
                                <label for="applydate">신청 마감일:</label>
                                <input type="date" id="applydate" name="applydate" value="${create.applydate}" required>
                                <label for="starttime">모임 시작일:</label>
                                <input type="date" id="starttime" name="starttime" value="${create.starttime}" required>
                                <label for="finishtime">모임 종료일:</label>
                                <input type="date" id="finishtime" name="finishtime" value="${create.finishtime}" required>
<%--                                <input type="text" id="pr" >--%>
                            </div>
                            <input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" id="roadAddress" class="readonly" placeholder="도로명주소" required>
                            <input type="text" id="detailAddress" placeholder="상세주소" required>
                            <input type="hidden" name="place" id="place">
                        </div>

                            <button type="submit">개설하기</button>
                            <hr>
                            <a href="${root}/group/list">취소하기</a>

                    </div>
                    </div>

            </div>
        </form>
        </div>
    </div>

</section>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<script>
    function selectLocalCategory(elem, no)  {
        var localCategoryButton = document.querySelector("#local-category-button");
        var localCategoryInput = document.querySelector("input[name=lNo]");
        localCategoryButton.textContent = elem.textContent;
        localCategoryInput.value = no;
    }
    function selectCategory(elem, no)  {
        var categoryButton = document.querySelector("#category-button");
        var categoryInput = document.querySelector("input[name=cNo]");
        categoryButton.textContent = elem.textContent;
        categoryInput.value = no;
    }

    document.addEventListener("DOMContentLoaded", function () {
        document.querySelector("form").addEventListener("submit", function (e) {
            e.preventDefault();

            var tg = e.target;
            if (tg.querySelector('input[type=file]').files.length !== 1) {
                alert("썸네일 사진을 선택해주세요.");
                return;
            }
            if (tg.querySelector("input[name=lNo]").value === "") {
                alert("지역을 선택해주세요.");
                return;
            }
            if (tg.querySelector("input[name=cNo]").value === "") {
                alert("카테고리를 선택해주세요.");
                return;
            }
            var place = document.querySelector("#roadAddress").value;
            var detailAddress = document.querySelector("#detailAddress").value;
            if (detailAddress !== "") {
                place += " " + detailAddress;
            }
            tg.querySelector("#place").value = place;

            tg.submit();
        });
    });
</script>
</body>
</html>
