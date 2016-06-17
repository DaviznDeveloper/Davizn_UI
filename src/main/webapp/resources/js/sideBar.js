$(function() {
	
	$("#login-sidebar-btn").click( function (e){
        e.preventDefault();
        $("#wrap").toggleClass("menuDisplayed");
    });
	
	/*
	// 로그인 비동기 처리
	$(버튼).click(function() {
		
		var params = $(폼의 아이디).serialize();
		
		console.log(params);
		
		$.ajax({
			url : '',
			type: 'POST',
			data: params,
			dataType: 'text',
		    success: function(data){
		    	if(data != null) {
		    		$(버튼).trigger('click');
		    	}
		    },
		    error: function(e){
				$(얼럿창).fadeIn();
		    },
		    timeout: 10000
		});
		
	});
	*/
});