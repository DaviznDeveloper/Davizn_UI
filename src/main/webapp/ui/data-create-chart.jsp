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
				'<div class="chartbox">' +
				'<button type="button" class="close"><span aria-hidden="true">&times;</span></button>' +
				'<div id="chartdiv"></div>' +
				'<hr>' +
				'</div>'
			);
			
			$(".close").click(function() {
				$(this).parent().remove();
			});
			
			// Export data
	        function exportData() {
	            var row = 0, data = [], value;

	            is_validated = true;

	            $table.find('tbody tr').each(function () {

	                row += 1;
	                data[row] = [];

	                $(this).find('td:not(:last-child)').each(function (i, v) {
	                    if ( s.row_template && 'text' !== s.row_template[i] ){
	                        var field = s.field_templates[s.row_template[i]],
	                            el = $(this).find($(field.html).prop('tagName'));
	                        
	                        value = field.getValue(el);
	                        if ( !s.validate_field(i, value, s.row_template[i], el) ){
	                            is_validated = false;
	                        }
	                        data[row].push(value);
	                    } else {
	                        value = $(this).find('input[type="text"]').val();
	                        if ( !s.validate_field(i, value, 'text', v) ){
	                            is_validated = false;
	                        }
	                        data[row].push(value);
	                    }
	                });
	                
	            });
	           
			}
			
	        function generateChartData() {
	            var chartData = [];
	            jQuery('.data-row').each(function () {
	                var category = jQuery(this).find('.data-category').val();
	                var value = jQuery(this).find('.data-value').val();
	                if (category != '') {
	                    chartData.push({
	                        category: category,
	                        value: value
	                    });
	                }
	            });
	            return chartData;
	        }
			
			// amcharts 그리기
		    var chart = AmCharts.makeChart("chartdiv", {
		        "type": "serial",
		        "theme": "light",
		        "dataDateFormat": "YYYY-MM-DD",
		        "dataProvider": [{
		            "date": "2013-11-30",
		            "value": 104,
		            "value2": 200
		        }, {
		            "date": "2013-12-01",
		            "value": 108,
		            "value2": 200
		        }, {
		            "date": "2013-12-02",
		            "value": 103,
		            "value2": 200
		        }, {
		            "date": "2013-12-03",
		            "value": 105,
		            "value2": 200
		        }, {
		            "date": "2013-12-04",
		            "value": 136,
		            "value2": 200
		        }, {
		            "date": "2013-12-05",
		            "value": 138,
		            "value2": 200
		        }, {
		            "date": "2013-12-06",
		            "value": 113,
		            "value2": 200
		        }, {
		            "date": "2013-12-07",
		            "value": 131,
		            "value2": 200
		        }, {
		            "date": "2013-12-08",
		            "value": 114,
		            "value2": 200
		        }, {
		            "date": "2013-12-09",
		            "value": 124,
		            "value2": 200
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
		                "value": 0,
		                "value2": 0
		            }, {
		                "fillAlpha": 0.1,
		                "fillColor": "#0000cc",
		                "lineAlpha": 0,
		                "toValue": 200,
		                "value": 120,
		                "value2": 120
		            }]
		        }],
		        "graphs": [{
		            "bullet": "round",
		            "dashLength": 4,
		            "valueField": "value"
		        },{
		            "bullet": "round",
		            "dashLength": 4,
		            "valueField": "value2"
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