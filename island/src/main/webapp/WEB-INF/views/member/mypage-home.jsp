<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 마이페이지|홈 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <link rel="stylesheet" href="${root}/resources/css/member/mypage.css">
    
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

                             <c:if test="${not empty loginMember}">
                                <div class="main_content">
                                    <!-- 마이페이지 콘텐츠 시작 -->
                                        <!-- 프로필 정보 영역시작 -->
                                    <div name="" id="" class="profile_summary">
                                        
                                        
                                        <div class="profile_img">
                                            <!-- <div class="thumbnail"> -->
                                                <img class="img_thumbnail" src="${root}/resources/img/member/profile/load/${loginMember.profileName}" onerror= "this.onerror=null; this.src = 
                                                'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'" style="width: 210px;
                                                height: 210px;">
                                            </div>
                                      

                                    </div>
                                    <!-- 프로필 정보 시작 -->
                                    <div class="profile_info">
                                        <div class="left_area">
                                            <h3 class="title">${loginMember.name}</h3>
                                            <ul class="information">
                                                <li class="email"><span class="label">이메일</span>
                                                <span class="value">${loginMember.email}@${loginMember.email2}</span>
                                                </li>
                                                <li class="phone">
                                                    <span class="label">휴대전화</span>
                                                    <span class="value">${loginMember.phone}</span>
                                                </li>
                                                <li class="company">
                                                    <span class="label">소속</span>
                                                    <span class="value">${loginMember.attach}</span>
                                                </li>
                                                <li class="joindate">
                                                    <span class="label">가입일</span>
                                                    <span class="value">${loginMember.joinDate}</span>
                                                </li>
                                                <li class="homepage">
                                                    <span class="label">닉네임</span>
                                                    <span class="value">${loginMember.nick}</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </c:if>
                                        <div class="right_area">
                                            <div class="channel_home">
                                                <h4 class="title">마이피드</h4>
                                                <li class="feed_list">
                                                    <p class="feed">
                                                        <span class="entities"></span>
                                                        
                                                        <strong></strong>
                                                        
                                                    </p>
                                                    <a href=""></a>                                                 
                                                </li>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!-- 하단콘텐츠 시작 -->
                                    <!-- 찜한 모임/참여신청한 모임 시작 -->
                                <div class="sub_content">
                                    <section class="feeds">
                                        <h3 class="title">마이피드</h3>
                                        <ul class="feed_list">
                                            <li>
                                                <p class="action">
                                                    <span>＊</span>
                                                    모임을
                                                    <strong>찜</strong>
                                                    하였습니다.
                                                </p>
                                                <a href="${root}/group/detail?no=${recentInterestGroup.no}">${recentInterestGroup.name}</a>
                                            </li>
                                            <li>
                                                <p class="action">
                                                    <span>＊</span>
                                                    모임을
                                                    <strong>참여신청</strong>
                                                    하였습니다.
                                                </p>
                                                <a href="${root}/group/detail?no=${recentEnrollGroup.no}">${recentEnrollGroup.name}</a>
                                            </li>

                                        </ul>
                                    </section>
                                    <!-- 찜한 모임/참여신청한 모임 끝 -->
                                     <!-- 찜한 세미나/참여신청한 세미나 시작 -->
                                    <section class="feeds" style="float: right; margin-right: 8%;">
                                        <ul class="feed_list">
                                            <li style="margin-top: 9%;">
                                                <p class="action">
                                                    <span>＊</span>
                                                    세미나를
                                                    <strong>찜</strong>
                                                    하였습니다.
                                                </p>
                                                <a href="${root}/seminar/detail?no=${recentInterestSeminar.no}">${recentInterestSeminar.name}</a>
                                            </li>
                                            <li>
                                                <p class="action">
                                                    <span>＊</span>
                                                    세마니를
                                                    <strong>참여신청</strong>
                                                    하였습니다.
                                                </p>
                                                <a href="${root}/seminar/detail?no=${recentEnrollSeminar.no}">${recentEnrollSeminar.name}</a>
                                            </li>

                                        </ul>
                                    </section>
                                    <!-- 찜한 세미나/참여신청한 세미나 시작 -->
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