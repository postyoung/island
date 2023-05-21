<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 마이페이지|회원정보수정 | ISLAND</title>
	<%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <!-- css연결 -->
    <link rel="stylesheet" href="${root}/resources/css/member/mypageEdit.css">
    <!-- js연결 -->
    <script src="${root}/resources/js/member/edit.js" defer>
     var root = "${root}";
    </script>
    
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
                                        <!-- 프로필 정보 영역시작 -->
                                <form action="${root}/mypage/edit" method="post" enctype="multipart/form-data" >
                                    <input type="hidden" name="no" value="${loginMember.no}">
                                    <div name="" id="" class="profile_summary">
                                        
                                        
                                        <div class="profile_img">
                                            <!-- <div class="thumbnail"> -->
                                                <img class="img_thumbnail" name="profile" src="${root}/resources/img/member/profile/load/${loginMember.profileName}" onerror= "this.onerror=null; this.src = 
                                                'http://127.0.0.1:8888/app/resources/img/member/noimage.jpg'"
                                                style="width: 210px; height: 210px;">
                                                
                                                <br>
                                                <br>
                                                <br>
                                                <!-- 프로필 이미지 업로드 버튼 -->
                                                <input type="file" class="form-control" value="사진변경" name="profile">
                                           
                                         
                                            </div>
                                       

                                    </div>
                                    <!-- 프로필 정보 시작 -->
                                    <div class="profile_info">
                                        <div class="left_area">
                                            <h3 class="title">${loginMember.name}</h3>
                                            <ul class="information">
                                                <li class="email"><span class="label">이메일</span>
                                                <span class="value"><input type="text" value="${loginMember.email}" name="email"></span>
                                                <span class="value">@<input type="text" value="${loginMember.email2}" name="email2"></span>
                                                </li>
                                                <li class="phone">
                                                    <span class="label">휴대전화</span>
                                                    <span class="value"><input type="text" value="${loginMember.phone}" name="phone"></span>
                                                </li>
                                                <li class="company">
                                                    <span class="label">소속</span>
                                                    <span class="value"><input type="text" value="${loginMember.attach}" name="attach"></span>
                                                </li>
                                                <li class="joindate">
                                                    <span class="label">가입일</span>
                                                    <span class="value">${loginMember.joinDate}</span>
                                                </li>
                                                <li class="homepage">
                                                    <span class="label">닉네임</span>
                                                    <span class="value"><input type="text" value="${loginMember.nick}" name="nick"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="right_area">
                                            <h4 class="title">비밀번호 변경</h4>
                                            <div class="channel_home">
                                                <li class="homepage">
                                                    <span class="label">비밀번호 변경</span>
                                                    <span class="value"><input type="password"  class="form-control" id="pwd" name="pwd"></span>
                                                    <br>
                                                    <div id="validationFeedback_Pwd" class="validationFeedback_Pwd">
                                                        최소 8 자 대문자,소문자,숫자,특수문자 각 하나이상을 포함하여 작성하시오.
                                                      </div>
                                                </li>
                                                <li class="homepage">
                                                    <span class="label">비밀번호 변경확인</span>
                                                    <span class="value"><input type="password" class="form-control " id="pwd2" name="pwd2"></span>
                                                </li>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-outline-primary" value="확인">
                                </form>


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