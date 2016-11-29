$(document).on("turbolinks:load",function() {
	var video = document.getElementById('the_video');
	var pBar = document.getElementById('progressbar');
	var playBtn = document.getElementById('play-pause');
	var muteBtn = document.getElementById('mute');
	var pTextSpan = document.getElementById('progress_text');
	var expandBtn = document.getElementById('expand');
	var modal = document.getElementById('video_modal');

	video.addEventListener('click',function(e){
		e.preventDefault;
		if(video.paused==true){
			video.play();
			$(playBtn).fadeOut();
			$(pTextSpan).text("C'est parti !");
		} else {
			video.pause();
			$(playBtn).fadeIn();
			$(playBtn).removeClass("fa-play");
			$(playBtn).addClass("fa-pause");}
	}, false);

	playBtn.addEventListener('click',function(e){
		e.preventDefault;
		if(video.paused==true){
			video.play();
			$(playBtn).fadeOut();
			$(pTextSpan).text("C'est parti !");
		} else {
			video.pause();
			$(playBtn).fadeIn();
			$(playBtn).removeClass("fa-play");
			$(playBtn).addClass("fa-pause");}
	}, false);

	$('#video_modal').on('hidden.bs.modal', function (e) {
		e.preventDefault;
  		if (video.paused == false){
  			video.pause();
  			$(playBtn).fadeIn();
			$(playBtn).removeClass("fa-play");
			$(playBtn).addClass("fa-pause");
  		}
	}, false);

	expandBtn.addEventListener('click',function(e){
		e.preventDefault;
		if(video.requestFullscreen){
			video.requestFullscreen();
		} else if(video.mozRequestFullscreen){
			video.mozRequestFullscreen();
		} else if (video.webkitRequestFullscreen) {
			video.webkitRequestFullscreen();
		}
	}, false);

	muteBtn.addEventListener('click',function(e){
		e.preventDefault;
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
	}, false);

	video.addEventListener('timeupdate', function(e) {
		e.preventDefault;
		var percent = Math.floor((100 / video.duration) * video.currentTime);
		$('#progressbar').css("width",percent+"%");
		pBar.getElementsByTagName('span')[0].innerHTML = percent+"%";
		if (percent > 20){$(pTextSpan).text("");}
		if (percent > 50){$(pTextSpan).text("Plus que 15 secondes !");}
		if (percent > 60){$(pTextSpan).hide();}
		if (percent == 100){
			$('#progressbar').addClass("progress-bar-success");
			pBar.getElementsByTagName('span')[0].innerHTML = "+0.10 € Merci !!!";
			$(pBar.getElementsByTagName('span')[0]).css({
				"font-weight" : "bold",
				"font-size" : "1rem"
			});
			$(playBtn).removeClass();
			$(playBtn).addClass("fa fa-thumbs-up");
			$(playBtn).css({
				"color" : "#FE4E00",
			});
			$(playBtn).fadeIn();
			newLog(3);
			return false;
		} else {
			$('#progressbar').removeClass("progress-bar-success");};
	}, false);

});

