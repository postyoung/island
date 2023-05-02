<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ISLAND 관리자-통계조회 | ISLAND</title>
 <link href="css/styles.css" rel="stylesheet" />
 <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
 
 <link rel="stylesheet" href="${root}/resources/css/admin/statistics.css">
<style>



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
			<div id="wrap">
				<!-- 본인 작업 영역 -->
				<div class="row">
                     <div class="col-lg-6">
                         <div class="card mb-4">
                             <div class="card-header">
                                 <i class="fas fa-chart-bar me-1"></i>
                                 Bar Chart Example
                             </div>
                             <div class="card-body"><canvas id="myBarChart" width="572" height="285" style="display: blasck; height:325px; width: 651px;" class="chart-render-monitor"></canvas></div>
                             <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="card mb-4">
                             <div class="card-header">
                                 <i class="fas fa-chart-pie me-1"></i>
                                 Pie Chart Example
                             </div>
                             <div class="card-body"><canvas id="myPieChart" width="572" height="285" style="display: blasck; height:325px; width: 651px;" class="chart-render-monitor"></canvas></div>
                             <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                         </div>
                     </div>
                 </div>
				<!-- 본인 작업 영역 end -->
			</div>
		</div>
	</div>
</body>
</html>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
 <script src="js/scripts.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
 <script src="assets/demo/chart-area-demo.js"></script>
 <script src="assets/demo/chart-bar-demo.js"></script>
 <script src="assets/demo/chart-pie-demo.js"></script>