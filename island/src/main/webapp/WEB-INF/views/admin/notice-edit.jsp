<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 공지사항수정삭제하기 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-admin.jsp"%>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</head>
<style>
	/* 추가한 css */
	div>h2 {
		line-height: 3.3;
		margin-top: 100px;
		margin-left: 100px;
	}
	#tableTitle {
		font-size: 20px;
	}
	

</style>
<body>

	<!-- main -->
	<div id="wrap">
		<form action="" class="noticeeditform">
			<div class="container">
				<h2>공지사항 수정/삭제</h2>
						<form action="" method="post">
							<input type="hidden" name="idx" value="${vo.idx }">
							<table id="tableTitle" class="table table-bordered table-hover" style="margin-left: 100px;">
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
							<div id="btn-area" align="right" width="100px" height="100px;">
								<button type="submit" class="btn btn-lg btn-primary">수정</button>
								<a href="boardRemove.do?idx=${vo.idx}"><button type="button" class="btn btn-lg btn-warning">삭제</button></a>
								<a href="${root}/admin/notice/list"><button type="button" class="btn btn-lg btn-info">목록</button></a>
							</div>

						</form>

					</div>

				</div>
			</div>
</body>
</html>