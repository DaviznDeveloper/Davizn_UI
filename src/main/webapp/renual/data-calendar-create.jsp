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
							<li class="active">일정관리 데이터 만들기</li>
						</ol>
							
							<div class="" data-toggle="modal" data-target="#schedule-create-modal">
								<span class="glyphicon glyphicon-plus gorl-create" 
									data-toggle="tooltip" title="일정 만들기" aria-hidden="true"></span>
							</div>

							<form action="" method="post" class="form-horizontal">
								<div id="schedule-create-modal" class="modal fade">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title">일정 만들기</h4>
											</div>
											<div class="modal-body">
											
												<h4 class="text-center">당신의 일정을 계획하세요.</h4>
												
												<br>
												
												<div class="row">
													<label for="inputscheduleTitle" class="col-sm-2 control-label">일정 이름</label>
													<div class="col-sm-10">
														<input type="text" name="scheduleTitle" class="form-control" id="inputscheduleTitle"
															placeholder="일정 이름을 입력하세요">
													</div>
												</div>
												
												<br>
												
												<div class="row">
													<label for="inputscheduleContent" class="col-sm-2 control-label">일정 내용</label>
													<div class="col-sm-10">
														<textarea name="scheduleContent" class="form-control" rows="3" id="inputscheduleContent"
															placeholder="일정 내용을 입력하세요"></textarea>
													</div>
												</div>
												
												<br>
												
												<div class="row">
													<label for="inputGorlTitle" class="col-sm-2 control-label">일정 날짜</label>
													<div class="col-sm-10">
														<label class="col-sm-2 control-label">시작일</label>
														<div class='col-sm-10 input-group date' id='datetimepicker1'>
											                <input type='text' name="gorlStartDate" class="form-control" placeholder="시작일을 설정하세요(우측의 달력 버튼)">
											                <span class="input-group-addon">
											                    <span class="glyphicon glyphicon-calendar"></span>
											                </span>
											            </div>
											            
											            <br>
											            
											            <label class="col-sm-2 control-label">종료일</label>
											            <div class='col-sm-10 input-group date' id='datetimepicker2'>
											                <input type='text' name="gorlEndDate" class="form-control" placeholder="종료일을 설정하세요(우측의 달력 버튼)">
											                <span class="input-group-addon">
											                    <span class="glyphicon glyphicon-calendar"></span>
											                </span>
											            </div>
													</div>
												</div>
												
												<br>
												
												<div class="row">
													
												</div>
												
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
												<button type="button" class="btn btn-primary gorl-save">저장</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->
							</form>
					
							<hr>

							
							
							<br>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/gorl/progress.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-gorl.js"></script>

<%@include file="/renual/footer.jsp"%>