<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>

<html lang="ko">

	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<meta name="description" content="">
		<meta name="author" content="Hwang.Young-sun">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon-152.png" sizes="152x152">
		
		<title>Davizn - 데이터 시각화 도구</title>
		
		<!-- Bootstrap core CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Custom CSS -->
		<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
		
		<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
		<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
		
		<!-- data link - 공공데이터 포털  -->
		<script type="text/html"  src="http://apis.data.go.kr/B552061/jaywalking/getRestJaywalking?servicekey=uzdGvsGfIwXlXIu0zEKabpma9RXQvd%2BaOmSQJ4uluw%2BvuukI093dMd9%2FBAbHLzdPEM3sKXeG%2BtE4oSiAxWq5eQ%3D%3D&searchYearCd=2013114&sido=11&gugun=590"></script>
		<script type="text/html"  src="http://apis.data.go.kr/B552061/frequentzoneBicycle/getRestFrequentzoneBicycle?servicekey=h1QJQh4bO7TQgM%2FrjWPOfCLTCQ4TW%2BUM0O0tqOCp7UujND%2FDNVoboY8XOMoGcKTppFMncjyB8RI3d4Da2K8gjw%3D%3D&searchYearCd=2013099&sido=11&gugun="></script>
		<script type="text/html" src="http://apis.data.go.kr/1192000/openapi/service/ManageExpItemService/getExpItemList?ServiceKey=h1QJQh4bO7TQgM%2FrjWPOfCLTCQ4TW%2BUM0O0tqOCp7UujND%2FDNVoboY8XOMoGcKTppFMncjyB8RI3d4Da2K8gjw%3D%3D&pageNo=1&numOfRows=10&type=xml&baseDt=201501"></script>
		<script type="text/html" src="http://apis.data.go.kr/B552061/frequentzoneChild/getRestFrequentzoneChild?servicekey=h1QJQh4bO7TQgM%2FrjWPOfCLTCQ4TW%2BUM0O0tqOCp7UujND%2FDNVoboY8XOMoGcKTppFMncjyB8RI3d4Da2K8gjw%3D%3D&searchYearCd=2013097&siDo=11&guGun="></script>
		<script type="text/html" src="http://apis.data.go.kr/B552061/frequentzoneOldman/getRestFrequentzoneOldman?servicekey=h1QJQh4bO7TQgM%2FrjWPOfCLTCQ4TW%2BUM0O0tqOCp7UujND%2FDNVoboY8XOMoGcKTppFMncjyB8RI3d4Da2K8gjw%3D%3D&searchYearCd=2013098&sido=11&guGun="></script>		
		
		
		<!-- HighChart Plugin -->
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/highcharts-3d.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/data.js"></script>
		<script src="https://code.highcharts.com/modules/drilldown.js"></script>
			    
	    <!-- DataPicker Plugin -->
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   
		<!-- Custom Script -->
		
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
			    <![endif]-->
			    
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="http://bootstrapk.com/assets/js/ie10-viewport-bug-workaround.js"></script>

	</head>
	
	<body>

		<div id="main">
		
			<!-- Main_Top_Nav -->
			<div class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid">
					
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar" aria-expanded="false"
							aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
						
						<a class="navbar-brand" href="${pageContext.request.contextPath}/main.navigation"><img class="brand_img" src="${pageContext.request.contextPath}/resources/img/Davizn.png" height="40px"></a>
					</div>

					<div id="navbar" class="navbar-collapse collapse">
					
						<ul class="nav navbar-nav navbar-left header-menu">
							<li class="nav_menu">
								<a href="${pageContext.request.contextPath}/dataVisual.navigation">
									<i class="fa fa-tachometer" aria-hidden="true"></i> &nbsp;대시보드
								</a>
							</li>
							<li class="nav_menu">
								<a href="${pageContext.request.contextPath}/BoardList.action">
									<i class="fa fa-database" aria-hidden="true"></i> &nbsp;데이터 관리
								</a>
							</li>
							<li class="nav_menu">
								<a href="#">
									<i class="fa fa-shopping-cart" aria-hidden="true"></i> &nbsp;데이터 마켓
								</a>
							</li>
							<li class="nav_menu">
								<a href="#">
									<i class="fa fa-comments-o" aria-hidden="true"></i> &nbsp;커뮤니티
								</a>
							</li>
						</ul>
						
						<ul class="nav navbar-nav navbar-right">
							<li>
								<a class="btn dropdown-toggle h-menu-transition" data-toggle="dropdown" href="#">
									<span class="glyphicon glyphicon-envelope h-menu-tran-icon" aria-hidden="true"></span>
									<span class="badge h-menu-tran-badge-mail">4</span>
		                        </a>
		                        <ul class="dropdown-menu">
		                           <li>
		                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
		                                   id : 제목제목??
		                               </a>
		                           </li>
		                           <li>
		                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
		                                   id : 제목제목??
		                               </a>
		                           </li>
		                           <li>
		                               <a href="${pageContext.request.contextPath}/logout.navigation">
		                                   id : 제목제목??
		                               </a>
		                           </li>
		                           <li>
		                               <a href="${pageContext.request.contextPath}/logout.navigation">
		                                   id : 제목제목??
		                               </a>
		                           </li>
		                        </ul>
		                        
		                        <%-- 
								<li>
									<a class="login_btn" href="${pageContext.request.contextPath}/login.navigation">
										<button type="button" class="btn btn-info col-xs-12">로그인</button>
									</a>
								</li>
								 --%>
							</li>
							
							<li>
								<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
									<span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
									<span class="badge h-menu-tran-badge-notice">2</span>
		                        </a>
		                        <ul class="dropdown-menu">
		                           <li>
		                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
		                                   type : 알림알림??
		                               </a>
		                           </li>
		                           <li>
		                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
		                                   type : 알림알림??
		                               </a>
		                           </li>
		                        </ul>
		                        
		                        <%-- 
								<li>
									<a class="login_btn" href="${pageContext.request.contextPath}/login.navigation">
										<button type="button" class="btn btn-info col-xs-12">로그인</button>
									</a>
								</li>
								 --%>
							</li>
							
							<li>
								<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
									Hwang
									<span class="caret"></span>
		                        </a>
		                        <ul class="dropdown-menu">
		                           <li>
		                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
		                                   <i class="fa fa-user"></i>  &nbsp;내 프로필
		                               </a>
		                           </li>
		                           <li>
		                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
		                                   <i class="fa fa-database"></i>  &nbsp;내 데이터
		                               </a>
		                           </li>
		                           <li>
		                               <a href="${pageContext.request.contextPath}/logout.navigation">
		                                   <i class="fa fa-power-off"></i>  &nbsp;Logout
		                               </a>
		                           </li>
		                        </ul>
		                        
		                        <%-- 
								<li>
									<a class="login_btn" href="${pageContext.request.contextPath}/login.navigation">
										<button type="button" class="btn btn-info col-xs-12">로그인</button>
									</a>
								</li>
								 --%>
							</li>
						</ul>
						
					</div>
					
				</div>
			</div>
			<!-- /Main_Top_Nav -->    
