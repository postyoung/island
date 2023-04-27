<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 세미나 목록 | ISLAND</title>

	<!-- 헤더 -->
	<%@ include file="/WEB-INF/views/common/header-member.jsp" %>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${root}/resources/css/seminar/list.css">
</head>
<body>


<!-- 컨텐츠 전체 -->
<div id="seminar-area">
  <div id="seminar-title">
    <h2><b>ISLAND</b> | 모집중인 세미나</h2>
  </div>
  <div id="seminar-serch-area">
    <form class="d-flex" role="search">
      <select class="form-select form-select-sm mb-3" aria-label=".form-select-lg example">
        <option selected>지역</option>
        <option value="1">서울</option>
        <option value="2">경기</option>
        <option value="3">인천</option>
        <option value="4">강원</option>
        <option value="5">부산</option>
        <option value="6">제주</option>
        <option value="7">기타</option>
      </select>
      <input class="form-control me-2" type="search" placeholder="검색할 내용을 입력하세요." aria-label="Search">
      <button class="btn btn-light " type="submit">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
          <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
        </svg>
      </button>
    </form>
  </div>

  <div id="select-menu">
    <a href="#" class="ms-3 me-3">최신순</a>|<a href="#" class="ms-3 me-3">인기순</a>|<a href="#" class="ms-3 me-3">종료된 세미나</a>
    <button type="button" class="btn btn-outline-secondary" onclick="location.href='${root}/seminar/create'">개설하기</button>
  </div>

  <!-- 세미나 카드 영역 -->
  <main>
    <div class="album py-5 ">
      <div class="container">
  
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/seminar1.png" width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">3</span>
                <p class="card-text">
                  <b>나에게 딱 맞는 착업아이템 온라인 특강</b>
                </p>
                <p class="card-text">
                  일정 : 2023-05-12 (금) 13:00 ~ 16:00
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">유료</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/seminar2.png"width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">29</span>
                <p class="card-text">
                  <b>현실적인 직장인들의 투자&월급관리 세미나</b>
                </p>
                <p class="card-text">
                  일정 : 2023-05-29 (토) 10:00 ~ 12:00
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">무료</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/seminar3.png"width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">174</span>
                <p class="card-text">
                  <b>직장인 월급관리 & 투자 포트폴리오</b>
                </p>
                <p class="card-text">
                  일정 : 2023-06-01 (월) 18:30 ~ 20:00
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">무료</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/seminar4.png"width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">174</span>
                <p class="card-text">
                  <b>직장인 월급관리 & 투자 포트폴리오</b>
                </p>
                <p class="card-text">
                  일정 : 2023-06-01 (월) 18:30 ~ 20:00
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">무료</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/seminar5.png"width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">174</span>
                <p class="card-text">
                  <b>직장인 월급관리 & 투자 포트폴리오</b>
                </p>
                <p class="card-text">
                  일정 : 2023-06-01 (월) 18:30 ~ 20:00
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">무료</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <img class="bd-placeholder-img card-img-top" src="${root}/resources/img/seminar/upload/seminar2.png"width="100%" height="250">
              <div class="card-body">
                <i class="bi-heart" style="font-size:1.5rem; color: red; cursor: pointer;"></i>
                <span id="good-icon">29</span>
                <p class="card-text">
                  <b>현실적인 직장인들의 투자&월급관리 세미나</b>
                </p>
                <p class="card-text">
                  일정 : 2023-05-29 (토) 10:00 ~ 12:00
                </p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">무료</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
  
              <div class="card-body">
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">9 mins</small>
                </div>
              </div>
            </div>
          </div>
  
          <div class="col">
            <div class="card shadow-sm">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
  
              <div class="card-body">
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">9 mins</small>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card shadow-sm">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
  
              <div class="card-body">
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
                  </div>
                  <small class="text-muted">9 mins</small>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
  
  </main>

</div>	



	<!-- 페이징 -->
	<%@ include file="/WEB-INF/views/common/paging.jsp" %>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	
	
</body>
</html>

<script>

  var i = 0;
  $('i').on('click',function(){
      if(i==0){
          $(this).attr('class','bi-heart-fill');
          i++;
      }else if(i==1){
          $(this).attr('class','bi-heart');
          i--;
      }

  });

</script>