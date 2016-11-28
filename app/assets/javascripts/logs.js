# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on("turbolinks:load",function() {
	var btnDonate = document.getElementById('button_donate');
	var videoMdl = document.getElementById('video_modal');

	btnDonate.addEventListener('click',function(){
		$(btnDonate).html("yipi");
	});
});