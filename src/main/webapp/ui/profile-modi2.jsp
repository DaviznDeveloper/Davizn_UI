<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/ui/header.jsp"%>
				
				<!-- content -->
				<div class="col-md-10 content-container">

					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
						<li><a href="${pageContext.request.contextPath}/ui/profile.jsp">내 프로필</a></li>
						<li class="active">프로필 수정하기</li>
					</ol>
					
					<div class="col-md-4 col-md-offset-4 no-padding">

						<form action="" method="post">

							<a href="" id="profile-thum-modi" class="thumbnail profile-thumbnail no-margin" data-toggle="tooltip" title="프로필 사진 변경하기">
								<div class="component">
									<div class="overlay">
										<div class="overlay-inner"></div>
									</div>
									<!-- This image must be on the same domain as the demo or it will not work on a local file system -->
									<!-- http://en.wikipedia.org/wiki/Cross-origin_resource_sharing -->
									<img id="profile-preview" src="${pageContext.request.contextPath}/resources/img/avatar2.png" alt="...">
									<button class="btn-crop js-crop">
										Crop<img class="icon-crop" src="img/crop.svg">
									</button>
								</div>
							</a>
							<input type='file' id="uploadImage" name="" />
							
							<br>
							
							<div class="col-md-12 no-padding">
								<input type="text" name="" class="form-control" placeholder="변경하실 닉네임을 입력하세요.">
							</div>
							
							<div class="col-md-12 no-padding">
								<span class="profile-font">
									<i class="fa fa-envelope profile-font-icon" aria-hidden="true"></i>
									&nbsp;&nbsp;<input type="text" class="form-control" value="leafgreen.hwang@gmail.com" disabled>
								</span>
							</div>
							
							<div class="col-md-12 no-padding">
								<span class="profile-font">
									<i class="fa fa-key profile-font-icon" aria-hidden="true"></i>
									&nbsp;&nbsp;<input type="password" class="form-control" placeholder="변경하실 비밀번호를 입력하세요.">
								</span>
							</div>
							
							<div class="col-md-12 no-padding">
								<span class="profile-font">
									<i class="fa fa-phone profile-font-icon" aria-hidden="true"></i>
									&nbsp;&nbsp;<input type="tel" class="form-control" placeholder="변경하실 연락처를 입력하세요.">									
								</span>
								<hr>
							</div>
						
						</form>
				
					</div>
	
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>
		
		<script src="${pageContext.request.contextPath}/resources/lib/ImageResizeCropCanvas/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/lib/ImageResizeCropCanvas/js/component.js"></script>

<%@include file="/ui/footer.jsp"%>