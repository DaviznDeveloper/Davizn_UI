<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/ui/header.jsp"%>
				
				<!-- content -->
				<div class="loading-container">
					<img class="loading-img" src="${pageContext.request.contextPath}/resources/img/davizn-loading.gif">
				</div>
				
				<div class="container">
				
					<div class="col-md-12 content-container">

						<ol class="breadcrumb">
							<li><a href="${pageContext.request.contextPath}/ui/index.jsp">홈</a></li>
							<li><a href="${pageContext.request.contextPath}/ui/data-repo.jsp">데이터 관리</a></li>
							<li><a href="${pageContext.request.contextPath}/ui/data-repo.jsp">저장소 제목</a></li>
							<li class="active">차트형 데이터 만들기</li>
						</ol>

						<div id="chartdiv-box"></div>
						
						<a href="#" class="btn btn-info sendjson button">저장</a>
						<a href="#" class="btn btn-danger reset button">리셋</a>
						
						<div class="pull-right">
							<button id="bar-chart-btn" class="btn btn-chart-type chart-type-btn margin-right-10" data-toggle="tooltip" title="막대 차트">
								<i class="fa fa-bar-chart chart-list-option" aria-hidden="true"></i>
							</button>
							<button id="line-chart-btn" class="btn btn-chart-type chart-type-btn margin-right-10" data-toggle="tooltip" title="라인 차트">
								<i class="fa fa-line-chart chart-list-option" aria-hidden="true"></i>
							</button>
							<button id="area-chart-btn" class="btn btn-chart-type chart-type-btn margin-right-10" data-toggle="tooltip" title="영역 차트">
								<i class="fa fa-area-chart chart-list-option" aria-hidden="true"></i>
							</button>
							<button id="pie-chart-btn" class="btn btn-chart-type chart-type-btn margin-right-10" data-toggle="tooltip" title="파이 차트">
								<i class="fa fa-pie-chart chart-list-option" aria-hidden="true"></i>
							</button>
						</div>
						<div id="edittable"></div>
				
					</div>
				
				</div>
				
				<div id="push"></div>
				
			</div>
			
		</div>

<script src="${pageContext.request.contextPath}/resources/lib/editTable/jquery.edittable.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/lib/amcharts/amcharts.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/lib/amcharts/serial.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/lib/amcharts/themes/light.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/data-create-chart.js" type="text/javascript"></script>		

<script type="text/javascript">

	$(function() {
		$("#bar-chart-btn").click(function() {
			
			$("#chartdiv-box").children().remove();
			
			$("#chartdiv-box").append().html(
				"<div id='chartdiv'></div>" +
				"<hr>"
			);
			
			// amcharts 그리기
		    var chart = AmCharts.makeChart("chartdiv", {
		        "type": "serial",
		        "theme": "light",
		        "dataDateFormat": "YYYY-MM-DD",
		        "dataProvider": [{
		            "date": "2013-11-30",
		            "value": 104
		        }, {
		            "date": "2013-12-01",
		            "value": 108
		        }, {
		            "date": "2013-12-02",
		            "value": 103
		        }, {
		            "date": "2013-12-03",
		            "value": 105
		        }, {
		            "date": "2013-12-04",
		            "value": 136
		        }, {
		            "date": "2013-12-05",
		            "value": 138
		        }, {
		            "date": "2013-12-06",
		            "value": 113
		        }, {
		            "date": "2013-12-07",
		            "value": 131
		        }, {
		            "date": "2013-12-08",
		            "value": 114
		        }, {
		            "date": "2013-12-09",
		            "value": 124
		        }],
		        "valueAxes": [{
		            "maximum": 140,
		            "minimum": 100,
		            "axisAlpha": 0,
		            "guides": [{
		                "fillAlpha": 0.1,
		                "fillColor": "#CC0000",
		                "lineAlpha": 0,
		                "toValue": 120,
		                "value": 0
		            }, {
		                "fillAlpha": 0.1,
		                "fillColor": "#0000cc",
		                "lineAlpha": 0,
		                "toValue": 200,
		                "value": 120
		            }]
		        }],
		        "graphs": [{
		            "bullet": "round",
		            "dashLength": 4,
		            "valueField": "value"
		        }],
		        "chartCursor": {
		            "cursorAlpha": 0,
		            "zoomable":false,
		            "valueZoomable":true
		        },
		        "categoryField": "date",
		        "categoryAxis": {
		            "parseDates": true
		        },
		        "valueScrollbar":{

		        }
		    });
			
		});
	});
	
</script>

<%@include file="/ui/footer.jsp"%>