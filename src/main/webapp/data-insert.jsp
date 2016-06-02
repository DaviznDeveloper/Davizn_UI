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
		
		<!-- Bootstrap -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
		<!-- font-awesome -->
		<link href="${pageContext.request.contextPath}/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
		
		<!-- Custom CSS -->
		<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sideBar.css">
		
		<!-- Custom Script -->
		<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/sideBar.js"></script>

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
								<li class="nav_menu">
									<a href="#">
										<i class="fa fa-eye" aria-hidden="true"></i> &nbsp;사이트 관리
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
		        	
		        		<form action="" id="" method="">
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
				                	<a href="">
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
						<li><a href="#">홈</a></li>
						<li><a href="#">데이터 관리</a></li>
						<li class="active">저장소 제목</li>
					</ol>
					
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-success"
						data-toggle="modal" data-target="#data-create">
						데이터 만들기
					</button>
	
					<!-- Modal -->
					<div class="modal fade" id="data-create" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
				
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">생성할 데이터 선택하기</h4>
								</div>

								<div class="modal-footer">
									<div class="row col-md-12 center-block">
									
										<div class="col-md-6">
											<div class="row">
												<div class="thumbnail">
													<img src="./resources/img/image.svg" alt="...">
													<div class="caption">
														<h3>문자형 데이터</h3>
														<p>문자형 데이터는 표에 문자와 숫자를 입력할 수 있어요.</p>
														<p>
															<a href="#" class="btn btn-primary" role="button">선택</a>
														</p>
													</div>
												</div>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="row">
												<div class="thumbnail">
													<img src="./resources/img/image.svg" alt="...">
													<div class="caption">
														<h3>차트형 데이터</h3>
														<p>차트형 데이터는 표에 숫자를 입력할 수 있어요.</p>
														<p>
															<a href="#" class="btn btn-primary" role="button">선택</a>
														</p>
													</div>
												</div>
											</div>
										</div>
										
									</div>
								</div>
	
							</div>
						</div>
					</div>
					<!-- Modal -->
	
					<br>
	
					<div class="row no-padding">
						<h3 class="col-md-9">내가 저장한 데이터 (4)</h3>
						<div  class="col-md-3">
							<select class="form-control data-m-repo-select">
								<option>내 저장소 선택</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<table class="table table-hover data-list-table">
						<colgroup>
							<col width="" data-key="title">
							<col width="200" data-key="buttons">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<div class="data-list-div">
										<i class="fa fa-language chart-list-type" aria-hidden="true"></i>
										<a href="#" data-toggle="tooltip" title="데이터 수정하기">
											<span class="data-list-span">여기는 제목입니다.</span>
										</a>
										<span class="data-list-span">2016-05-09 00:31:19</span>
									</div>
								</td>
								<td>
									<a href="" class="btn btn-warning chart-list-option-btn" data-toggle="tooltip" title="데이터 수정하기">
										<i class="fa fa-pencil chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-info chart-list-option-btn" data-toggle="tooltip" title="데이터 공유하기">
										<i class="fa fa-share-alt chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-success chart-list-option-btn chr-list-btn-dash" data-toggle="tooltip" title="대시보드에 추가하기">
										<i class="fa fa-tachometer chart-list-option" aria-hidden="true" ></i>
									</a>
									<a href="" class="btn btn-danger chart-list-option-btn" data-toggle="tooltip" title="데이터 삭제하기">
										<i class="fa fa-trash-o chart-list-option" aria-hidden="true"></i>
									</a>
								</td>
							</tr>
							
							<tr>
								<td>
									<div class="data-list-div">
										<i class="fa fa-bar-chart chart-list-type" aria-hidden="true"></i>
										<a href="#" data-toggle="tooltip" title="데이터 수정하기">
											<span class="data-list-span">여기는 제목입니다.</span>
										</a>
										<span class="data-list-span">2016-05-09 00:31:19</span>
									</div>
								</td>
								<td>
									<a href="" class="btn btn-warning chart-list-option-btn" data-toggle="tooltip" title="데이터 수정하기">
										<i class="fa fa-pencil chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-info chart-list-option-btn" data-toggle="tooltip" title="데이터 공유하기">
										<i class="fa fa-share-alt chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-success chart-list-option-btn chr-list-btn-dash" data-toggle="tooltip" title="대시보드에 추가하기">
										<i class="fa fa-tachometer chart-list-option" aria-hidden="true" ></i>
									</a>
									<a href="" class="btn btn-danger chart-list-option-btn" data-toggle="tooltip" title="데이터 삭제하기">
										<i class="fa fa-trash-o chart-list-option" aria-hidden="true"></i>
									</a>
								</td>
							</tr>
							
							<tr>
								<td>
									<div class="data-list-div">
										<i class="fa fa-pie-chart chart-list-type" aria-hidden="true"></i>
										<a href="#" data-toggle="tooltip" title="데이터 수정하기">
											<span class="data-list-span">여기는 제목입니다.</span>
										</a>
										<span class="data-list-span">2016-05-09 00:31:19</span>
									</div>
								</td>
								<td>
									<a href="" class="btn btn-warning chart-list-option-btn" data-toggle="tooltip" title="데이터 수정하기">
										<i class="fa fa-pencil chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-info chart-list-option-btn" data-toggle="tooltip" title="데이터 공유하기">
										<i class="fa fa-share-alt chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-success chart-list-option-btn chr-list-btn-dash" data-toggle="tooltip" title="대시보드에 추가하기">
										<i class="fa fa-tachometer chart-list-option" aria-hidden="true" ></i>
									</a>
									<a href="" class="btn btn-danger chart-list-option-btn" data-toggle="tooltip" title="데이터 삭제하기">
										<i class="fa fa-trash-o chart-list-option" aria-hidden="true"></i>
									</a>
								</td>
							</tr>
							
							<tr>
								<td>
									<div class="data-list-div">
										<i class="fa fa-area-chart chart-list-type" aria-hidden="true"></i>
										<a href="#" data-toggle="tooltip" title="데이터 수정하기">
											<span class="data-list-span">여기는 제목입니다.</span>
										</a>
										<span class="data-list-span">2016-05-09 00:31:19</span>
									</div>
								</td>
								<td>
									<a href="" class="btn btn-warning chart-list-option-btn" data-toggle="tooltip" title="데이터 수정하기">
										<i class="fa fa-pencil chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-info chart-list-option-btn" data-toggle="tooltip" title="데이터 공유하기">
										<i class="fa fa-share-alt chart-list-option" aria-hidden="true"></i>
									</a>
									<a href="" class="btn btn-success chart-list-option-btn chr-list-btn-dash" data-toggle="tooltip" title="대시보드에 추가하기">
										<i class="fa fa-tachometer chart-list-option" aria-hidden="true" ></i>
									</a>
									<a href="" class="btn btn-danger chart-list-option-btn" data-toggle="tooltip" title="데이터 삭제하기">
										<i class="fa fa-trash-o chart-list-option" aria-hidden="true"></i>
									</a>
								</td>
							</tr>
						</tbody>
					</table>
	
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

		<div id="footer">
			<div class="container">
				<p class="muted credit">
					푸터푸터퓨ㅜ터퓨터퓨터퓨터
				</p>
			</div>
		</div>

</body>
	
</html>
			
