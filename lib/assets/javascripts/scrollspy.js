$(document).on("turbolinks:load",function() {
	if(window.matchMedia('only screen and (min-device-width : 320px) and (max-device-width : 767px)').matches){
		var postHeight = $('#blog_post_text').height();

		$(window).scroll( function(event){
			var pos = $(window).scrollTop();
			var posPercent = pos / postHeight;
			
			if (posPercent>0.6) {
				$('#in_text_donate').fadeIn();
			}
		});
	}
});
