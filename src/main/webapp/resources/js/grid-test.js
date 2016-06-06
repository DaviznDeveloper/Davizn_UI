$(function() {
	
	gridster = $(".gridster > ul").gridster({
        widget_margins: [5, 5],
        widget_base_dimensions: [100, 100]
    }).data('gridster');

	var num = 1;
	
    var widgets = [
                      ['<li class="" name="widget_' + num + '">' + num + '</li>', 2, 2]
                  ];;

    $.each(widgets, function(i, widget){
        gridster.add_widget.apply(gridster, widget)
    });
    
    $("#widget_create").click(function() {
    	
    	var widget_count = $(".gridster > ul").children('.gs-w').size();
    	
    	if(widget_count >= 10) {
    		alert("한 개의 대시보드에 위젯 추가는 10개까지 가능합니다.");
    		return false;
    		
    	} else {
        	num += 1;
        	
        	gridster = $(".gridster > ul").gridster({
                widget_margins: [5, 5],
                widget_base_dimensions: [100, 100]
            }).data('gridster');

            var widgets = [
    	                       ['<li class="" name="widget_' + num + '">' +
    	                        '<div class="panel panel-info">' +
    	                        '<div class="panel-heading">' +
    	                        '<h3 class="panel-title">Panel title</h3>' +
    	                        '</div>' +
    	                        '<div class="panel-body">' +
    	                        'Panel contentdddddddddddddddddddddddddddddd' + num + 
    	                        '</div>' +
    	                        '</div>' +
    	                        '</li>', 2, 2]
    	                   ];;

            $.each(widgets, function(i, widget){
                gridster.add_widget.apply(gridster, widget)
            });
    	}
    });
    
    $("#widget_delete").click(function() {
    	var widget_del = $(".gridster > ul").children().last();
    	gridster.remove_widget(widget_del);
    });
    
	$(window).resize(function() {
		$(".gridster > ul").css('width','100%');
	});
	
	
});