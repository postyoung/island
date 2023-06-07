<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 신청내역|세미나 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypageEnrollList2.css">
    
    <c:if test="${not empty alertMsg}">
  	<script type="text/javascript">
	  alert('${sessionScope.alertMsg}');
  	</script>
  </c:if>

  <c:remove var="alertMsg" scope="session"/>

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
                                        <h3 class="title">세미나 신청내역</h3>
                                        <div class="sub_content">
                                            <h4 class="data_enrolldate"></h4> 
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
                                                                            <th>세미나<br>장소</th>
                                                                            <th>모집인원</th>
                                                                            <th>세미나<br>일시</th>
                                                                            <th>신청현황</th>
                                                                            <th>결제수단</th>
                                                                            <th>결제상태</th>
                                                                            <th>신청취소</th>
                                                                            <th>리뷰</th>
                                                                        </thead>
                                                                        <tbody>
                                                                            <c:forEach items="${svoList}" var="svo">
                                                                                    <form action="${root}/mypage/list/enrollList/seminar" method="post">
                                                                                        <tr>
                                                                                            <td style="display: none;">${svo.no}</td>
                                                                                            <td><img class="group_info_img" src="${root}/resources/img/seminar/upload/${svo.seminarThumbnail}" onerror= "this.onerror=null; this.src = 
                                                                                                'http://127.0.0.1:8888/app/resources/img/seminar/upload/seminar-ex.png'" ></td>
                                                                                            <td>${svo.name}</td>
                                                                                            <td>${svo.expense}</td>
                                                                                            <td>${svo.place}</td>
                                                                                            <td>${svo.maxCapacity}</td>
                                                                                            <td>${svo.startDay}<br> ${svo.seminarTime}</td>
                                                                                            <td>${svo.state}</td>
                                                                                            <td>${svo.pway}</td>
                                                                                            <td>${svo.pstate}</td>
                                                                                            <input type="hidden" name="sNo" value="${svo.no}">
                                                                                            <td><input type="submit" class="btn btn-outline-primary" value="신청취소"></td>
                                                                                            <td><input type="button" class="btn btn-outline-primary" value="리뷰작성" onclick="location.href='${root}/mypage/list/enrollList/seminarReview/write?no=${svo.no}'"></td>
                                                                                        </tr>
                                                                                    </form>
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
    <div class="footer" style="margin-top: 860px;">
        <%@include file="/WEB-INF/views/common/footer.jsp" %>
    </div>

</body>
</html>
<script>
	//행 클릭했을 때 , 상세조회
	const tbody = document.querySelector('table > tbody');
tbody.addEventListener("click", (event) => {
  if (event.target.tagName !== 'TD' || event.target.classList.contains('btn')) {
    return; // 리뷰 작성 버튼을 제외한 다른 요소를 클릭한 경우 처리하지 않음
  }
  
  const no = event.target.parentNode.querySelector('td:first-child').innerText;
  location.href = '${root}/seminar/detail?no=' + no;
});


</script>