<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/renual/header2.jsp"%>
				
				<!-- content -->
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/renual/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/renual/data-repo.jsp">내 그룹</a></li>
							<li class="active">그룹 목표관리</li>
						</ol>
						
						<div class="col-sm-12 margin-bottom-10">
						
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#gorl-create-modal">
								그룹 목표 만들기
							</button>

							<form action="" method="post" class="form-horizontal">
								<div id="gorl-create-modal" class="modal fade">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title">그룹 목표 만들기</h4>
											</div>
											<div class="modal-body">
											
												<h4 class="text-center">그룹의 목표를 설정하고 실행하세요.</h4>
												
												<br>
												
												<div class="row">
													<label for="inputGorlTitle" class="col-sm-2 control-label">목표 이름</label>
													<div class="col-sm-10">
														<input type="text" name="gorlTitle" class="form-control" id="inputGorlTitle"
															placeholder="이루고 싶은 목표를 입력하세요">
													</div>
												</div>
												
												<br>
												
												<div class="row">
													<label class="col-sm-2 control-label gorl-check-create"><i class="fa fa-plus-circle" aria-hidden="true"></i> 목표 추가</label>
													<div class="col-sm-10  gorl-Check-List-Box">
														<div class="gorl-check-input-box">
															<input type="text" name="gorlchecklist" class="form-control gorlCheckList margin-bottom-10"
																placeholder="세부 목표를 입력하세요">
															<button type="button" class="close gorl-check-input-box-close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
														</div>
													</div>
												</div>
												
												<br>
												
												<div class="row">
													<label for="inputGorlTitle" class="col-sm-2 control-label">목표 날짜</label>
													<div class="col-sm-10">
														<label class="col-sm-2 control-label">시작일</label>
														<div class='col-sm-10 input-group date' id='datetimepicker1'>
											                <input type='text' id="datetimeset1" name="gorlStartDate" class="form-control" placeholder="시작일을 설정하세요(우측의 달력 버튼)">
											                <span class="input-group-addon">
											                    <span class="glyphicon glyphicon-calendar"></span>
											                </span>
											            </div>
											            
											            <br>
											            
											            <label class="col-sm-2 control-label">종료일</label>
											            <div class='col-sm-10 input-group date' id='datetimepicker2'>
											                <input type='text' id="datetimeset2" name="gorlEndDate" class="form-control" placeholder="종료일을 설정하세요(우측의 달력 버튼)">
											                <span class="input-group-addon">
											                    <span class="glyphicon glyphicon-calendar"></span>
											                </span>
											            </div>
													</div>
												</div>
												
											</div>
											<div class="modal-footer">
												<button type="reset" class="btn btn-default" data-dismiss="modal">취소</button>
												<button type="submit" class="btn btn-primary gorl-save">저장</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->
							</form>
							
						</div>
						
						<div class="col-sm-8 col-sm-offset-2">
						
							<h2 class="text-center">3차 프로젝트</h2>
							
							<div class=""></div>
						
						</div>
						
					</div>	
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/js/group-info.js"></script>

<%@include file="/renual/footer.jsp"%>