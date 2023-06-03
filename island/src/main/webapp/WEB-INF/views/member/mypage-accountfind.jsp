<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 마이페이지|아이디/비번찾기 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypageFind.css">

    <c:if test="${not empty alertMsg}">
        <script type="text/javascript">
        alert('${alertMsg}');
        </script>
    </c:if>
    
    <c:remove var="alertMsg" scope="request"/>


</head>
<body>
    <div id="wrap">
        <main class="mypage" id="content">
            <div class="content_wrapping max_width_area">
                <div class="top_area">
                    <h2 class="main_title"></h2>
                    <div class="main_area">              
                            <!-- 마이페이지 메뉴바 시작 -->
                          
                                <!-- 마이페이지 메뉴바 끝 -->
                                <div class="main_content">
                                    <!-- 마이페이지 콘텐츠 시작 -->
                                    <div class="main_content">
                                        <!-- 아이디 찾기 시작-->
                                        <section class="find_email">
                                            <form action="${root}/mypage/findId" method="post">
                                                <h3 class="title">아이디 찾기</h3>
                                                <div class="edit_wrap">
                                                    <div class="edit_name">
                                                        <label for="name">이름</label>
                                                            <input type="text" id="name" name="name" required >
                                                    </div>
                                                    
                                                    <div class="edit_phone">
                                                        <label for="phone">휴대전화</label>
                                                        <input type="text" id="phone" name="phone" required>
                                                    </div>
                                                </div>
                                                    <!-- 버튼영역시작 -->
                                                    <div class="bottom_btn_area">
                                                        <div class="btn_wrap">
                                                            <input type="submit" value="확인" class="btn_submit" >
                                                        </div>
                                                    </div>
                                                    <!-- 버튼영역 끝 -->
                                                
                                                <!-- 아이디찾기 끝 -->
                                                </form>
                                            </section>

                                    
                                <!-- 비밀번호 변경 -->
                                <section class="find_password">
                                    <form action="${root}/mypage/checkInfoForPwdEdit" method="post">
                                        <h3 class="title">비밀번호 변경</h3>
                                        <div class="edit_wrap">
                                            <div class="edit_name">
                                                <label for="id">아이디</label>
                                                    <input type="text" id="id" name="id" required >
                                            </div>
                                            
                                            <div class="edit_phone">
                                                <label for="id_num">주민번호</label>
                                                <input type="text" id="resident" name="resident" value="" required style="width: 149px;">
                                                <input type="password" id="resident2" name="resident2" required style="width: 155px; height: 30px;">
                                            </div>
                                        </div>
                                            <!-- 버튼영역시작 -->
                                            <div class="bottom_btn_area">
                                                <div class="btn_wrap">
                                                    <input type="submit" value="확인" class="btn_submit" >
                                                </div>
                                            </div>
                                            <!-- 버튼영역 끝 -->
                                        
                                        <!-- 비밀번호찾기 끝 -->
                                        </form>
                                    </section>

                            </div>
                        </div>
                                       
                   </div>
                </div>

        	</main>
   		</div>
    <div>
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>

</body>
</html>