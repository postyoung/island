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
				<form action="${root}/admin/notice/list" class="noticeeditform">
					<div class="container">
						<h2>공지사항 수정페이지</h2>
								<form action="" method="post">
									<input type="hidden" name="idx" value="${vo.idx }">
									<table id="tableTitle" class="table table-bordered table-hover" style="">
										<tr>
											<td>제목</td>
											<td><input name="title" type="text" style="font-size: 20px;" value="${vo.title}" class="form-control" placeholder="[공지] 5월 1일  근로자의 날 휴무"></td>
										</tr>
										<tr>
											<td>작성자</td>
											<td><input name="writer" type="text" style="font-size: 20px;" value="${vo.writer}" class="form-control" placeholder="관리자"></td>
										</tr>
										<tr>
											<td>내용</td>
											<td><textarea name="content" rows="20" cols="" class="form-control" placeholder="5월1일(월) 근로자의 날 휴무합니다. 서비스이용에 참고해주세요.">${vo.content}</textarea></td>
										</tr>
									</table>
									<div id="btn-area" style="text-align: right; margin-top: 10px;">
										<button type="submit" class="btn btn-md btn-primary" >수정</button>
										<a href="boardRemove.do?idx=${vo.idx}"><button type="button" class="btn btn-md btn-warning">삭제</button></a>
										<a href="${root}/admin/notice/list"><button type="button" class="btn btn-md btn-info">목록</button></a>
									</div>
		
								</form>
		
							</div>
		
						</div>
					</div>
</body>
</html>