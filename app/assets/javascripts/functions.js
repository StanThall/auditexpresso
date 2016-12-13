function newLog (actID){
	$.ajax({
		url: "/logs",
		type: "POST",
		data: {"action_id" : actID, "page" : window.location.href}
	});
}