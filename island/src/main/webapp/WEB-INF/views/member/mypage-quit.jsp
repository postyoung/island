<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 탈퇴 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypagequit.css">

    <c:if test="${not empty alertMsg}">
    <script>
            alert('${alertMsg}');
            </script>
        </c:if>

        <c:if test="${not empty sessionScope.pwdAlertMsg}">
            <script>
                alert('${sessionScope.pwdAlertMsg}');
                </script>
        </c:if>
        <c:remove var="pwdAlertMsg" scope="session"/>




</head>
<body>
    <div id="wrap">
            <main class="mypage" id="content">
                <h2 class="main_title">마이페이지</h2>
                <div class="main_area">              
                            <!-- 마이페이지 메뉴바 시작 -->
                           	<%@include file="/WEB-INF/views/member/common/mypage-nav.jsp" %>
                                <!-- 마이페이지 메뉴바 끝 -->
                        <div class="main_content">
                                    <!-- 마이페이지 콘텐츠 시작 -->
                        <section class="main_content" >
                                    <!-- 개설한 내역 -->
                            <form action="${root}/mypage/quit" method="post">
                                <input type="hidden" id="no" name="no" value="${loginMember.no}">
                                        <h3 class="title">회원탈퇴</h3>
                                        <!-- 인풋 입력시작 -->
                                <div class="edit_wrap">
                                        <div class="edit_reason">
                                            <h4 class="label">탈퇴사유를 선택해주세요</h4>
                                            <div class="input_wrap">
                                                <p class="tip_txt">* 아일랜드의 더 나은 서비스를 위한 것이니 한가지만 선택 부탁드립니다.</p>
                                                <ul class="reason_list">
                                                    <li>
                                                        <input type="radio" id="c1" name="qReason" checked value="10">
                                                        <label for="c1" value="10">다른 Email을 사용하기 위해서</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" id="c2" name="qReason"  value="20">
                                                        <label for="c2" value="20">사용빈도가 낮고, 개인정보 유출이 우려되어서</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" id="c3" name="qReason"  value="30">
                                                        <label for="c3" value="30">사이트 이용시 장애가 많아서</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" id="c4" name="qReason"  value="40">
                                                        <label for="c4" value="40">서비스 품질 불만족</label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" id="c5" name="qReason"  value="50">
                                                        <label for="c5" value="50">기타</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <c:if test="${not empty loginMember}">
                                        <div class="edit_id">
                                            <h4 class="label">탈퇴할 아이디</h4>
                                            <div class="input_wrap">
                                                <span class="user_id">${loginMember.id}</span>
                                               
                                            </div>
                                        </div>
                                    </c:if>
                                        <div class="edit_pw">
                                            <h4 class="label">
                                                <label for="pw">비밀번호 입력</label>
                                            </h4>
                                            <div class="input_wrap">
                                                <input type="password" id="pwd" name="pwd" required>
                                                <!-- 에러메시지 -->
                                                <ul class="check_msg">
                                                    <li>
                                                        * 본인인증을 위해 비밀번호를 입력해 주세요.
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                        <!-- 인풋 입력끝 -->
                                        <!-- 탈퇴불가 -->
                                      
                                        <!-- 버튼영역시작 -->
                                        <div class="bottom_btn_area">
                                            <div class="btn_wrap">
                                               
                                                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">탈퇴하기</button>
                                            </div>
                                            <!-- Modal -->
                                        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="staticBackdropLabel">탈퇴 확인</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                <h3>소모임/세미나 관련 데이터가 <br> 모두 삭제됩니다.</h3> <br>
                                                동일한 아이디로 재가입이 불가능합니다. <br>
                                                탈퇴하시겠습니까?
                                                </div>
                                                <div class="modal-footer">
                                                <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal" >확인</button>
                                                <button type="button" class="btn btn-primary" onclick="location.href='${root}/mypage/quit'">취소</button>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                        
                                        </div>
                                        <!-- 버튼영역끝 -->
                                    </form>
                        </section>
                       
                    </div>
            </main>
            
   	
        
        <div>
        <%@include file="/WEB-INF/views/common/footer.jsp" %>
    </div>

</body>
</html>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="check-circle-fill" viewBox="0 0 16 16">
      <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
    </symbol>
    <symbol id="info-fill" viewBox="0 0 16 16">
      <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
    </symbol>
    <symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
      <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
    </symbol>
  </svg>