<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 공지사항상세페이지 | ISLAND</title>

<style>
	/* 추가한 css */
	div>h2 {
		line-height: 3.3;
		margin-top: 40px;
	}
	
</style>

</head>

<body>
	<!-- header -->
	<%@include file="/WEB-INF/views/common/header-admin.jsp"%>
	<!-- layout -->
	<div id="layoutSidenav">
		<!-- nav -->
		<%@include file="/WEB-INF/views/common/nav-admin.jsp"%>
		<!-- content -->
		<div id="layoutSidenav_content">
			<!-- main -->
			<div id="wrap">
				<form class="noticeWriteform" action="${root}/admin/notice/list" method="get">
					<div class="container">
						<h2>공지사항 상세페이지</h2>
						<form class="form-horizontal">
							<table id="tableTitle" class="table table-bordered table" style="">
								<tr>
									<td>제목</td>
									<td>[약관] 개인정보취급방침 변경, 취소 및 환불약관 추가에 따른 안내</td>
								</tr>
								<tr>
									<td>작성일자</td>
									<td>2023. 05. 02</td>
								</tr>
								<tr>
									<td>내용</td>
									<td>
										<p> 안녕하세요. ISLAND 입니다.<br> <br>ISLAND 개인정보취급방침 변경, 취소 및 환불약관 추가에 대하여 사전 안내 드립니다.
										<br>자세한 사항은 아래 내용을 참고하여 주시기 바랍니다.<br><br>
										1. 시행일자<br>- 2023년 5월 2일<br><br>2.변경사항<br>[개인정보처리방침]<br>
										<br>-제 2조<br>개인정보의 처리목적 내 플레이 상품 구매자에 관한 내용 추가<br><br>-제6조<br>개인정보의 제3자가 제공 및 위탁에 관한 사항 내 상품 공급자에 관한 내용 추가<br>
										<br>[취소 및 환불약관]<br>-일반모임과 유료 모임에 관한 내용 통합<br>-모임 등의 환불 수수료에 관한내용 추가<br><br>
										(1) 모임 유효기간<br>a. 유효기간 내 취소 접수 시 100% 환불<br>b. 유효기간 종료 후 환불불가<br><br>(2) 기본 정책 외 상품별 취소 및 환불정책은 결제 시 동의한 취소/환불 약관을 따릅니다.<br>
										<br>3. 참고사항<br>(1) 개정된 개인정보취급방침은 시행일 이후부터 효력이 발생합니다.<br>
										(2) 개정된 개이정보취급방침에 대한 문의사항은 고객센터-문의하기 또는  webmaster@island.com 으로 문의하여 주시기 바랍니다.<br>
										<br>감사합니다.<br></p>
									
									</td>
								</tr>
							</table>

							<div id="btn-area" style="text-align: right; margin-top:10px;">
								<button type="submit" class="btn btn-md btn-primary" >수정</button>
								<a href="boardRemove.do?idx=${vo.idx}"><button type="button" class="btn btn-md btn-warning">취소</button></a>
							</div>
						</form>
					</div>
			</div>
		</div>
	</div>

</body>
</html>