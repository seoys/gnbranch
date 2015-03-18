// JavaScript Document
$(function() {
	//front lnb
	$('.frontLnb li.active').parent().parent('.depths3box').addClass('on');
	$('.frontLnb li.active').parent().parent('.depths3box').prev('a').addClass('active');
	//page location
	$('.pagepath .depth1').html(" &gt; "+ $('h2').html());
	$('.pagepath .depth2').html(" &gt; "+ $('.depths2link.active').html());
	if($('.depth3').hasClass('active')){
		$('.pagepath .depth3').html(" &gt; "+ $('.depth3.active').html());
	} else {$('.pagepath .depth3').hide();}
	
	openLayer = function(target){
		$('.layer_warpper').show();
		var layer = $('#' + target);
		var topNum = layer.height()/2;
		$('body').css('overflow-y','hidden');
		layer.css('margin-top', -topNum+'px').show();
	};
	
	closeLayer = function(target){
		$('.layer_warpper').hide();
		var layer = $('#' + target);
		$('body').css('overflow-y','auto');
		layer.hide();
	};
});