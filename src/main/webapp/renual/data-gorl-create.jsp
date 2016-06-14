<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/renual/header2.jsp"%>
				
				<!-- content -->
				<div class="container">
				
					<div class="col-sm-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 데이터 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-list.jsp">저장소 제목</a></li>
							<li class="active">노트형 데이터 만들기</li>
						</ol>
							
							<span class="glyphicon glyphicon-plus gorl-create" 
								data-toggle="tooltip" title="목표 만들기" aria-hidden="true"></span>
							
							<hr>

							<a href="" class="gorl-atag">
								<div class="panel panel-success">
									<div class="panel-body">
										<div class="col-sm-12 no-padding">
											<div class="col-md-1 col-sm-2 no-padding">
												<div class="pieProgress" role="progressbar" data-goal="27" aria-valuemin="0" data-step="1" aria-valuemax="100">
											        <div class="progress__meter"><span class="pie_progress__number"></span></div>
											    </div>
											</div>
											<div class="col-sm-5 pull-left margin-top-10">
												<h3>3차 프로젝트</h3>
											</div>
											<div class="col-sm-5 pull-left">
												<h4>
													<span class="glyphicon glyphicon-check gorl-checklist" aria-hidden="true"></span>
													<span class="gorl-checklist">3</span> 개의 세부 목표
												</h4>
											</div>
											<div class="col-sm-5 pull-left">
												<h4>
													<span class="glyphicon glyphicon-time gorl-timeover" aria-hidden="true"></span>
													<span class="gorl-timeover">2016. 06. 24</span> 까지 완료
												</h4>
											</div>
										</div>
									</div>
								</div>
							</a>
							
							<br>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/gorl/progress.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-gorl.js"></script>

<%@include file="/renual/footer.jsp"%>