<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/ui/header.jsp"%>
				
				<!-- content -->
				<div class="col-md-10 content-container">

					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
						<li class="active">내 프로필</li>
					</ol>
					
					<div class="col-md-3 no-padding">

						<a href="#" class="thumbnail profile-thumbnail no-margin"> 
							<img src="${pageContext.request.contextPath}/resources/img/avatar2.png" alt="...">
						</a>
						
						<div class="col-md-12 no-padding">
							<span class="profile-nickname">Hwang</span>
						</div>
						
						<div class="col-md-12 no-padding">
							<span class="profile-font">leafgreen.hwang@gmail.com</span>
						</div>
						
						<div class="col-md-12 no-padding">
							<span class="profile-font">010-2932-4718</span>
							<hr>
						</div>
						
						
						<div class="col-md-12 no-padding">
							<span class="profile-font">2016년 1월 12일에 가입.</span>
						</div>
				
					</div>
					
					<div class="col-md-9 no-padding">
					
					</div>
	
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<%@include file="/ui/footer.jsp"%>