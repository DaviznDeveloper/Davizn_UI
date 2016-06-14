
$(function() {
	$(".pieProgress").asPieProgress({
		namespace: 'asPieProgress',
	    min: 0,
	    max: 100,
	    goal: 100,
	    speed: 30,
	    easing: 'linear',
	    barcolor: '#2dbe60'
	});
	
	$(".pieProgress").asPieProgress("start");
});