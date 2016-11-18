$(document).on("turbolinks:load", 
	function() {
    	var video = document.getElementById('the_video');
		var pBar = document.getElementById('progressbar');
		video.addEventListener('timeupdate', function() {
	  		var percent = Math.floor((100 / video.duration) * video.currentTime);
	  		$('#progressbar').css("width",percent+"%");
	  		pBar.getElementsByTagName('span')[0].innerHTML = percent;
			}, false);
  	});

