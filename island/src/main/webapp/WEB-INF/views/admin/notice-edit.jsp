<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 공지사항수정삭제하기 | ISLAND</title>


</head>
<style>
	/* 추가한 css */
	div>h2 {
		line-height: 3.3;
		margin-top: 10px;
		margin-left: 10px;
	}
	#tableTitle {
		font-size: 20px;
	}
	

</style>
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
				<form action="${root}/admin/notice/list" class="noticeeditform" method="post">
					<div class="container">
						<h2>공지사항 수정페이지</h2>
								<form action="${root}/admin/notice/list" method="post">
									<input type="hidden" name="idx" value="${vo.idx }">
									<table id="tableTitle" class="table table-bordered table-hover" style="">
										<tr>
											<td>제목</td>
											<td><input name="title" type="text" style="font-size: 20px;" value="${vo.title}" class="form-control" placeholder="[약관] 개인정보취급방침 변경, 취소 및 환불약관 추가에 따른 안내"></td>
										</tr>
										<tr>
											<td>작성자</td>
											<td><input name="writer" type="text" style="font-size: 20px;" value="${vo.writer}" class="form-control" placeholder="관리자"></td>
										</tr>
										<tr>
											<td>내용</td>
											<td><textarea name="content" rows="20" cols="" class="form-control" placeholder="안녕하세요. ISLAND 입니다.

ISLAND 개인정보취급방침 변경, 취소 및 환불약관 추가에 대하여 사전 안내 드립니다.
자세한 사항은 아래 내용을 참고하여 주시기 바랍니다.

1. 시행일자
- 2023년 5월 2일

2.변경사항
[개인정보처리방침]

-제 2조
개인정보의 처리목적 내 플레이 상품 구매자에 관한 내용 추가

-제6조
개인정보의 제3자가 제공 및 위탁에 관한 사항 내 상품 공급자에 관한 내용 추가

[취소 및 환불약관]
-일반모임과 유료 모임에 관한 내용 통합
-모임 등의 환불 수수료에 관한내용 추가">${vo.content}</textarea></td>
										</tr>
									</table>
									<div id="btn-area" style="text-align: right; margin-top: 10px;">
										<button type="submit" class="btn btn-md btn-warning" >수정</button>
										<%-- <a href="boardRemove.do?idx=${vo.idx}"> --%>
										<a href="${root}/admin/notice/list"><button type="button" class="btn btn-md btn-danger">삭제</button></a>
										<a href="${root}/admin/notice/list"><button type="button" class="btn btn-md btn-info">목록</button></a>
									</div>
		
								</form>
		
							</div>
		
						</div>
					</div>
</body>
</html>