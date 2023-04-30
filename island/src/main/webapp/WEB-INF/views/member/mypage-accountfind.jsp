<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 회원가입 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypageFind.css">
</head>
<body>
    <div id="wrap">
        <main class="mypage" id="content">
            <div class="content_wrapping max_width_area">
                <div class="top_area">
                    <h2 class="main_title">마이페이지</h2>
                    <div class="main_area">              
                            <!-- 마이페이지 메뉴바 시작 -->
                           	<%@include file="/WEB-INF/views/member/common/mypage-nav.jsp" %>
                                <!-- 마이페이지 메뉴바 끝 -->
                                <div class="main_content">
                                    <!-- 마이페이지 콘텐츠 시작 -->
                                    <div class="main_content">
                                        <!-- 아이디 찾기 시작-->
                                        <section class="find_email">
                                            <form action="">
                                                <h3>아이디 찾기</h3>
                                                <div class="">
                                                    <label for="name">이름</label>
                                                    <input type="text" id="name" name="name" required >
                                                </div>
                                                <div class="">
                                                    <label for="phone">휴대전화</label>
                                                    <input type="text" id="phone" name="phone" required>
                                                </div>
                                                <div class="btn_wrap">
                                                    <input type="submit" value="확인" class="" >
                                                </div>
                                                <!-- 아이디찾기 끝 -->
                                            </form>
                                            </section>

                                    </div>
                                       
                   </div>
            

        	</main>
   		</div>
    <div>
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
</div>

</body>
</html>