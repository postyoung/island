<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 개설내역|세미나 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypageEnrollList2.css">
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
                                        <h3 class="title">세미나 개설내역</h3>
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
                                                                            <th>세미나명</th>
                                                                            <th>가격</th>
                                                                            <th>세미나 장소</th>
                                                                            <th>모집인원</th>
                                                                            <th>신청마감일시</th>
                                                                            <th>세미나 일시</th>
                                                                            <th>세미나수정</th>
                                                                        </thead>
                                                                   
                                                                            <tbody>
                                                                                <c:forEach items="${svoList}" var="svo">
                                                                                <tr><td><img class="group_info_img" src="${root}/resources/img/seminar/upload/${svo.seminarThumbnail}" onerror= "this.onerror=null; this.src = 
                                                                                    'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'" ></td>
                                                                                <td>${svo.name}</td>
                                                                                <td>${svo.expense}</td>
                                                                                <td>${svo.place}</td>
                                                                                <td>${svo.maxCapacity}</td>
                                                                                <td>${svo.closeDay}</td>
                                                                                <td>${svo.startDay} ${svo.seminarTime}</td>
                                                                                <td><input type="submit" class="btn btn-outline-primary" value="수정하기" onclick="location.href='${root}/seminar/edit'"></td>
                                                                                </tr>
                                                                            </c:forEach>
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
    <div style="margin-top: 840px;">
        <%@include file="/WEB-INF/views/common/footer.jsp" %>
    </div>

</body>
</html>