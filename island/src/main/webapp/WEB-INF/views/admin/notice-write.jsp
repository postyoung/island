<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISLAND 공지사항작성하기 | ISLAND</title>
    
    <link rel="stylesheet" href="${root}/resources/css/member/join.css">
	<!-- 부트스트랩  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
	/* 추가한 css */
	.panel panel-default{
		
		align-content: center;
		justify-content: center;
		
	}
	div > h2{
		line-height: 3.3;
	}
	
</style>
<body>
	<!-- main -->
	<div id="wrap">
		<form action="" class="noticeWriteform">
		<div class="container">
		<h2>공지사항</h2>
		<div class="panel panel-default">
			<div class="panel-heading">공지사항 작성하기</div>
			<div class="panel-body">

				<form class="form-horizontal" action="" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="title">제목 : </label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="title" id="title"	placeholder="Enter title">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="writer">작성자 :</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="writer" id="writer" placeholder="Enter writer">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="content">내용 :</label>

						<div class="col-sm-10">
							<textarea class="form-control" name="content" id="content" rows="7" cols=""></textarea>
						</div>

					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-info btn-sm">작성</button>
							<button type="reset" class="btn btn-success btn-sm">되돌리기</button>
						</div>
					</div>
				</form>
			</div>
			
		</div>
	</div>
		
</body>
</html>