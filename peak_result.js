$(function(){
	$('dt').click(function(){
		$(this).toggleClass('selected');
		$(this).next().slideToggle();
	});
});
