<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ISLAND 공지사항작성하기 | ISLAND</title>

<!-- header -->
<%@ include file="/WEB-INF/views/common/header-admin.jsp"%>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

<!-- css연결 -->
<link rel="stylesheet" href="${root}/resources/css/admin/notice/notice-write.css">

</head>

<body>
	<!-- main -->
	<div id="wrap">
		<form class="noticeWriteform" style="margin-left: 225px;">
			<div class="container">
				<h2>공지사항 작성하기</h2>
				<form class="form-horizontal" action="" method="post">
					<div class="form-group">
						<label class="control-label col-lg-2" for="title">제목 : </label>
						<div class="col-lg-12">
							<input type="text" class="form-control" name="title" id="title" placeholder="Enter title">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-lg-2" for="writer">작성자 :</label>
						<div class="col-lg-12">
							<input type="text" class="form-control" name="writer" id="writer" placeholder="Enter writer">
						</div>
					</div>
					<div class="form-group">

						<label id="content" class="control-label col-lg-2" for="content">내용 : </label>

						<div class="col-lg-12">
							<textarea class="form-control" name="content" id="content" rows="16" ></textarea>
						</div>

					</div>

					<div class="form-group">
						<div id="btn1" class="col-sm-offset-2 col-lg-10">
							<button type="submit" class="btn btn-info btn-lg" style="float: right;">등록</button>
							<button type="reset" class="btn btn-info btn-lg" style="float: right; margin-right: 10px;">취소</button>
							<button type="submit" class="btn btn-info btn-lg" style="float: right; margin-right: 10px;"><a href="${root}/notice/list"></a>목록</button>
						</div>
					</div>
				</form>
			</div>
	</div>
	</div>
</body>
</html>