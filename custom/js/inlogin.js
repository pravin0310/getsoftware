
$(document).ready(function()
 {
	
		
	 $("#username").select();
	 $("#username").focus();  
	
	 $("#username").bind('keypress', function(event) {
		if(event.keyCode==13 ){
			$("#password").focus();
			 $("#password").select();
		        
		}
		});
		
		$("#password").bind('keypress', function(event) {
		if(event.keyCode==13 ){
			   
		}
		});
			
		

}); // /documernt

