<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="/WEB-INF/views/common/header-member.jsp" %>
    <title>island</title>
    <link rel="stylesheet" href="1.css">
    <link rel="stylesheet" href="2.css">
    <link rel="stylesheet" href="3.css">
    <link rel="stylesheet" href="${root}/resources/css/group/1.css">
    <link rel="stylesheet" href="${root}/resources/css/group/2.css">
    <link rel="stylesheet" href="${root}/resources/css/group/3.css">
</head>
<body class="onoffmix">
    <main id="content" class="attend">
        <div class="main_area">
            <div class="main_content">
                <h3 class="title">신청정보</h3>
                <div class="sub_content">
                    <section class="attend_event">
                        <section class="attend_event">
                            <h4 class="title hidden">모임 정보</h4>
                            <article class="event_area">
                                <div class="event_thumbnail">
                                    <a href="/event/268393" target="_blank">
                                        <img style="border-radius: 10%;" alt="모임이미지" src="모임이미지">
                                    </a>
                                </div>
                                <div class="event_info_wrap">
                                    <a href="/event/268393" target="_blank" title="새 창 열림">
                                        <h5 class="event_title ellipsis" title="제목">모임제목</h5>
                                    </a>
                                    <div class="date">
                                        <h6 class="label">모임기간</h6>
                                        <p class="description"></p>
                                    </div>
                                    <div class="place">
                                        <h6 class="label">모임장소</h6>
                                        <p class="description"></p>
                                        <button type="button" class="btn_map" >지도보기</button>
                                    </div>
                                </div>
                            </article>
                        </section>
                        <table class="group_table free">
                            <thead>
                                <tr>
                                    <th scope="col" class="group_name">그룹명</th>
                                    <th scope="col" class="members">신청인원</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr data-group_name="모임제목" data-group_members="1" data-group_price="0">
                                    <td class="group_name">모임제목 </td>
                                    <td class="members">1명</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>
                    <form action="/rsvp/queue/268393" method="post"  id="attendForm">
                        <section class="attend_user">
                            <h4 class="title">신청자 정보 입력</h4>
                            <div class="edit_wrap">
                                <table>
                                    <colgroup>
                                        <col class="table_width head">
                                        <col class="table_width">
                                        <col class="table_width head">
                                        <col class="table_width">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th class="user_name" scope="row">이름</th>
                                            <td class="user_name"><span class="value_txt">~~~</span></td>
                                            <th class="user_email" scope="row">이메일</th>
                                        </tr>
                                        <tr>
                                            <th scope="row">소속</th>
                                            <td>
                                                <input type="text" name="company" maxlength="64" value="">
                                            </td>
                                            <th scope="row">전화번호
                                            </th>
                                            <td class="user_phone " data-auth="true">
                                                <div class="auth_after">
                                                    <span class="value_txt"></span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </section>
                        <div class="bottom_btn_area">
                            <div class="btn_wrap">
                                <input type="submit" value="신청하기" class="btn_submit">

                                <a href="" class="btn_cancel">취소하기</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </main>
    
    <div class="container">
        <footer class="py-5" style="background-color: white;">
      <div class="row">
        <div class="col-6 col-md-2 mb-3">
          <h5 class="footer-part">고객센터</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">1:1문의</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQ</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">공지사항</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">개인정보처리방침</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">서비스약관 및 정책</a></li>
          </ul>
        </div>
  
        <div class="col-6 col-md-2 mb-3" style="text-align: center;">
          <h5  class="footer-part">메뉴</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">소모임</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">세미나</a></li>
          </ul>
        </div>
  
        <div class="col-md-5 offset-md-1 mb-3">
          <h5  class="footer-part">회사 정보</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2">(주)아일랜드</a></li>
            <li class="nav-item mb-2">대표이사 | IDEA</li>
            <li class="nav-item mb-2">주소 | 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F, 3F, 4F, 5F, 6F</li>
            <li class="nav-item mb-2">Tel. 02 -1234 -1234</li>
            <li class="nav-item mb-2">Email. abc@naver.com </li>
          </ul>
        </div>
  
        <div class="col-6 col-md-2 mb-3">
          <img id="footer-logo" src="${root}/resources/img/common-logo/main-logo.png" alt="이미지" width="200px" height="100px" >
        </div>
      </div>
  
      <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
        <p>&copy; 2023 Company, Inc. All rights reserved.</p>
        <ul class="list-unstyled d-flex">
          <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
          <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
          <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
        </ul>
      </div>
      


    </footer>
    </div>
</body>

</html>