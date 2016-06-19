<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/renual/header2.jsp"%>
				
				<!-- content -->
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 그룹</a></li>
							<li class="active">그룹 메인</li>
						</ol>
						
						<div class="col-sm-4">
						
							<div class="col-sm-12 no-padding">
								<button type="button" class="btn btn-success">
									<i class="fa fa-plus" aria-hidden="true"></i>
									그룹 만들기
								</button>
								<br><br>
							</div>
							
							<div class="col-sm-12 no-padding">
								<a href="">
									<div class="panel panel-primary">
										<div class="panel-body">
										
											<div class="group-main-groupbox-groupname">
												DaviznDeveloper
											</div>
											
											<div>
												그룹장 : Davizn
											</div>
											
											<br>
											
											<div class="col-xs-4 no-padding border-right">
												
												<div class="col-xs-12 center-block text-center margin-bottom-10" data-toggle="tooltip" title="그룹 멤버">
													<i class="fa fa-users vertical-middle group-main-icon-fonts" aria-hidden="true"></i>
												</div>
												
												<div class="col-xs-12 center-block text-center">
													3
												</div>
												
											</div>
											
											<div class="col-xs-4 no-padding border-right">
												
												<div class="col-xs-12 center-block text-center margin-bottom-10" data-toggle="tooltip" title="그룹 데이터">
													<i class="fa fa-files-o vertical-middle group-main-icon-fonts" aria-hidden="true"></i>
												</div>
												
												<div class="col-xs-12 center-block text-center">
													1
												</div>
												
											</div>
											
											<div class="col-xs-4 no-padding">
												
												<div class="col-xs-12 center-block text-center margin-bottom-10" data-toggle="tooltip" title="그룹 목표">
													<i class="fa fa-list-alt vertical-middle group-main-icon-fonts" aria-hidden="true"></i>
												</div>
												
												<div class="col-xs-12 center-block text-center">
													2
												</div>
												
											</div>
										
										</div>
									</div>
								</a>
								
								<br><br>
								
							</div>
							
							<div class="col-sm-12 no-padding">
								<div class="input-group">
									<span class="input-group-btn">
										<button class="btn btn-warning" type="button">
											<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
										</button>
									</span>
									<input type="text" class="form-control" placeholder="그룹명">
								</div>
								<br><br>
							</div>
							
							<a href="">
								<div class="col-sm-12 no-padding">
									<div class="panel panel-warning">
										<div class="panel-body">
										
											<div class="group-main-groupbox-groupname">
												한글이 제일 쉬웠어요
											</div>
											
											<div>
												그룹장 : 세종대왕
											</div>
										
										</div>
									</div>
								</div>
							</a>
								
							<a href="">
								<div class="col-sm-12 no-padding">
									<div class="panel panel-warning">
										<div class="panel-body">
										
											<div class="group-main-groupbox-groupname">
												남자의 불꽃 드리블 강좌
											</div>
											
											<div>
												그룹장 : 루니
											</div>
										
										</div>
									</div>
								</div>
							</a>
							
							<a href="">	
								<div class="col-sm-12 no-padding">
									<div class="panel panel-warning">
										<div class="panel-body">
										
											<div class="group-main-groupbox-groupname">
												혁신은 무엇인가
											</div>
											
											<div>
												그룹장 : 스티브 잡스
											</div>
										
										</div>
									</div>
								</div>
							</a>
								
							<a href="">
								<div class="col-sm-12 no-padding">
									<div class="panel panel-warning">
										<div class="panel-body">
										
											<div class="group-main-groupbox-groupname">
												가슴으로 외치는 샤우팅
											</div>
											
											<div>
												그룹장 : 우리동네 골목대장
											</div>
										
										</div>
									</div>
								</div>
							</a>
							
						</div>
						
						<div class="col-sm-8">
						
							<div>
								DaviznDeveloper
							</div>
						
							<a href="">
								<div class="panel panel-info">
									<div class="panel-body">
									
										<div class="group-main-list-date">2016.06.19</div>
										<div class="group-main-list-content">
											<span class="group-main-history-font">nameLim</span> 님이 노트형 데이터 <span class="group-main-history-font">'Java 언어로 배우는 디자인 패턴 입문'</span> 을 수정하였습니다.
										</div>
									</div>
								</div>
								
							</a>
						
						</div>
				
						
				
				
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-note.js"></script>

<%@include file="/renual/footer.jsp"%>