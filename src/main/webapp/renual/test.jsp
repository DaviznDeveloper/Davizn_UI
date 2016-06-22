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
		
		<title>Davizn - 데이터 관리형 도구 사이트</title>
		
		
  		<!-- css - jQery-ui -->
  		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		
		<!-- css - Bootstrap -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		
  		<!-- css - Bootstrap-datepicker -->
  		<link href="${pageContext.request.contextPath}/resources/lib/datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
  		
		<!-- css - font-awesome -->
		<link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- css - footable -->
		<link href="${pageContext.request.contextPath}/resources/lib/footable-bootstrap/css/footable.bootstrap.min.css" rel="stylesheet" />
		
		<!-- css - gorl -->
		<link href="${pageContext.request.contextPath}/resources/lib/gorl/progress.css" rel="stylesheet">
		
		<!-- css - TimeCircles -->
		<link href="${pageContext.request.contextPath}/resources/lib/TimeCircles/inc/TimeCircles.css" rel="stylesheet">
		
		<!-- css - include summernote css/js-->
		<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet">
		
		<!-- css - switch -->
		<link href="${pageContext.request.contextPath}/resources/lib/switch/switchable.css" rel="stylesheet">
		
		<!-- css - Custom CSS -->
		<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/css/sideBar.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/resources/css/group.css" rel="stylesheet">
		
		<!-- jQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
		
  		<!-- jQery-ui -->
  		<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		
		<!-- Bootstrap -->
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  		
  		<!-- Bootstrap-datepicker -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/lib/datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
		
		<!-- Custom Script -->
		<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/sideBar.js"></script>
		
		<!-- css - Custom CSS -->
		<link href="${pageContext.request.contextPath}/resources/lib/sketch/css/literallycanvas.css" rel="stylesheet">
		
		<!-- dependency: React.js -->
	    <script src="//cdnjs.cloudflare.com/ajax/libs/react/0.14.7/react-with-addons.js"></script>
	    <script src="//cdnjs.cloudflare.com/ajax/libs/react/0.14.7/react-dom.js"></script>
		<script src="${pageContext.request.contextPath}/resources/lib/sketch/js/literallycanvas.js"></script>
		

		
		<style type="text/css">
			.sketch-box {
				border: 1px solid #000;
			}
		</style>

	</head>
	
	<body>

		<div id="wrap">

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
							
							<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img class="brand_img" src="${pageContext.request.contextPath}/resources/img/Davizn.png" height="40px"></a>
						</div>
	
						<div id="navbar" class="navbar-collapse collapse">
						
							<ul class="nav navbar-nav navbar-left header-menu">
								<%-- 
								<li class="nav_menu">
									<a href="${pageContext.request.contextPath}/dataVisual.navigation">
										<i class="fa fa-tachometer" aria-hidden="true"></i> &nbsp;대시보드
									</a>
								</li>
								 --%>
								<li class="nav_menu">
									<a href="${pageContext.request.contextPath}/data-main.jsp">
										<i class="fa fa-database" aria-hidden="true"></i> &nbsp;내 데이터 관리
									</a>
								</li>
								<li class="nav_menu">
									<a href="${pageContext.request.contextPath}/data-main.jsp">
										<i class="fa fa-users" aria-hidden="true"></i></i> &nbsp;내 그룹
									</a>
								</li>
								<!-- // 데이터 마켓 구현 시, 코드 추가 
								<li class="nav_menu">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i> &nbsp;데이터 마켓
									</a>
								</li>
								 -->
								<li class="nav_menu">
									<a href="#">
										<i class="fa fa-comments-o" aria-hidden="true"></i> &nbsp;커뮤니티
									</a>
								</li>
								<li class="nav_menu">
									<a href="#">
										<i class="fa fa-question-circle" aria-hidden="true"></i> &nbsp;1:1 문의&건의
									</a>
								</li>
								<!-- 
								<li class="nav_menu">
									<a href="#">
										<i class="fa fa-eye" aria-hidden="true"></i> &nbsp;사이트 관리
									</a>
								</li>
								 -->
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
										<span class="badge h-menu-tran-badge-notice">12</span>
			                        </a>
			                        <ul class="dropdown-menu">
			                        
										<!-- for-each -->
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <!-- choose(이모티콘) -->
			                                   <i class="fa fa-trophy" aria-hidden="true"></i>
			                                   <!-- choose(이모티콘) -->
			                                   &nbsp;
			                                   <span class="notice-header-span">3차 프로젝트가 종료되었습니다.</span>
			                               </a>
			                           </li>
			                           <!-- for-each -->
			                           
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-calendar" aria-hidden="true"></i>
			                                   &nbsp;
			                                   <span class="notice-header-span">슬기 생일 3일 전</span>
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-users" aria-hidden="true"></i>
			                                   &nbsp;
			                                   <span class="notice-header-span">'Davizn'에 가입 승인되었습니다.</span>
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-users" aria-hidden="true"></i>
			                                   &nbsp;
			                                   <span class="notice-header-span">'Davizn'에 가입 승인되었습니다.</span>
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-users" aria-hidden="true"></i>
			                                   &nbsp;
			                                   <span class="notice-header-span">'Davizn'에 가입 승인되었습니다.</span>
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-users" aria-hidden="true"></i>
			                                   &nbsp;
			                                   <span class="notice-header-span">'Davizn'에 가입 승인되었습니다.</span>
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-users" aria-hidden="true"></i>
			                                   &nbsp;
			                                   <span class="notice-header-span">'Davizn'에 가입 승인되었습니다.</span>
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical text-center">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <span class="notice-header-span notice-header-all">전체보기</span>
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
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/main-profile.navigation">
			                                   <i class="fa fa-user"></i>  &nbsp;프로필
			                               </a>
			                           </li>
			                           <li class="vertical-middle padding-vertical">
			                               <a href="${pageContext.request.contextPath}/logout.navigation">
			                                   <i class="fa fa-power-off"></i>  &nbsp;로그아웃
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
								
								<!-- login sidebar test -->
								<li>
									<button type="button" id="login-sidebar-btn" class="btn btn-info">로그인</button>
								</li>
							</ul>
							
						</div>
						
					</div>
				</div>
				<!-- /Main_Top_Nav -->
				
				<!-- Sidebar -->
		        <div id="sidebar-wrapper">
		        	<div class="sidebar-box">
		        		<div class="alert alert-danger alert-dismissible" role="alert">
  							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
  								<span aria-hidden="true">&times;</span>
  							</button>
  							<strong id="login-fail">잘못된 아이디 또는 비밀번호 입니다.</strong>
						</div>
		        	
		        		<form action="" id="" method="post">
				            <ul class="sidebar-nav">
				                <li>
				                	<div class="form-group">
				                		<input type="text" name="" class="form-control" placeholder="이메일">
				                	</div>
				                </li>
				                <li>
				                	<div class="form-group">
				                		<input type="password" name="" class="form-control" placeholder="비밀번호">
				                	</div>
				                </li>
				                <li>
				                	<div class="form-group">
				                		<input type="submit" class="btn btn-info btn-block" value="로그인">
				                	</div>
				                </li>
				                <li>
				                	<a href="#" class="get-id-pw">아이디 또는 비밀번호 찾기</a>
				                </li>
				                <li>
				                	<a href="${pageContext.request.contextPath}/sign-up.jsp">
					                	<button type="button" class="btn btn-success btn-block">
					                		회원가입
					                	</button>
				                	</a>
				                </li>
				        		<!-- 소셜 로그인 -->
				        		<li>
				        			<div class="login-border-bottom">
				        				<div class="login-or-box">
				        					<div class="login-or">또는</div>
				        				</div>
				        			</div>
				        		</li>
				        		
				        		<li>
					        		<div class="form-group">
					        			<button type="button" class="btn btn-block fb-login"></button>
									</div>
				        		</li>
				        		<li>
				        			<div class="form-group">
				        				<button type="button" class="btn btn-block goo-login"></button>
				        			</div>
				        		</li>
				        		
				        		
				            </ul>
				        </form>
				        
			        </div>
		        </div>
				
				<br>

				<!-- content -->
				<div class="col-md-10 content-container">

					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
						<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 데이터 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/renual/data-list.jsp">저장소 제목</a></li>
						<li class="active">스케치형 데이터 만들기</li>
					</ol>
				
					<br>
					
					<canvas id="test-box" width="1000" height="300" class="test-box"></canvas>
					
					<button type="button" class="btn btn-primary sketch-save">쇼미더저장</button>
					
					<div class="col-sm-12 no-padding sketch-box">
					
						<div id="my-sketch" class="my-drawing"></div>
						
						
							<script type="text/javascript">
							
								$(function() {
									
									var lc = LC.init(
							            document.getElementsByClassName('my-drawing')[0],
							            {imageURLPrefix: '${pageContext.request.contextPath}/resources/lib/sketch/img'}
							        );
									
									$(".sketch-save").click(function() {
										var lllc = lc.getImage().toDataURL();
										alert(lllc);
										var copyimg = new Image();
										var copyCanvas = $("#test-box");
										var copyContext = copyCanvas.get(0).getContext('2d'); 
										copyimg.src = lllc;
										copyContext.drawImage(copyimg,0,0);
									});
									
								});
							</script>
					
					</div>
					
					
					<!-- footer -->
				
					<div id="push"></div>
				
				</div>

		
<%@include file="/renual/footer.jsp"%>