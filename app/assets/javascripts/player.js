$(document).on("turbolinks:load", 
	function() {
    	var video = document.getElementById('the_video');
		var pBar = document.getElementById('progressbar');
		var playBtn = document.getElementById('play-pause');
		var muteBtn = document.getElementById('mute');
		var pTextSpan = document.getElementById('progress_text');
		var expandBtn = document.getElementById('expand');

		video.addEventListener('click',function(){
			if(video.paused==true){
				video.play();
				$(playBtn).fadeOut();
				$(pTextSpan).text("C'est parti !");
			} else {
				video.pause();
				$(playBtn).fadeIn();
				$(playBtn).removeClass("fa-play");
				$(playBtn).addClass("fa-pause");}
		});

		playBtn.addEventListener('click',function(){
			if(video.paused==true){
				video.play();
				$(playBtn).fadeOut();
				$(pTextSpan).text("C'est parti !");
			} else {
				video.pause();
				$(playBtn).fadeIn();
				$(playBtn).removeClass("fa-play");
				$(playBtn).addClass("fa-pause");}
		});

		expandBtn.addEventListener('click',function(){
			if(video.requestFullscreen){
				video.requestFullscreen();
			} else if(video.mozRequestFullscreen){
				video.mozRequestFullscreen();
			} else if (video.webkitRequestFullscreen) {
				video.webkitRequestFullscreen();
			}
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
	  		if (percent > 50){$(pTextSpan).text("Plus que 15 secondes !");}
	  		if (percent > 60){$(pTextSpan).hide();}
	  		if (percent == 100){
	  			$('#progressbar').addClass("progress-bar-success");
	  			pBar.getElementsByTagName('span')[0].innerHTML = "Merci !";
	  			$(playBtn).removeClass();
	  			$(playBtn).addClass("fa fa-heart");
	  			$(playBtn).html("<span style='color:#fff;'>Merci !</span>");
	  			$(playBtn).css("color", "var(--maincolor)");
	  			$(playBtn).fadeIn();
	  		} else {
	  			$('#progressbar').removeClass("progress-bar-success");};
			}, false);
  	});

