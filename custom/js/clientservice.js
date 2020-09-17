var manageOrderTable;

$(document).ready(function()
 {
	
	 // var divRequesta = $(".div-request").text();
	// $('serviceName').selectize();
	
	 
		$("#serviceNamet").hide();
		
	 
		//if(divRequesta == "add")
			//{
		$('#clientName').bind('keypress', function(event) {
		if((event.keyCode==13) && ($("#clientName").val() !="" )){
			 $('#clientAddress').select();  
		   $('#clientAddress').focus();     
		}
		});

		$('#clientAddress').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#clientAddress").val() !="" )){
			 $('#dateofbirth').select();
		   $('#dateofbirth').focus();     
		}
		});
		
		$('#dateofbirth').bind('keypress', function(event) {
		if((event.keyCode==13) && ($("#dateofbirth").val() !="" )){
			 $('#mobileNo').select();  
		   $('#mobileNo').focus();     
		}
		});
	
	     
	
	 // $('#clientAddress').bind('keypress', function(event) {
		// if((event.keyCode==13)  && ($("#clientAddress").val() !="" )){
		// 	 $('#mobileNo').select();
		//    $('#mobileNo').focus();     
		// }
		// });
		
		
		
		
	$('#mobileNo').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#mobileNo").val() !="" )){
			 $('#serviceName').select();
		   $('#serviceName').focus();     
		}
		});
		
		$('#serviceName').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#serviceName").val() !="" )){
			 $('#createOrderBtn').select();
		   $('#createOrderBtn').focus();     
		}
		});
		
			
		
		 $("#mobileNo").keypress(function (event) {
            return isNumber(event, this)
        });
		
		
		
			$("#serviceName").change(function(){
			
			var na = $("#serviceName").val();	
			if(na == "1")
			{
			$("#serviceNamet").show();
			$("#serviceNamet").val("");
			}
			else
			{
			$("#serviceNamet").hide();
			$("#serviceNamet").val("-");			
			}
		});

		//}
	//var divRequest = $(".div-request").text();
	// top nav bar 
	$("#navOrder").addClass('active');

	//if(divRequest == 'add')  {
		// add order	
		// top nav child bar 
		$('#topNavAddOrder').addClass('active');	

		

		// create order form function
		$("#createServiceForm").unbind('submit').bind('submit', function() {
			var form = $(this);

			$('.form-group').removeClass('has-error').removeClass('has-success');
			$('.text-danger').remove();
				
			
			var clientName = $("#clientName").val();
			var clientAddress = $("#clientAddress").val();
			var dateofbirth = $("#dateofbirth").val();
			var serviceIdh = $("#serviceIdh").val();
			var mobileNo = $("#mobileNo").val();
			var serviceName = $("#serviceName").val();
			//var serviceNamet = $("#serviceNamet").val();
			var mobileNolen = $("#mobileNo").val().length;
			//$(this).val().length;
			
			if(clientName == "") {
				$("#clientName").after('<p class="text-danger">   Name  required </p>');
				$('#clientName').closest('.form-group').addClass('has-error');
			} else {
				$('#clientName').closest('.form-group').addClass('has-success');
			} // /else

			if(clientAddress == "") {
				$("#clientAddress").after('<p class="text-danger">  Address  required </p>');
				$('#clientAddress').closest('.form-group').addClass('has-error');
			} else {
				$('#clientAddress').closest('.form-group').addClass('has-success');
			} // /else

			if(serviceIdh == "") {
				$("#serviceIdh").after('<p class="text-danger">  Service Id required </p>');
				$('#serviceIdh').closest('.form-group').addClass('has-error');
			} else {
				$('#serviceId').closest('.form-group').addClass('has-success');
			} // /else

			if(mobileNolen < 10) {
				mobileNo = "";
				
			} // /else
				
			if(mobileNo == "") {
				$("#mobileNo").after('<p class="text-danger">  Mobile No  required </p>');
				$('#mobileNo').closest('.form-group').addClass('has-error');
			} else {
				$('#mobileNo').closest('.form-group').addClass('has-success');
			} // /else

							
			if(serviceName == "") {
				$("#serviceName").after('<p class="text-danger">  Service Name required </p>');
				$('#serviceName').closest('.form-group').addClass('has-error');
			} else {
				$('#serviceName').closest('.form-group').addClass('has-success');
			} // /else
		/*if(serviceNamet == "") {
				$("#serviceNamet").after('<p class="text-danger">  Service Name required </p>');
				$('#serviceNamet').closest('.form-group').addClass('has-error');
			} else {
				$('#serviceNamet').closest('.form-group').addClass('has-success');
			} 
			*/

			if(  clientName && clientAddress && serviceIdh && mobileNo && serviceName ) {
					// create order button
					// $("#createOrderBtn").button('loading');

					$.ajax({
						url : form.attr('action'),
						type: form.attr('method'),
						data: form.serialize(),					
						dataType: 'json',
						success:function(response) {
							console.log(response);
							
							// reset button
							// $("#createOrderBtn").button('reset');
							
							$(".text-danger").remove();
							$('.form-group').removeClass('has-error').removeClass('has-success');

							if(response.success == true) {
								
								alert(response.messages);
								
								
							//$("#createOrderBtn").button('reset');
								// create order button
								/*
								$(".success-messages").html('<div class="alert alert-success">'+
	            	'<button type="button" class="close" data-dismiss="alert">&times;</button>'+
	            	'<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
	            	' <br /> <br /> <a type="button" onclick="printOrder('+response.order_id+')" class="btn btn-primary"> <i class="glyphicon glyphicon-print"></i> Print </a>'+
	            	'&nbsp;&nbsp;<a type="button" onclick="printOrderCust('+response.order_id+')" class="btn btn-primary"> <i class="glyphicon glyphicon-print"></i> Print Customer </a>'+
					'<a href="orders.php?o=add" class="btn btn-default" style="margin-left:10px;"> <i class="glyphicon glyphicon-plus-sign"></i> Add New Order </a>'+
		 		     '</div>');
								
								
								
								$(".success-messages").html('<div class="alert alert-success">'+
	            	'<button type="button" class="close" data-dismiss="alert">&times;</button>'+

	            	'<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
					 '</div>');
								
								$(".alert-success").delay(5000).show(10, function() {
										$(this).delay(30000).hide(10, function() {
											$(this).remove();
										});
									}); // /.alert
									
									*/
	            	
									
									//alert("Note this Service ID : GLC"+ response.service_id);
									// $("#createOrderBtn").button('reset');
							
									$("#createServiceForm")[0].reset();
									
									window.location.reload(); 
									
									//setTimeout(() => window.location.reload(), 60000);
									//setTimeout(location.reload.bind(location), 20000);
									//window.location.reload(); 
										//$("#createOrderBtn").button('reset');
							//$("html, body, div.panel, div.pane-body").animate({scrollTop: '0px'}, 100);

							// disabled te modal footer button
							//$(".submitButtonFooter").addClass('div-hide');
							// remove the product row
							//$(".removeProductRowBtn").addClass('div-hide');
								
							} else {
								alert(response.messages);								
							}
						} // /response
					}); // /ajax
				 // if array validate is true
			} // /if field validate is true
			

			return false;
		}); // /create order form function	
	
	///////////////
	
	/////////////
	///////////////
	// create search form function
		$("#searchServiceForm").unbind('submit').bind('submit', function() {
			var form = $(this);

			$('.form-group').removeClass('has-error').removeClass('has-success');
			$('.text-danger').remove();
				
			
		
			var serviceIds = $("#serviceIds").val();
			
			
			

			if(serviceIds == "") {
				$("#serviceIds").after('<p class="text-danger">  Service Id required </p>');
				$('#serviceIds').closest('.form-group').addClass('has-error');
			} else {
				$('#serviceIds').closest('.form-group').addClass('has-success');
			} // /else

			

			if(   serviceIds !="" ) {
					// create order button
					// $("#createOrderBtn").button('loading');

					$.ajax({
						url : form.attr('action'),
						type: form.attr('method'),
						data: form.serialize(),					
						dataType: 'json',
						success:function(response) {
							console.log(response);
							
							// reset button
							// $("#createOrderBtns").button('reset');
							
							$(".text-danger").remove();
							$('.form-group').removeClass('has-error').removeClass('has-success');

							if(response.success == true) {
								
								alert(response.messages);
								
								
							//$("#createOrderBtn").button('reset');
								// create order button
								/*
								$(".success-messages").html('<div class="alert alert-success">'+
	            	'<button type="button" class="close" data-dismiss="alert">&times;</button>'+
	            	'<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
	            	' <br /> <br /> <a type="button" onclick="printOrder('+response.order_id+')" class="btn btn-primary"> <i class="glyphicon glyphicon-print"></i> Print </a>'+
	            	'&nbsp;&nbsp;<a type="button" onclick="printOrderCust('+response.order_id+')" class="btn btn-primary"> <i class="glyphicon glyphicon-print"></i> Print Customer </a>'+
					'<a href="orders.php?o=add" class="btn btn-default" style="margin-left:10px;"> <i class="glyphicon glyphicon-plus-sign"></i> Add New Order </a>'+
		 		     '</div>');
								*/
							/*	
								
								$(".success-messages").html('<div class="alert alert-success">'+
	            	'<button type="button" class="close" data-dismiss="alert">&times;</button>'+

	            	'<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
					 '</div>');
								
								$(".alert-success").delay(500).show(10, function() {
										$(this).delay(3000).hide(10, function() {
											$(this).remove();
										});
									}); // /.alert
									
									*/
	            	
									
									//alert("Note this Service ID : GLC"+ response.service_id);
									$("#createOrderBtns").button('reset');
							
									$("#searchServiceForm")[0].reset();
									
									//window.location.reload(); 
									
									//setTimeout(() => window.location.reload(), 60000);
									//setTimeout(location.reload.bind(location), 20000);
									//window.location.reload(); 
										//$("#createOrderBtn").button('reset');
							//$("html, body, div.panel, div.pane-body").animate({scrollTop: '0px'}, 100);

							// disabled te modal footer button
							//$(".submitButtonFooter").addClass('div-hide');
							// remove the product row
							//$(".removeProductRowBtn").addClass('div-hide');
								
							} else {
								alert(response.messages);								
							}
						} // /response
					}); // /ajax
				 // if array validate is true
			} // /if field validate is true
			

			return false;
		}); // /create search form function
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		

}); // /documernt






function isNumber(evt, element) {

        var charCode = (evt.which) ? evt.which : event.keyCode
//(charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
        if ((charCode != 44 || $(element).val().indexOf(',') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
    }  




function resetOrderForm() {
	// reset the input field
	$("#createOrderForm")[0].reset();
	// remove remove text danger
	$(".text-danger").remove();
	// remove form group error 
	$(".form-group").removeClass('has-success').removeClass('has-error');
	
} // /reset order form



