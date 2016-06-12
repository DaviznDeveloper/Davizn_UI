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
							<li class="active">노트형 데이터 만들기</li>
						</ol>
						
						<form action="" method="post">
							
							<button type="button" class="btn btn-info sendNoteData">저장</button>
							<button type="reset" class="btn btn-default">취소</button>
							
							<hr>
						
							<input type="text" name="" class="form-control" placeholder="제목을 입력하세요">
							
							<br>
							
							<textarea name="inputArticleContents" id="ckeditor" class="ckeditor-box" rows="50" cols="50"></textarea>
							
						</form>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
	
	$(function() {
		
		
		CKEDITOR.replace('ckeditor',{
			skin: 'moonocolor',
			enterMode: '2',
			shiftEnterMode: '3',
			height: '400px',
			filebrowserImageUploadUrl: '${pageContext.request.contextPath}/resources/lib/ckeditor/upload.jsp?'
				    					+'realUrl=http://localhost:8090/davizn/resources/upload/'
				    					+'&realDir=upload'
		});
		
		$(".sendNoteData").click(function() {
			var sendNoteData = CKEDITOR.instances.ckeditor.getData();
			
			console.log("데이터" + " : " + sendNoteData);
			
			
		});
		
	});
	
</script>

<%@include file="/renual/footer.jsp"%>