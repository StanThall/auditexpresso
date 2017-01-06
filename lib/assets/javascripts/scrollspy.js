function newLog (actID){
  $.ajax({
    url: "/logs",
    type: "POST",
    data: {"action_id" : actID, "page" : window.location.href}
  });
}

$(document).on("turbolinks:load page:load",function() {
	if(window.matchMedia('only screen and (min-device-width : 320px) and (max-device-width : 767px) and (orientation: portrait)').matches){
      var donatePop = document.getElementById('in_text_donate');
      var donatePopClose = document.getElementById('close_in_text_donate');
      var forceClose = false;
      var postHeight = $('#blog_post_text').height();
      var donateBtn = document.getElementById('button_donate_in_text');
      // var lastScrollTop = 0;
      var wdwHeight = $(window).height();

      function toggleForceClose(){
        forceClose=true;
        
        if ($(donatePop).is(":visible")){
          $(donatePop).fadeOut();
        }
      }



      $(donatePopClose).click(function(){
        toggleForceClose();
        newLog(7);
      });

      $(window).scroll( function(event){
        var pos = $(window).scrollTop() + wdwHeight;
        var posPercent = pos / postHeight;
        
        if (posPercent>0.5 && forceClose == false) {
          if ($(donatePop).is(":visible") == false){
            $(donatePop).fadeIn();
            newLog(6);
          }
        }

        $(donateBtn).click(function(){
          forceClose=true;
        });


        //if (lastScrollTop>pos && $(donatePop).is(":visible")) {
        //  toggleForceClose();
        //}

        // lastScrollTop = pos;
      });
    }
});
