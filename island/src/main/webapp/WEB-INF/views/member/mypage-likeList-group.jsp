<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 관심내역|소모임 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypageEnrollList.css">

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
                                        <h3 class="title">소모임 관심내역</h3>
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
                                                                            <th>그룹명</th>
                                                                            <th>모임장소</th>
                                                                            <th>모집인원</th>
                                                                            <th>신청마감일시</th>
                                                                            <th>모임일시</th>
                                                                            <th>관심취소</th>
                                                                        </thead>
                                                                   
                                                                            <tbody>
                                                                                <c:forEach items="${gvoList}" var="gvo">
                                                                                    <form action="${root}/mypage/list/likeList/group" method="post">

                                                                                <tr>
                                                                                    <td style="display: none;">${gvo.no}</td>
                                                                                    <td><img class="group_info_img" src="${root}/resources/img/group/upload/${gvo.groupThumnail}" onerror="this.onerror=null; this.src = '${root}/resources/img/member/noimage.jpg'" ></td>
                                                                                    <td>${gvo.name}</td>
                                                                                    <td>${gvo.place}</td>
                                                                                    <td>${gvo.peoplenum}</td>
                                                                                <td>${gvo.applydate}</td>
                                                                                <td>${gvo.starttime} ~ ${gvo.finishtime}</td>
                                                                                <input type="hidden" name="gNo" value="${gvo.no}">
                                                                                <td><input type="submit" class="btn btn-outline-primary" value="관심취소" ></td>
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
	tbody.addEventListener("click" , (event)=>{
	const no = event.target.parentNode.children[0].innerText;
	  location.href = '${root}/group/detail?no=' + no;
	});
	
	</script>