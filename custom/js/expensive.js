var manageProductTable;

$(document).ready(function() {
	

	// top nav bar 
	$('#anavExpensive').addClass('active');
		//$('#navExp').addClass('active');
		
		
		$("#mybutton").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  $("#mybuttone").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  
		  $("#mybuttond").click(function(){
			$(".modal-body").slideToggle();
		  });
		  
		  
		$('.modal-dialog').draggable({
					handle: ".modal-header"
				});
		
		
	
	// manage product data table
	manageProductTable = $('#manageProductTable').DataTable({
		'ajax': 'php_action/fetchExpensive.php',
		'order': []
	});
	

	
	 $("#eDate").change(function(){
			var date = $("#eDate").val();
			var datearray = date.split("/");
			var newdate = datearray[1] + '-' + datearray[0] + '-' + datearray[2];
			//var second_date = moment($("#orderDate").val()).format('DD-MM-YYYY');
			$("#eDate").val(newdate);
						
		});
		
		
		
		$("#eDate").datepicker();
		
		 $("#eAmount").keypress(function (event) {
            return isNumber(event, this)
        });
		
		
		
		 $("#editAmount").keypress(function (event) {
            return isNumber(event, this)
        });
		
		
		 var d = new Date();
		var strDate = d.getDate() + "-" + (d.getMonth()+1) + "-" + d.getFullYear();		
		$('#eDate').val(strDate);

		
		$("#editAmount").change(function(){
			
		if (!$.isNumeric($("#editAmount").val())) {
		$("#editAmount").val("");
		}
				
		});
		
	//	$("#eDate").click(function(){
			
	//	$("#eDate").datepicker();
				
	//	});
		
		//$("#eDate").datepicker();
	
	$("#editDate").datepicker();
	
	
	$("#editDate").change(function(){
			var date = $("#editDate").val();
			var datearray = date.split("/");
			var newdate = datearray[1] + '-' + datearray[0] + '-' + datearray[2];
			//var second_date = moment($("#orderDate").val()).format('DD-MM-YYYY');
			$("#editDate").val(newdate);
						
		});
		
		
	
	
		
		
	// add product modal btn clicked
	$("#addProductModalBtn").unbind('click').bind('click', function() {
		// // product form reset
		$("#submitProductForm")[0].reset();		

		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');
			

		// submit product form
		$("#submitProductForm").unbind('submit').bind('submit', function() {

			// form validation
		//	var productImage = $("#productImage").val();
		var eName = $("#eName").val();
		var sName = $("#sName").val();
		var  eAmount = $("#eAmount").val();
		var eDate = $("#eDate").val();
		//var search = $("#search").val();
		
			
		if(eName == "") {
			$("#eName").after('<p class="text-danger">Expensive Name  </p>');
			$('#eName').closest('.form-group').addClass('has-error');
		} else {
			// remov error text field
			$("#eName").find('.text-danger').remove();
			// success out for form 
			$("#eName").closest('.form-group').addClass('has-success');	  	
		}

		if( sName== "") {
			$("#sName").after('<p class="text-danger">Staff Name</p>');

			$("#sName").closest('.form-group').addClass('has-error');
		} else {
			// remov error text field
			$("#sName").find('.text-danger').remove();
			// success out for form 
			$("#sName").closest('.form-group').addClass('has-success');	  	
		}
			if(eAmount == "") {
				$("#eAmount").after('<p class="text-danger">Amount Required</p>');
				$('#eAmount').closest('.form-group').addClass('has-error');
			}	else {
				// remov error text field
				$("#eAmount").find('.text-danger').remove();
				// success out for form 
				$("#eAmount").closest('.form-group').addClass('has-success');	  	
			}	// /else

			if(eDate == "") {
				$("#eDate").after('<p class="text-danger">Date required</p>');
				$("#eDate").closest('.form-group').addClass('has-error');
			}	else {
				// remov error text field
				$("#eDate").find('.text-danger').remove();
				// success out for form 
				$("#eDate").closest('.form-group').addClass('has-success');	  	
			}	// /else



			if( sName !="" && eAmount !="" && eName !="" && eDate !="" ) {
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

						if(response.success == true) {
							// submit loading button
							$("#createProductBtn").button('reset');
							
							$("#submitProductForm")[0].reset();

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

						} // /if response.success
						
					} // /success function
				}); // /ajax function
			}	 // /if validation is ok 					

			return false;
		}); // /submit product form

	}); // /add product modal btn clicked
	

	// remove product 	

}); // document.ready fucntion

function editProduct(exp_id = null) {

	if(exp_id) {
		
		$("#exp_id").remove();		
		// remove text-error 
		$(".text-danger").remove();
		// remove from-group error
		$(".form-group").removeClass('has-error').removeClass('has-success');
		// modal spinner
		$('.div-loading').removeClass('div-hide');
		// modal div
		$('.div-result').addClass('div-hide');

		$.ajax({
			url: 'php_action/fetchSelectedExpenses.php',
			type: 'post',
			data: {exp_id: exp_id},
			dataType: 'json',
			success:function(response) {		
			// alert(response.product_image);
				// modal spinner
				$('.div-loading').addClass('div-hide');
				// modal div
				$('.div-result').removeClass('div-hide');				

  

				// product id 
				$(".editProductFooter").append('<input type="hidden" name="exp_id" id="exp_id" value="'+response.exp_id+'" />');				
				$(".editProductPhotoFooter").append('<input type="hidden" name="exp_id" id="exp_id" value="'+response.exp_id+'" />');				
				
				// product name
				
				// quantity
				$("#editName").val(response.exp_name);
				// rate
				$("#editAmount").val(response.exp_amount);
				// brand name
				$("#editsName").val(response.sname);
				// category name
				
				var date = response.exp_date;
			var datearray = date.split("-");
			var newdate = datearray[2] + '-' + datearray[1] + '-' + datearray[0];
			//var second_date = moment($("#orderDate").val()).format('DD-MM-YYYY');
			$("#editDate").val(newdate);
				

				// update the product data function
				$("#editProductForm").unbind('submit').bind('submit', function() {

					// form validation
				//	var productImage = $("#editProductImage").val();
					var editDate = $("#editDate").val();
					var editName = $("#editName").val();
					var editAmount = $("#editAmount").val();
					var editsName = $("#editsName").val();
													

					if(editDate == "") {
						$("#editDate").after('<p class="text-danger">Date  required</p>');
						$("#editDate").closest('.form-group').addClass('has-error');
					}	else {
						// remov error text field
						$("#editDate").find('.text-danger').remove();
						// success out for form 
						$("#editDate").closest('.form-group').addClass('has-success');	  	
					}	// /else

					if(editName == "") {
						$("#editName").after('<p class="text-danger">Expenses Name  required</p>');
						$("#editName").closest('.form-group').addClass('has-error');
					}	else {
						// remov error text field
						$("#editName").find('.text-danger').remove();
						// success out for form 
						$("#editName").closest('.form-group').addClass('has-success');	  	
					}	// /else

					if(editAmount == "") {
						$("#editAmount").after('<p class="text-danger">Amount  required</p>');
						$("#editAmount").closest('.form-group').addClass('has-error');
					}	else {
						// remov error text field
						$("#editAmount").find('.text-danger').remove();
						// success out for form 
						$("#editAmount").closest('.form-group').addClass('has-success');	  	
					}	// /else

					if(editsName == "") {
						$("#editsName").after('<p class="text-danger">Staff Name required</p>');
						$("#editsName").closest('.form-group').addClass('has-error');
					}	else {
						// remov error text field
						$("#editsName").find('.text-danger').remove();
						// success out for form 
						$("#editsName").closest('.form-group').addClass('has-success');	  	
					}	// /else

									

					if(editDate && editName && editAmount && editsName && editsName) {
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
									$('#edit-product-messages').html('<div class="alert alert-success">'+
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
									
									$("#editProductForm")[0].reset();
									//$("#editProductModal").modal('hide');
									// remove text-error 
									$(".text-danger").remove();
									// remove from-group error
									$(".form-group").removeClass('has-error').removeClass('has-success');

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

function isNumber(evt, element) {

        var charCode = (evt.which) ? evt.which : event.keyCode

        if (
            (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
            return false;

        return true;
    }  




// remove product 
function removeProduct(exp_id = null) {
	if(exp_id) {
		// remove product button clicked
		$("#removeProductBtn").unbind('click').bind('click', function() {
			// loading remove button
			$("#removeProductBtn").button('loading');
			$.ajax({
				url: 'php_action/removeExpenses.php',
				type: 'post',
				data: {exp_id: exp_id},
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