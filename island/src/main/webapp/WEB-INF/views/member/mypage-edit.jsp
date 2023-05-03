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
    <link rel="stylesheet" href="${root}/resources/css/member/mypageEdit.css">
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
                                        <form action="">
                                    <div name="" id="" class="profile_summary">
                                        
                                        
                                        <div class="profile_img">
                                            <!-- <div class="thumbnail"> -->
                                                <img class="img_thumbnail" src="${root}/resources/img/member/eximg.jpeg" alt="프로필사진" >
                                                
                                                <br>
                                                <br>
                                                <br>
                                                <!-- 프로필 이미지 업로드 버튼 -->
                                                <input type="file" class="form-control" value="사진변경" >
                                           
                                         
                                            </div>
                                       

                                    </div>
                                    <!-- 프로필 정보 시작 -->
                                    <div class="profile_info">
                                        <div class="left_area">
                                            <h3 class="title">김수진</h3>
                                            <ul class="information">
                                                <li class="email"><span class="label">이메일</span>
                                                <span class="value"><input type="text" value="abcde"></span>
                                                   <span><select class="form-select is-valid" id="validationServer01" aria-describedby="validationServer04Feedback">
                                                        <option selected disabled value="">abc.com</option>
                                                        <option>naver.com</option>
                                                        <option>daum.net</option>
                                                        <option>google.com</option>
                                                        <option>kakao.com</option>
                                                      </select></span>
                                                </li>
                                                <li class="phone">
                                                    <span class="label">휴대전화</span>
                                                    <span class="value"><input type="text" value="01012341234"></span>
                                                </li>
                                                <li class="company">
                                                    <span class="label">소속</span>
                                                    <span class="value"><input type="text" value=""></span>
                                                </li>
                                                <li class="joindate">
                                                    <span class="label">가입일</span>
                                                    <span class="value">2023.04.04</span>
                                                </li>
                                                <li class="homepage">
                                                    <span class="label">닉네임</span>
                                                    <span class="value"><input type="text" value="샴푸의 요정"></span>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="right_area">
                                            <h4 class="title">비밀번호 변경</h4>
                                            <div class="channel_home">
                                                <li class="homepage">
                                                    <span class="label">비밀번호 변경</span>
                                                    <span class="value"><input type="password" value="abc123!" class="form-control"></span>
                                                </li>
                                                <li class="homepage">
                                                    <span class="label">비밀번호 변경확인</span>
                                                    <span class="value"><input type="password" value="abc123!" class="form-control is-invalid"></span>
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