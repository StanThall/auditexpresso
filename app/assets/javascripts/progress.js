$(document).on("turbolinks:load", 
	function() {
    	var video = document.getElementById('the_video');
		var pBar = document.getElementById('progressbar');
		var playBtn = document.getElementById('play-pause');
		var muteBtn = document.getElementById('mute');

		playBtn.addEventListener('click',function(){
			if(video.paused==true){
				video.play();
				playBtn.innerHTML = "Pause";}
			else {
				video.pause();
				playBtn.innerHTML = "Play";}
		});

		muteBtn.addEventListener('click',function(){
			if (video.muted ==false){
				video.muted = true;
				muteBtn.innerHTML = "Unmute";
			} else {
				video.muted = false;
				muteBtn.innerHTML = "Mute";
			}
		});



		video.addEventListener('timeupdate', function() {
	  		var percent = Math.floor((100 / video.duration) * video.currentTime);
	  		$('#progressbar').css("width",percent+"%");
	  		pBar.getElementsByTagName('span')[0].innerHTML = percent+"%";
	  		if (percent == 100){
	  			$('#progressbar').addClass("progress-bar-success");
	  			pBar.getElementsByTagName('span')[0].innerHTML = "Merci !";
	  			} else {$('#progressbar').removeClass("progress-bar-success");};
			}, false);
  	});

