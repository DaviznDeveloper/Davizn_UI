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
							<li class="active">스케치형 데이터 만들기</li>
						</ol>
						
						<form action="" method="post">
						
							<div class="note-detail-option">
								<span class="glyphicon glyphicon-save sketch-save-btn" 
									data-toggle="tooltip" title="노트 저장하기" aria-hidden="true"></span>
							</div>
						
							<input type="text" name="" class="form-control input-lg sketch-title" placeholder="제목을 입력하세요">
							
							<br>
					
							<div class="sketch-box">
								<div id="my-sketch" class="my-drawing"></div>
							</div>
							
							<textarea id="sketchData" name=""></textarea>
							
						</form>
						
						<br>
						
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<!-- dependency: React.js -->
<script src="//cdnjs.cloudflare.com/ajax/libs/react/0.14.7/react-with-addons.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/react/0.14.7/react-dom.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/sketch/js/literallycanvas.js"></script>
<script type="text/javascript">
							
	$(function() {
		
		var lc = LC.init(
            document.getElementsByClassName('my-drawing')[0],
            {imageURLPrefix: '${pageContext.request.contextPath}/resources/lib/sketch/img'}
        );
		
		$(".sketch-save-btn").click(function() {
			var sketchTitle = $(".sketch-title").val();
			var sketchData = lc.getImage().toDataURL();
			
			$("#sketchData").val(sketchData);
			
			//alert(sketchData);
			//var copyimg = new Image();
			//var copyCanvas = $("#test-box");
			//var copyContext = copyCanvas.get(0).getContext('2d'); 
			//copyimg.src = sketchData;
			//copyContext.drawImage(copyimg,0,0);
		});

	});
</script>


<%@include file="/renual/footer.jsp"%>