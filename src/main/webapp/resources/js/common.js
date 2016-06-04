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
	
	// 프로필 사진 업로드
	$("#profile-thum-modi").click(function() {
		event.preventDefault();
		//$("#uploadImage").click();

	    $(this).children().addClass('resize-image');
	    resizeableImage($(".resize-image"));
	});
	
	$("#uploadImage").change(function(){
		//resizeableImage($(".resize-image"));
		event.preventDefault();
	    readUploadImage(this);
	});
	
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

// 프로필 사진 업로드
function readUploadImage( inputObject ) {

	if ( window.File && window.FileReader ) {

		/* 입력된 파일이 1개 이상 있는지 확인 */

		if ( inputObject.files && inputObject.files[0]) {

			/* 이미지 파일인지도 체크  */

			if ( !(/image/i).test(inputObject.files[0].type ) ){

				alert("이미지 파일을 선택해 주세요!");

				return false;

			}

			/* FileReader */

			var reader = new FileReader();

			reader.onload = function (e) {
				$('#profile-preview').attr('src', e.target.result);
			}

			/* input file에 있는 파일 하나를 읽어온다. */
			reader.readAsDataURL(inputObject.files[0]);
			
		}



	} else {

		alert( "지원하지 않는 브라우저 입니다.");

	}

}

// 프로필 사진 리사이징
function autoImgResize(obj, maxSize) {
	alert("aa");
    obj.each(function() {
        var obj = $(this).attr({alt: '클릭하시면 원본 사이즈로 보실 수 있습니다.'}).unbind('click').bind('click', function() { window.open(obj.attr('src'), ''); }).css({cursor: 'pointer'});
        var width = 0, height = 0;
        width = parseInt(obj.attr('width'), 10) || parseInt(obj.css('width'), 10);
        height = parseInt(obj.attr('height'), 10) || parseInt(obj.css('height'), 10);
        if(width > maxSize) obj.css({width: maxSize+'px', height: Math.round(height * (maxSize / width))+'px'});
    });
}