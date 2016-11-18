$(document).on("turbolinks:load", 
	function() {
    	var video = document.getElementById('the_video');
		var pBar = document.getElementById('progressbar');
		var playBtn = document.getElementById('play-pause');
		var muteBtn = document.getElementById('mute');

		video.addEventListener('click',function(){
			if(video.paused==true){
				video.play();
				$(playBtn).removeClass("fa-play");
				$(playBtn).addClass("fa-pause");
			} else {
				video.pause();
				$(playBtn).removeClass("fa-pause");
				$(playBtn).addClass("fa-play");}
		});

		muteBtn.addEventListener('click',function(){
			if (video.volume == 1){
				video.volume = 0.0;
				$(muteBtn).removeClass("fa-volume-up");
				$(muteBtn).addClass("fa-volume-off");
			} else if (video.volume == 0.0){
				video.volume = 0.5;
				$(muteBtn).removeClass("fa-volume-off");
				$(muteBtn).addClass("fa-volume-down");
			} else {
				video.volume = 1.0;
				$(muteBtn).removeClass("fa-volume-down");
				$(muteBtn).addClass("fa-volume-up");
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

