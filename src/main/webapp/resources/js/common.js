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
	$("#uploadImage").change(function(){
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

/*

브라우저에서 FileReader가 지원되는지

확인하기 위해 

window.File && window.FileReader 

해 본다. 

안되면 안된다고 알려 주면 되지~ ㅋㅋ

*/

	if ( window.File && window.FileReader ) {

		/*

		입력된 파일이 1개 이상 있는지 확인~

		*/

		if ( inputObject.files && inputObject.files[0]) {



			/* 이미지 파일인지도 체크해 주면 좋지~ */

			if ( !(/image/i).test(inputObject.files[0].type ) ){

				alert("이미지 파일을 선택해 주세요!");

				return false;

			}

			/* FileReader 를 준비 한다. */

			var reader = new FileReader();

			reader.onload = function (e) {

				/* reader가 다 읽으면 imagePreview에 뿌려 주면 끝~  */

				$('#profile-preview').attr('src', e.target.result);

			}



			/* input file에 있는 파일 하나를 읽어온다. */

			reader.readAsDataURL(inputObject.files[0]);

		}



	} else {

		alert( "미리보기 안되요.~ 브라우저를 업그레이드하세요~");

	}

}