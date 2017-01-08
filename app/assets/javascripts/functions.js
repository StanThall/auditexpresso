function newLog (actID){
	$.ajax({
		url: "/logs",
		type: "POST",
		data: {"action_id" : actID, "page" : window.location.href}
	});
}

function thankYou(){
	if(document.getElementById('in_text_donate') !== null && $('#in_text_donate').is(":visible")){
		newLog(3);
		var donatePop = document.getElementById('in_text_donate');
		if ($(donatePop).is(":visible")) {
			donatePop.innerHTML = "<i class='fa fa-heart'></i> Merci pour le pourboire <i class='fa fa-heart'></i><button type='button' id='close_in_text_donate'>&times;</button>";
			$(donatePop).css({
				"color" : "#ffffff",
				"background-color" : "#0AD80E",
				"border-top" : "0px solid #fff",
				"font-size" : "1.5rem",
			});
			$("#close_in_text_donate").css({"font-size" : "1.5rem","position" : "absolute" ,"right" : "1%", "padding" : "0", "border" : "0", "background-color" : "transparent"});
			$('#close_in_text_donate').click(function(){
				$(donatePop).fadeOut();
			});
		}
		
	} else {
		var donateText = document.getElementById('donate_text');
		var donateNotice = document.getElementById('donate_notice');
		var donateBtn = document.getElementById('button_donate');

		$(donateText).fadeOut();
		$(donateBtn).fadeOut();
		$(donate_notice).html('<div class="alert alert-success alert-dismissible" role="alert" style="text-align:center;padding: 5px 0px 5px 0px;"><button type="button" class="close" data-dismiss="alert" aria-label="Close" style="right:5%;"><span aria-hidden="true">&times;</span></button><i class="fa fa-heart"></i> Merci pour le pourboire <i class="fa fa-heart"></i></div>');
		newLog(3);
	}
	return false;
}