<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/ui/header.jsp"%>
				
				<!-- content -->
				<div class="container">
					<div class="col-md-12 content-container">
	
						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
							<li class="active">1:1 문의&건의</li>
						</ol>
						
						<div class="col-md-12 no-padding margin-bottom-10">
						
							<table class="table" data-filtering="true">
								<thead>
								<tr>
									<th data-breakpoints="">번호</th>
									<th data-type="html" data-breakpoints="">제목</th>
									<th data-breakpoints="xs sm">작성자</th>
									<th data-breakpoints="xs sm md">작성일</th>
									<th data-breakpoints="xs sm md">조회</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>1</td>
									<td><a href="">안뇽하세용~</a></td>
									<td>kglim</td>
									<td>2016.06.09</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="">안뇽하세용~</a></td>
									<td>kglim</td>
									<td>2016.06.09</td>
									<td>3</td>
								</tr>
								<tr>
									<td>3</td>
									<td><a href="">만약에 ㅋ</a></td>
									<td>kglim</td>
									<td>2016.06.09</td>
									<td>1</td>
								</tr>
								<tr>
									<td>4</td>
									<td><a href="">눈꽃삼겹살 먹고 싶네</a></td>
									<td>kglim</td>
									<td>2016.06.09</td>
									<td>4</td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="">초콜렛 너무 땡깁니다!!</a></td>
									<td>kglim</td>
									<td>2016.06.09</td>
									<td>2</td>
								</tr>
								<tr>
									<td>6</td>
									<td><a href="">오~방가방</a></td>
									<td>kglim</td>
									<td>2016.06.09</td>
									<td>3</td>
								</tr>
								</tbody>
							</table>
							
						</div>
					
						<div id="push"></div>
					
					</div>
					
				</div>
			
			</div>
			
		</div>
		
<script src="${pageContext.request.contextPath}/resources/js/community.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/footable-bootstrap/js/footable.min.js"></script>
<script type="text/javascript">
jQuery(function($){
	$('.table').footable();
});
</script>

		
<%@include file="/ui/footer.jsp"%>