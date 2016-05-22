<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="Hwang.Young-sun">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/img/favicon-152.png"
	sizes="152x152">

<title>Davizn - 데이터 시각화 도구</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Custom CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">


<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<!-- jQuery-UI -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!-- custom Script -->

</head>

<body>

	<div class="container-fluid full-container">

		<div class="navbar header-container">
		
			<div class="full-layout col-md-8">

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
					<ul class="nav navbar-nav navbar-left">
						<li class="nav_menu"><a href="${pageContext.request.contextPath}/dataVisual.navigation"><span class="h-menu-span">대시보드</span></a></li>
						<li class="nav_menu"><a href="${pageContext.request.contextPath}/BoardList.action"><span class="h-menu-span">데이터 관리</span></a></li>
						<li class="nav_menu"><a href="#" class="header-data-analysis"><span class="h-menu-span">커뮤니티</span></a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="navbar-right">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<span class="h-menu-span">Hwang</span>
								<span class="caret"></span>
	                        </a>
	                        <ul class="dropdown-menu">
	                           <li><a href="${pageContext.request.contextPath}/main-profile.navigation"><i class="fa fa-user"></i>  &nbsp;My 페이지</a></li>
	                           <li><a href="${pageContext.request.contextPath}/logout.navigation"><i class="fa fa-power-off"></i>  &nbsp;Logout</a></li>
	                        </ul>
						</li>
					</ul>
				</div>
				
			</div>
	
		</div>

	</div>

</body>

</html>