
$(function() {

	// 차트 데이터 입력창 생성
	var eTable = $('#edittable').editTable({
		data: [
			["칸 또는 줄에 있는 +버튼을 클릭하여 추가해보세요"]
		]
	});
	
	eTable.amchartReset();
	
	$("#edittable > table > thead > tr> th:last-child").click(function() {

		var na = $("#edittable > table > tbody tr td").children('input');
		var valuesHeader = $("#edittable > table > tbody tr:first-child td").children('input');
		var category = $("#edittable > table > tbody tr td:first-child").children('input');
		
		console.log(row);
		
		console.log(na);
		console.log(valuesHeader);
		console.log(category);
		
		$(na).attr('disabled',true);
		
		// col 제목 부분 컨트롤
		$.each(valuesHeader, function(index, obj) {
			var values = '항목의 값' + index;
			
			if(index == 0) {
				return true;
			}
			
			$(this).val(values);
		});
		
		// row 제목 부분 컨트롤
		$.each(category, function(index, obj) {
			var values = '항목' + index;
			
			if(index == 0) {
				return true;
			}
			
			$(this).val(values).css('font-weight','bold');
		});
		

		
		var row = [];
		var val;
		$.each(category, function(i, v) {
			val = $("#edittable > table > tbody tr td").eq(i).children('input').val();
			
			row.push({
				i: val
			});
			
		});
		
		// 차트 데이터 형식으로 가공
		/*
		var amchart_provider = [];
		var row, colTitle, colValues;
		
		$.each(valuesHeader, function(i, colObj) {
			
			if(i == 0) {
				return true;
			}
			
			colTitle = colObj.val();
			
			$.each(category, function(j, rowObj) {
				
				if(j == 0) {
					return true;
				}
				
				row = rowObj.val();
				
				amchart_provider.push({
					"category": row,
					colTitle: 
					
					
				});
				
			});
			
		});
		*/
		
	});

	// Reset table data
	$('.reset').click(function () {
		eTable.reset();
	});

	// Send JSON data trough an ajax call
	$('.sendjson').click(function () {
		
		var json = eTable.getJsonData();
		
		var jsonObject = {};
		
//		$(json).each(function(i) {
//
//			var rows = "row" + i
//			
//			jsonObject = {
//					rows : json[i]
//			}
//			
//		});
		
//		jsonObject = {
//				"rows1" : json[0],
//				"rows2" : json[1],
//				"rows3" : json[2]
//		};
		
		console.log(json);
		console.log(json[0][0]);
		
		
		return false;
	});
	
	$(".sendjson").click(function() {

		$(".sendjson").button('loding');

		$.ajax({
			url : '',
			type: 'POST',
			data: { 
				ajax: true,
				data: eTable.getJsonData()
			},
			beforeSend: function(){
				
		    },
		    complete: function(data){
		        //console.log(JSON.parse(data.responseText));
		        $('.loading-container').addClass('display-none');
		 
		    },
		    success: function(data){
		    	console.log(data);
		    },
		    error: function(e){
				
		    },
		    timeout: 10000
		});
		

		$(".sendjson").button('reset');
		
	});
	
	// amcharts 그리기
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
		/* 
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
		 */
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