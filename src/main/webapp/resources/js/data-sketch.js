
$(function() {
	baseURL = location.href;
	var lc = LC.init(
			
			
        document.getElementsByClassName('my-drawing')[0],
        {imageURLPrefix: '${pageContext.request.contextPath}/resources/lib/sketch/img'}
    );
	
	$(".sketch-save-btn").click(function() {
		
		/*
		var lllc = lc.getImage().toDataURL();
		alert(lllc);
		var copyimg = new Image();
		var copyCanvas = $("#test-box");
		var copyContext = copyCanvas.get(0).getContext('2d'); 
		copyimg.src = lllc;
		copyContext.drawImage(copyimg,0,0);
		*/
		
	});

});
