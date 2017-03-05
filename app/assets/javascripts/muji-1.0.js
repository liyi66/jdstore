$(window).on("load resize", function(){
  var w = $(window).width();
  if (w > 1200) {
  $(function(){
		FastClick.attach(document.body);

			$("#hAccount .avater").on("click", function(){
				$("#hAccount .wrapper").slideDown();
			});
			$("#hAccount .cancel").on("click", function(e){
				$("#hAccount .wrapper").slideUp();
			});
		
		
		});
		
		} else {			
			$("#main, #hGlobalNav h1, #siteName img, #hSearch h1").removeClass("blur");
			$("#hAccount .avater").on("click", function(){
				$("#hAccount .wrapper").show();
				$("#main").addClass("blur");
			});
			$("#hAccount .cancel").on("click", function(e){
				$("#hAccount .wrapper").hide();
				$("#main").removeClass("blur");
			});
			$("#hGlobalNav h1").on("click", function(){
				$("#hGlobalNav .wrapper").show();
				$("#main, #hGlobalNav h1, #siteName img, #hSearch h1").addClass("blur");
			});
			$("#hGlobalNav .cancel").on("click", function(e){
				$("#hGlobalNav .wrapper").hide();
				$("#main, #hGlobalNav h1, #siteName img, #hSearch h1").removeClass("blur");
			});
	
			$("#hSearch h1").on("click", function(){
				$("#hSearch .wrapper").show();
				$("#hSearch input[type='search']").focus();
				$("#main, #hGlobalNav h1, #siteName img, #hSearch h1").addClass("blur");
			});
			$("#hSearch .cancel").on("click", function(e){
				$("#hSearch .wrapper").hide();
				$("#main, #hGlobalNav h1, #siteName img, #hSearch h1").removeClass("blur");
			});
    }	


});