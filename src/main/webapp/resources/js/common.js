$(function() {

	//본문 컨테이너 마진-탑 자동 조정
	var header_height = $(".navbar").height();
	$(".content-container").css('margin-top', header_height);
	$("#sidebar-wrapper").css('margin-top', header_height);
	$(window).resize(function() {
		var header_height = $(".navbar").height();
		$(".content-container").css('margin-top', header_height);
		$("#sidebar-wrapper").css('margin-top', header_height);
	});
	
	// 툴팁
	$('[data-toggle="tooltip"]').tooltip();
	
	//데이터 저장소
	$(".data-repo-btn").hover(
		function() {
			$(this).children().remove();
			$(this).append().html(
				"<i class='fa fa-folder-open-o data-repo-icon' aria-hidden='true'></i>"	
			);
		},
		function() {
			$(this).children().remove();
			$(this).append().html(
				"<i class='fa fa-folder-o data-repo-icon' aria-hidden='true'></i>"	
			);
		}
	);
	
	$(".data-repo-create-btn").hover(
			function() {
				$(this).children().css('color','#fff');
			},
			function() {
				$(this).children().css('color','#e3e3e3');
			}
		);
	
});