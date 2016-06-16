<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/renual/header2.jsp"%>
				
				<!-- content -->
				<div class="container">
				
					<div class="col-sm-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li class="active">전체 알림 메세지 목록 보기</li>
						</ol>
							
						<span class="glyphicon glyphicon-refresh notice-detail-icon" 
							data-toggle="tooltip" title="새로 고침" aria-hidden="true"></span>

						<span class="glyphicon glyphicon-eye-close notice-detail-icon" 
							data-toggle="tooltip" title="읽은 알림 삭제" aria-hidden="true"></span>
							
						<span class="glyphicon glyphicon-trash notice-detail-icon" 
							data-toggle="tooltip" title="전체 삭제" aria-hidden="true"></span>
					
						<hr>

						<div class="col-sm-8 col-sm-offset-2 table-responsive">
							
							<table class="table table-bordered">
								
								<thead>
								
									<tr>
										<th class="text-center">구분</th>
										<th class="text-center">내용</th>
										<th class="text-center">날짜</th>
										<th class="text-center">삭제</th>
									</tr>
								
								</thead>
								
								<tbody>
									
									<tr class="font-bold">
										<td class="text-center">목표관리</td>
										<td><a href="" class="notice-list-title">'3차 프로젝트' 목표가 종료되었습니다.</a></td>
										<td class="text-center">2016.06.16</td>
										<td class="text-center">
											<a href="">
												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											</a>
										</td>
									</tr>
									
									<tr class="font-bold">
										<td class="text-center">일정관리</td>
										<td><a href="" class="notice-list-title">'슬기 생일' 일정이 종료되었습니다.</a></td>
										<td class="text-center">2016.06.16</td>
										<td class="text-center">
											<a href="">
												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											</a>
										</td>
									</tr>
									
									<tr>
										<td class="text-center">그룹</td>
										<td><a href="" class="notice-list-title">'Davizn' 그룹에 가입되었습니다.</a></td>
										<td class="text-center">2016.06.16</td>
										<td class="text-center">
											<a href="">
												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											</a>
										</td>
									</tr>
									
									<tr class="font-bold">
										<td class="text-center">목표관리</td>
										<td>
											<a href="" class="notice-list-title">'KOSTA 112기' 목표가 종료되었습니다.</a>
										</td>
										<td class="text-center">2016.06.16</td>
										<td class="text-center">
											<a href="">
												<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
											</a>
										</td>
									</tr>
									
									
								</tbody>
								
							</table>
							
						</div>
						
						<br>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/gorl/progress.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-gorl.js"></script>

<%@include file="/renual/footer.jsp"%>