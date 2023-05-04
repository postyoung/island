<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 개설내역|소모임 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypageLikeList.css">
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
                                    <!-- 개설한 내역 -->
                                    <section class="main_content">
                                        <h3 class="title">소모임 개설내역</h3>
                                        <div class="sub_content">
                                            <h4 class="data_enrolldate">2022.04.04</h4> 
                                            <div class="enroll_content">
                                                <div>

                                                
                                                <ul>
                                                    <li>
                                                        <article class="event_area">
                                                           <div class="enroll_area">
                                                                <div class="type_info">
                                                                       
                                                                <table class="group_info" >
                                                                    
                                                                        <thead>
                                                                            <th></th>
                                                                            <th>그룹명</th>
                                                                            <th>모임장소</th>
                                                                            <th>모집인원</th>
                                                                            <th>대기인원</th>
                                                                            <th>참여확정</th>
                                                                            <th>신청기간</th>
                                                                            <th>모임기간</th>
                                                                            <th>모임수정</th>
                                                                        </thead>
                                                                   
                                                                            <tbody>
                                                                                <tr><td><img class="group_info_img" src="${root}/resources/img/member/eximg.jpeg" alt="그룹사진"></td>
                                                                                <td>아이디어조</td>
                                                                                <td>강남구 역삼동</td>
                                                                                <td>10</td>
                                                                                <td>2</td>
                                                                                <td>1</td>
                                                                                <td>2023-12-01 ~ 2024-12-01</td>
                                                                                <td>2023-12-01 ~ 2024-12-01</td>
                                                                                <td><input type="submit" class="btn btn-outline-primary" value="수정하기"></td>
                                                                                </tr>
                                                                            </tbody>
                                                                    </table>
                                                                </div>
                                                                
                                                            </div>
                                                        </article>
                                                    </li>
                                                </ul>

                                            </div>
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