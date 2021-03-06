var manageProductTable;

$(document).ready(function() {
	

	// top nav bar 
	$('#navExpensive').addClass('active');
		$('#navExp').addClass('active');
		
		//$('#sname').selectize();
		$('#serviceName').selectize();
		
	 $("#mybutton").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  $("#mybuttonc").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  $("#mybuttonr").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  $("#mybuttone").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  
		$('.modal-dialog').draggable({
					handle: ".modal-header"
				});
		
	
	
	
	
	// manage product data table
	manageProductTable = $('#manageProductTable').DataTable({
		'ajax': 'php_action/fetchExecutive.php',
		'order': []
	});
	
	$("#pDate").datepicker();
			$("#pDate").change(function(){
			var date = $("#pDate").val();
			var datearray = date.split("/");
			var newdate = datearray[1] + '-' + datearray[0] + '-' + datearray[2];
			//var second_date = moment($("#orderDate").val()).format('DD-MM-YYYY');
			$("#pDate").val(newdate);
						
		});
	
	$("#pAmount").keypress(function (event) {
		
          return isNumber(event, this)
        });
	
			
		$("#tAmount").keypress(function (event) {
			paidAmount();
            return isNumber(event, this)
        });
	
	
		$("#serviceNamet").hide();
		$("#serviceNamete").hide();	
		
		$('#clientName').bind('keypress', function(event) {
		if((event.keyCode==13) && ($("#clientName").val() !="" )){
			 $('#clientAddress').select();  
		   $('#clientAddress').focus();     
		}
		});
	
	$('#clientNamee').bind('keypress', function(event) {
		if((event.keyCode==13) && ($("#clientNamee").val() !="" )){
			 $('#clientAddresse').select();  
		   $('#clientAddresse').focus();     
		}
		});
	
	
	
	 $('#clientAddress').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#clientAddress").val() !="" )){
			 $('#mobileNo').select();
		   $('#mobileNo').focus();     
		}
		});
		
		
		 $('#clientAddresse').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#clientAddresse").val() !="" )){
			 $('#mobileNoe').select();
		   $('#mobileNoe').focus();     
		}
		});
		
		
	$('#mobileNo').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#mobileNo").val() !="" )){
			 $('#serviceName').select();
		   $('#serviceName').focus();     
		}
		});
		
		$('#mobileNoe').bind('keypress', function(event) {
		if((event.keyCode==13)  && ($("#mobileNoe").val() !="" )){
			 $('#serviceNamee').select();
		   $('#serviceNamee').focus();     
		}
		});
		
		
		
		
		
		 $("#mobileNo").keypress(function (event) {
            return isNumber(event, this)
        });
		
		 $("#mobileNoe").keypress(function (event) {
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
	

	$("#serviceNamee").change(function(){
			
			var na = $("#serviceNamee").val();	
			if(na == "1")
			{
			$("#serviceNamete").show();
			$("#serviceNamete").val("");
			}
			else
			{
			$("#serviceNamete").hide();
			$("#serviceNamete").val("-");			
			}
		});
	
	
		
		
	// add product modal btn clicked
	$("#addProductModalBtn").unbind('click').bind('click', function() {
		// // product form reset
		$("#submitProductForm")[0].reset();		
		var x = new Date();
		var m = x.getMonth()+1;
		var d = x.getDate();
		var y = x.getFullYear();
		y = y.toString().substr(-2);
		if (m <10){m='0'+m;}
		if (d <10){d='0'+d;}
		var h = x.getHours();
		var mi = x.getMinutes();
		var s = x.getSeconds();
		if (h <10){h='0'+h;}
		if (mi <10){mi='0'+mi;}
		if (s <10){s='0'+s;}
		var serviceid = "GLC"+d+''+m+''+y+''+h+''+mi+''+s ;
		
		 $("#serviceId").val(serviceid);
		 $("#serviceIdh").val(serviceid);

		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');
			

		// submit product form
		$("#submitProductForm").unbind('submit').bind('submit', function() {
      
			//date_default_timezone_set("Asia/Kolkata");
	
			
			var clientName = $("#clientName").val();
			var clientAddress = $("#clientAddress").val();
			var serviceIdh = $("#serviceIdh").val();
			var mobileNo = $("#mobileNo").val();
			var serviceName = $("#serviceName").val();
			//var serviceNamet = $("#serviceNamet").val();
			var mobileNolen = $("#mobileNo").val().length;
		
			
		if(clientName == "") {
				$("#clientName").after('<p class="text-danger">   Name  required </p>');
				$("#clientName").closest('.form-group').addClass('has-error');
			} else {
				$("#clientName").closest('.form-group').addClass('has-success');
			} // /else

			if(clientAddress == "") {
				$("#clientAddress").after('<p class="text-danger">  Address  required </p>');
				$("#clientAddress").closest('.form-group').addClass('has-error');
			} else {
				$('#clientAddress').closest('.form-group').addClass('has-success');
			} // /else

			if(serviceIdh == "") {
				$("#serviceIdh").after('<p class="text-danger">  Service Id required </p>');
				$("#serviceIdh").closest('.form-group').addClass('has-error');
			} else {
				$("#serviceIdh").closest('.form-group').addClass('has-success');
			} // /else

			if(mobileNolen < 10) {
				mobileNo = "";
				
			} // /else
				
			if(mobileNo == "") {
				$("#mobileNo").after('<p class="text-danger">  Mobile No  required </p>');
				$("#mobileNo").closest('.form-group').addClass('has-error');
			} else {
				$("#mobileNo").closest('.form-group').addClass('has-success');
			} // /else

							
			if(serviceName == "") {
				$("#serviceName").after('<p class="text-danger">  Service Name required </p>');
				$('#serviceName').closest('.form-group').addClass('has-error');
			} else {
				$("#serviceName").closest('.form-group').addClass('has-success');
			} // /else


			if(clientName && clientAddress && serviceIdh && mobileNo && serviceName ) {
				// submit loading button
				$("#createProductBtn").button('loading');

				var form = $(this);
				var formData = new FormData(this);

				$.ajax({
					url : form.attr('action'),
					type: form.attr('method'),
					data: formData,
					dataType: 'json',
					cache: false,
					contentType: false,
					processData: false,
					success:function(response) {

						 // $("#createProductBtn").button('reset');
       //                    $('#add_data_Modal').modal('hide');  
       //                    $('#employee_table').html(data);  


						if(response.success == true) {
							// submit loading button
							$("#createProductBtn").button('reset');
							// remove text-error 
							$(".text-danger").remove();
							// remove from-group error
							$(".form-group").removeClass('has-error').removeClass('has-success');
							
							//$("#submitProductForm")[0].reset();
							
							

							$("html, body, div.modal, div.modal-content, div.modal-body").animate({scrollTop: '0'}, 100);
																	
							// shows a successful message after operation
							$('#add-product-messages').html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

							// remove the mesages
		          $(".alert-success").delay(5000).show(10, function() {
								$(this).delay(300).hide(10, function() {
									$(this).remove();
								});
							}); // /.alert

		          // reload the manage student table
							manageProductTable.ajax.reload(null, false);
							
							
							//$("#addProductModal").delay(3000000);
							
							//$("#submitProductForm")[0].location.reload(); 
							$("#submitProductForm")[0].reset();
							
							//$("#addProductModal")[0].reset();
							
							$("#addProductModal").modal('hide');
							
							

						} // /if response.success
						
					} // /success function
				}); // /ajax function
			}	 // /if validation is ok 					

			return false;
		}); // /submit product form

	}); // /add product modal btn clicked
	

	

// add service modal btn clicked
	$("#addServiceModalBtn").unbind('click').bind('click', function() {
		// // product form reset
		$("#submitServiceForm")[0].reset();		
				 
		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');
			

		// submit product form
		$("#submitServiceForm").unbind('submit').bind('submit', function() {
      
			//date_default_timezone_set("Asia/Kolkata");
	
			
			var serviceName = $("#servicen").val();
			
			
							
			if(serviceName == "") {
				$("#servicen").after('<p class="text-danger">  Service Name required </p>');
				$('#servicen').closest('.form-group').addClass('has-error');
			} else {
				$("#servicen").closest('.form-group').addClass('has-success');
			} // /else


			if( serviceName ) {
				// submit loading button
				$("#createServiceBtn").button('loading');

				var form = $(this);
				var formData = new FormData(this);

				$.ajax({
					url : form.attr('action'),
					type: form.attr('method'),
					data: formData,
					dataType: 'json',
					cache: false,
					contentType: false,
					processData: false,
					success:function(response) {

						if(response.success == true) {
							// submit loading button
							$("#createServiceBtn").button('reset');
							// remove text-error 
							$(".text-danger").remove();
							// remove from-group error
							$(".form-group").removeClass('has-error').removeClass('has-success');
							
							
							$("#addServiceModal").modal('hide');
							

							$("html, body, div.modal, div.modal-content, div.modal-body").animate({scrollTop: '0'}, 100);
																	
							// shows a successful message after operation
							$('#add-product-messages').html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

							// remove the mesages
		          $(".alert-success").delay(50000).show(10, function() {
								$(this).delay(300).hide(10, function() {
									$(this).remove();
								});
							}); // /.alert

		          // reload the manage student table
							//manageProductTable.ajax.reload(null, true);
							
							location.reload($(this).delay(500));
							
							
					//$("#submitServicedForm")[0].location.reload(); 
							
							$("#submitServiceForm")[0].reset();
							
							
							
						} // /if response.success
						
					} // /success function
				}); // /ajax function
			}	 // /if validation is ok 					

			return false;
		}); // /submit product form

	});	
		

$("#deleteServiceModalBtn").unbind('click').bind('click', function() {
		// // product form reset
		
		$("#submitServicedForm")[0].reset();	
		 
		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');


		
		// submit product form
		$("#submitServicedForm").unbind('submit').bind('submit', function() {
      
			//date_default_timezone_set("Asia/Kolkata");
	
			
			var serviceName = $("#sname").val();
			
			
							
			if(serviceName == "") {
				$("#sname").after('<p class="text-danger">  Service Name required </p>');
				$('#sname').closest('.form-group').addClass('has-error');
			} else {
				$("#sname").closest('.form-group').addClass('has-success');
			} // /else


			if( serviceName ) {
				// submit loading button
				$("#createServiceBtn").button('loading');

				var form = $(this);
				var formData = new FormData(this);

				$.ajax({
					url : form.attr('action'),
					type: form.attr('method'),
					data: formData,
					dataType: 'json',
					cache: false,
					contentType: false,
					processData: false,
					success:function(response) {

						if(response.success == true) {
							// submit loading button
							$("#creatServiceBtn").button('reset');
							// remove text-error 
							$(".text-danger").remove();
							// remove from-group error
							$(".form-group").removeClass('has-error').removeClass('has-success');
							
							$("#submitServicedForm")[0].reset();
							
							$("#deleteServiceModal").modal('hide');

							$("html, body, div.modal, div.modal-content, div.modal-body").animate({scrollTop: '0'}, 100);
																	
							// shows a successful message after operation
							$('#add-product-messages').html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

							// remove the mesages
		          $(".alert-success").delay(50000).show(10, function() {
								$(this).delay(300).hide(10, function() {
									$(this).remove();
								});
							}); // /.alert

		          // reload the manage student table
							//manageProductTable.ajax.reload(null, true);
							
							
							//$("#addProductModal").delay(3000000);
							
					//$("#submitServicedForm")[0].location.reload(); 
							
							//$("#addServiceModal")[0].reset();
							
							
							//$("#submitServiceForm")[0].reset();
						//	$("#submitServicedForm")[0].reset();
							//$(this).delay(3000000000);
							location.reload($(this).delay(500));
						} // /if response.success
						
					} // /success function
				}); // /ajax function
			}	 // /if validation is ok 					

			return false;
		}); // /submit product form

	
		
		
	}); // /add product modal btn clicked
	




	

}); // document.ready fucntion

function editProduct(service_id = null) {

	if(service_id) {
		
		
		$("#service_id").remove();		
		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');
		// modal spinner
		$('.div-loading').removeClass('div-hide');
		// modal div
		$('.div-result').addClass('div-hide');

		$.ajax({
			url: 'php_action/fetchSelectedExecutive.php',
			type: 'post',
			data: {service_id: service_id},
			dataType: 'json',
			success:function(response) {		
			// alert(response.product_image);
				// modal spinner
				$('.div-loading').addClass('div-hide');
				// modal div
				$('.div-result').removeClass('div-hide');				

  

				// product id 
				$(".editProductFooter").append('<input type="hidden" name="service_id" id="service_id" value="'+response.service_id+'" />');				
				$(".editProductPhotoFooter").append('<input type="hidden" name="service_id" id="service_id" value="'+response.service_id+'" />');				
				
				
				$("#serviceIde").val(response.service_idn);
				$("#serviceIdhe").val(response.service_idn);
				// rate
				$("#clientNamee").val(response.client_name);
				// brand name
				$("#clientAddresse").val(response.client_address);
				// category name
				$("#mobileNoe").val(response.mobile_no);
				
				$("#serviceNamee").val(response.service_name);
					$("#serviceNamete").val(response.service_nameo);
				$service_nameo = response.service_nameo;
				$service_name = response.service_name;
				
				//			$("#serviceNamete").show();	
			/*	$service_name = response.service_name;
				$service_nameo = response.service_nameo;
				x
				alert(response.service_nameo);
					*/	
				if ( $service_name == 1 )
				{
				$("#serviceNamete").show();	
				$("#serviceNamete").val($service_nameo);	
				}
				else
				{
				$("#serviceNamete").hide();	
				$("#serviceNamete").val("-");
				}
				
				
				// update the product data function
				$("#editProductForm").unbind('submit').bind('submit', function() {

					// form validation
				//	var productImage = $("#editProductImage").val();
				
			var clientName = $("#clientNamee").val();
			var clientAddress = $("#clientAddresse").val();
			var serviceIdh = $("#serviceIdhe").val();
			var mobileNo = $("#mobileNoe").val();
			var serviceName = $("#serviceNamee").val();
			//var serviceNamet = $("#serviceNamet").val();
			var mobileNolen = $("#mobileNoe").val().length;
					
			if(clientName == "") {
				$("#clientNamee").after('<p class="text-danger">   Name  required </p>');
				$("#clientNamee").closest('.form-group').addClass('has-error');
			} else {
				$('#clientNamee').closest('.form-group').addClass('has-success');
			} // /else

			if(clientAddress == "") {
				$("#clientAddresse").after('<p class="text-danger">  Address  required </p>');
				$("#clientAddresse").closest('.form-group').addClass('has-error');
			} else {
				$('#clientAddresse').closest('.form-group').addClass('has-success');
			} // /else

			if(serviceIdh == "") {
				$("#serviceIdhe").after('<p class="text-danger">  Service Id required </p>');
				$("#serviceIdhe").closest('.form-group').addClass('has-error');
			} else {
				$("#serviceIdhe").closest('.form-group').addClass('has-success');
			} // /else

			if(mobileNolen < 10) {
				mobileNo = "";
				
			} // /else
				
			if(mobileNo == "") {
				$("#mobileNoe").after('<p class="text-danger">  Mobile No  required </p>');
				$("#mobileNoe").closest('.form-group').addClass('has-error');
			} else {
				$('#mobileNoe').closest('.form-group').addClass('has-success');
			} // /else

							
			if(serviceName == "") {
				$("#serviceNamee").after('<p class="text-danger">  Service Name required </p>');
				$("#serviceNamee").closest('.form-group').addClass('has-error');
			} else {
				$("#serviceNamee").closest('.form-group').addClass('has-success');
			} // /else

								
									
			if( clientName && clientAddress && serviceIdh && mobileNo && serviceName ) {
				
						// submit loading button
						$("#editProductBtn").button('loading');

						var form = $(this);
						var formData = new FormData(this);

						$.ajax({
							url : form.attr('action'),
							type: form.attr('method'),
							data: formData,
							dataType: 'json',
							cache: false,
							contentType: false,
							processData: false,
							success:function(response) {
								console.log(response);
								if(response.success == true) {
									// submit loading button
									$("#editProductBtn").button('reset');																		

									$("html, body, div.modal, div.modal-content, div.modal-body").animate({scrollTop: '0'}, 100);
																			
									// shows a successful message after operation
									$('#add-product-messages').html('<div class="alert alert-success">'+
				            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
				            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
				          '</div>');

									// remove the mesages
				          $(".alert-success").delay(500).show(10, function() {
										$(this).delay(3000).hide(10, function() {
											$(this).remove();
										});
									}); // /.alert

				          // reload the manage student table
									manageProductTable.ajax.reload(null, true);

									// remove text-error 
									$(".text-danger").remove();
									// remove from-group error
									$(".form-group").removeClass('has-error').removeClass('has-success');
									$("#serviceNamete").hide();	
									$("#editProductModal").modal('hide');

								} // /if response.success
								
							} // /success function
						}); // /ajax function
					}	 // /if validation is ok 					

					return false;
				}); // update the product data function

				

			} // /success function
		}); // /ajax to fetch product image

				
	} else {
		alert('error please refresh the page');
	}
} // /edit product function

/// check integer



function completeService(service_id = null) {

	if(service_id) {
		
		
		$("#service_id").remove();		
		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');
		// modal spinner
		$('.div-loading').removeClass('div-hide');
		// modal div
		$('.div-result').addClass('div-hide');

		$.ajax({
			url: 'php_action/fetchSelectedExecutive.php',
			type: 'post',
			data: {service_id: service_id},
			dataType: 'json',
			success:function(response) {		
			// alert(response.product_image);
				// modal spinner
				$('.div-loading').addClass('div-hide');
				// modal div
				$('.div-result').removeClass('div-hide');				

  

				// product id 
				$(".editProductFooter").append('<input type="hidden" name="service_id" id="service_id" value="'+response.service_id+'" />');				
				//$(".editProductPhotoFooter").append('<input type="hidden" name="service_id" id="service_id" value="'+response.service_id+'" />');				
				
				
				$("#serviceIdc").val(response.service_idn);
				$("#serviceIdhc").val(response.service_id);
				
					
				
				// update the product data function
				
					// form validation
				//	var productImage = $("#editProductImage").val();
			$("#completeProductForm").unbind('submit').bind('submit', function() {

			var pamt = Number($("#pAmount").val());
			var tamt = Number($("#tAmount").val());
			var bamt = Number($("#bAmounth").val());
						
			if( bamt < 0 ) 
			{ pamt = ""; }
			if( pamt > tamt) 
			{ pamt = ""; }					
			
			if(tamt == "") {
				$("#tAmount").after('<p class="text-danger">  Total Amount required </p>');
				$("#tAmount").closest('.form-group').addClass('has-error');
			} else {
				$("#tAmount").closest('.form-group').addClass('has-success');
			} // /else
							
			
			if(pamt == "") {
				$("#pAmount").after('<p class="text-danger"> Paid Amount required </p>');
				$("#pAmount").closest('.form-group').addClass('has-error');
			} else {
				$("#pAmount").closest('.form-group').addClass('has-success');
			} // /else

			
								
			if( ( pamt !="") && ( tamt !="") ) {
					
						// submit loading button
						$("#completeProductBtn").button('loading');

						var form = $(this);
						var formData = new FormData(this);

						$.ajax({
							url : form.attr('action'),
							type: form.attr('method'),
							data: formData,
							dataType: 'json',
							cache: false,
							contentType: false,
							processData: false,
							success:function(response) {
								console.log(response);
								if(response.success == true) {
									// submit loading button
									$("#completeProductBtn").button('reset');																		

									$("html, body, div.modal, div.modal-content, div.modal-body").animate({scrollTop: '0'}, 100);
																			
									// shows a successful message after operation
									$('#add-product-messages').html('<div class="alert alert-success">'+
				            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
				            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
				          '</div>');

									// remove the mesages
				          $(".alert-success").delay(500).show(10, function() {
										$(this).delay(3000).hide(10, function() {
											$(this).remove();
										});
									}); // /.alert

				          // reload the manage student table
									
									$(".text-danger").remove();
									// remove from-group error
									$(".form-group").removeClass('has-error').removeClass('has-success');
									
									manageProductTable.ajax.reload(null, true);
									
									$("#completeProductForm")[0].reset();
									// remove text-error 
									$("#completeProductModal").modal('hide');
									
									
								
									
										
								} // /if response.success
								
							} // /success function
						}); // /ajax function
					}	 // /if validation is ok 					

					return false;
				}); // update the product data function

				

			} // /success function
		}); // /ajax to fetch product image

				
	} else {
		alert('error please refresh the page');
	}
} // /edit product function




function isNumber(evt, element) {

        var charCode = (evt.which) ? evt.which : event.keyCode
//(charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
   //         (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
        if (
            (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 44 || $(element).val().indexOf(',') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
    }  




// remove product 
function removeProduct(service_id = null) {
	if(service_id) {
		// remove product button clicked
		$("#removeProductBtn").unbind('click').bind('click', function() {
			// loading remove button
			$("#removeProductBtn").button('loading');
			$.ajax({
				url: 'php_action/removeService.php',
				type: 'post',
				data: {service_id: service_id},
				dataType: 'json',
				success:function(response) {
					// loading remove button
					$("#removeProductBtn").button('reset');
					if(response.success == true) {
						// remove product modal
						$("#removeProductModal").modal('hide');

						// update the product table
						manageProductTable.ajax.reload(null, false);

						// remove success messages
						$(".remove-messages").html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

						// remove the mesages
	          $(".alert-success").delay(500).show(10, function() {
							$(this).delay(3000).hide(10, function() {
								$(this).remove();
							});
						}); // /.alert
					} else {

						// remove success messages
						$(".removeProductMessages").html('<div class="alert alert-success">'+
		            '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
		            '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
		          '</div>');

						// remove the mesages
	          $(".alert-success").delay(500).show(10, function() {
							$(this).delay(3000).hide(10, function() {
								$(this).remove();
							});
						}); // /.alert

					} // /error
				} // /success function
			}); // /ajax fucntion to remove the product
			return false;
		}); // /remove product btn clicked
	} // /if productid
} // /remove product function


function paidAmount() {
	var tAmount = $("#tAmount").val();
	var pAmount = $("#pAmount").val();
	if(tAmount) {
		var bAmount = Number($("#tAmount").val()) - Number($("#pAmount").val());
		bAmount = bAmount.toFixed(2);
		$("#bAmount").val(bAmount);
		$("#bAmounth").val(bAmount);
	} // /if
} 




function clearForm(oForm) {
	// var frm_elements = oForm.elements;									
	// console.log(frm_elements);
	// 	for(i=0;i<frm_elements.length;i++) {
	// 		field_type = frm_elements[i].type.toLowerCase();									
	// 		switch (field_type) {
	// 	    case "text":
	// 	    case "password":
	// 	    case "textarea":
	// 	    case "hidden":
	// 	    case "select-one":	    
	// 	      frm_elements[i].value = "";
	// 	      break;
	// 	    case "radio":
	// 	    case "checkbox":	    
	// 	      if (frm_elements[i].checked)
	// 	      {
	// 	          frm_elements[i].checked = false;
	// 	      }
	// 	      break;
	// 	    case "file": 
	// 	    	if(frm_elements[i].options) {
	// 	    		frm_elements[i].options= false;
	// 	    	}
	// 	    default:
	// 	        break;
	//     } // /switch
	// 	} // for
}