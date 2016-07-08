console.log("this is working");

$(document).ready(function() {
	$('.mainlogo').mouseover(function() {
		$('.mainlogo').toggle('slow');
	});
});