<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 문의내역 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypagewritelist.css">
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
                                <div class="main_content" >
                                    <!-- 작성 내역 -->
                                    <section class="main_content">
                                        <h3 class="title">문의내역</h3>
                                        <div class="container notice-area">
                                            <table class="table table-hover table-bordered" style="text-align: center;">
                                              <thead>
                                                <tr class="table-light">
                                                  <th>글번호</th>
                                                  <th>제목</th>
                                                  <th>작성일</th>
                                                </tr>
                                              </thead>
                                              <tbody class="table-group-divider">
                                                <tr>
                                                  <td>01</td>
                                                  <td>아이디 찾기가 안돼요..</td>
                                                  <td>2021/03/21</td>
                                                </tr>
                                          
                                              </tbody>
                                            </table>
                                          </div>


                                    </section>

                                </div>
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