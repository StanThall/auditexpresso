
$(document).on("turbolinks:load",function(){
	
	newLog(1);
	var btnDonate = document.getElementById('button_donate');
	
	btnDonate.addEventListener('click', function(e){
		e.preventDefault();
		newLog(2);
	}, false);	

	if (document.getElementById('button_donate_in_text') !== null){
		var btnDonateInText = document.getElementById('button_donate_in_text');
		
		btnDonateInText.addEventListener('click', function(e){
			e.preventDefault();
			newLog(2);
		}, false);


	}
	
 
});
