$(function() {

	// spreadsheet - 문자형 데이터 생성
	$("#jqs").ip_Grid({
		rows: 100,
		cols: 30,
		showGridResizerX: false,
		resizing: true
	});
	
	$(window).resize(function() {
		var grid_width = $(".content-container").width() - $("jqs_q1").width();
		$("#jqs_q2, #jqs_q4").css('width', grid_width);
		$("jqs_q2_div_container, jqs_q4_div_container").css('width', grid_width);
	});
	
});