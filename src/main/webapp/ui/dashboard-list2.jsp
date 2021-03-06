<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<meta name="description" content="">
		<meta name="author" content="Hwang.Young-sun">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon-152.png" sizes="152x152">
		
		<title>Davizn - 데이터 관리형 도구 사이트</title>
		
		<!-- Bootstrap -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  		
  		<!-- jQery-ui -->
  		<!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
		
		<!-- font-awesome -->
		<link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- ipgrid -->
		<link href="${pageContext.request.contextPath}/resources/lib/ipgrid-master/ip.grid.css" rel="stylesheet" />
		
		<!-- editTable -->
		<link href="${pageContext.request.contextPath}/resources/lib/editTable/jquery.edittable.css" rel="stylesheet" />
		
		<!-- angular-gridster -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/angular-gridster/angular-gridster.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/angular-gridster/style.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.js"></script>
		<script src="https://code.angularjs.org/1.2.15/angular-route.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/lib/angular-gridster/angular-gridster.js"></script>
		
		<!-- Custom CSS -->
		<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sideBar.css">
		
		<!-- Custom Script -->
		<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/sideBar.js"></script>


		<script type="text/javascript">
			(function() {
				angular.module('app', ['gridster', 'ui.bootstrap', 'ngRoute'])
					.config(['$routeProvider',
						function($routeProvider) {
							$routeProvider
								.when('/dashboard', {
									templateUrl: '${pageContext.request.contextPath}/resources/lib/angular-gridster-master/demo/dashboard/view.html',
									controller: 'DashboardCtrl'
								});
						}
					])
					.controller('RootCtrl', function($scope) {
						$scope.$on('$locationChangeStart', function(e, next, current) {
							$scope.page = next.split('/').splice(-1);
							$scope.styleUrl = '${pageContext.request.contextPath}/resources/lib/angular-gridster-master/demo/' + $scope.page + '/style.css'
						});
					});
			})();
		</script>
	
		<script src="${pageContext.request.contextPath}/resources/js/gridster-script.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/dashboard-list.js"></script>
	</head>

<body ng-app="app">
	<div ng-controller="RootCtrl">
		<link rel="stylesheet" ng-href="{{ styleUrl }}" />

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

		<div class="container" ng-view></div>

	</div>
</body>

</html>