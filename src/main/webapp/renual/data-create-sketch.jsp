<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/renual/header2.jsp"%>
				
				<!-- content -->
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 데이터 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-list.jsp">저장소 제목</a></li>
							<li class="active">스케치형 데이터 만들기</li>
						</ol>
						
						<form action="" method="post">
							
							<button type="button" class="btn btn-info sendNoteData">저장</button>
							<button type="reset" class="btn btn-default">취소</button>
							
							<hr>
						
							<input type="text" name="" class="form-control input-lg note-title" placeholder="제목을 입력하세요">
							
							<br>
							
							<button onclick="event.preventDefault(); atrament.clear();">clear</button><br>
							<label>Thickness</label><br>
							<input type="range" min="1" max="40" oninput="atrament.weight = parseFloat(event.target.value);" value="2" step="0.1" autocomplete="off"/><br>
							<label>Smoothing</label><br>
							<input type="checkbox" onchange="atrament.smoothing = event.target.checked;" checked autocomplete="off"><br>
							<label>Mode</label>
							<select onchange="atrament.mode = event.target.value;">
								<option value="draw" default>Draw</option>
								<option value="fill" default>Fill</option>
								<option value="erase" default>Erase</option>
							</select><br>
							<label>Colour</label>
							<input type="color" onchange="atrament.color = event.target.value;" value="black" autocomplete="off"><br>
							<label>Opacity</label><br>
							<input type="range" min="0" max="1" onchange="atrament.opacity = parseFloat(event.target.value);" value="1" step="0.05" autocomplete="off">
							<canvas></canvas>
							
						</form>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/atrament/lib/atrament.js"></script>

<script type="text/javascript">
	
	$(function() {
		
		var atrament = atrament('canvas', window.innerWidth, window.innerHeight);
		
	});
	
</script>

<%@include file="/renual/footer.jsp"%>