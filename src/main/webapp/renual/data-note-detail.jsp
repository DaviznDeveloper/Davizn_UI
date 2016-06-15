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
					<li class="active">노트형 데이터  제목</li>
				</ol>
		
				<div class="note-detail-option">
					<span class="glyphicon glyphicon-pencil note-detail-modi" 
						data-toggle="tooltip" title="노트 수정하기" aria-hidden="true"></span>
					<span class="glyphicon glyphicon-trash note-detail-modi" 
						data-toggle="tooltip" title="노트 삭제하기" aria-hidden="true"></span>
				</div>
				
				<hr>
		
				<div class="pieProgress" role="progressbar" data-goal="27" aria-valuemin="0" data-step="1" aria-valuemax="100">
			        <div class="progress__meter"><span class="pie_progress__number"></span></div>
			    </div>
		
				<div id="push"></div>
						
			</div>
			
		</div>
		
	</div>
	
</div>

<script src="${pageContext.request.contextPath}/resources/js/data-note-detail.js"></script>


<%@include file="/renual/footer.jsp"%>