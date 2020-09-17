$(document).ready(function() {
	$('#navReport').addClass('active');
	// order date picker
	$("#startDate").datepicker();
	// order date picker
	$("#endDate").datepicker();
	
	$('#navReporta').addClass('active');
	
			
	$("#startDate").change(function(){
			var date = $("#startDate").val();
			var datearray = date.split("/");
			var newdate = datearray[1] + '/' + datearray[0] + '/' + datearray[2];
			//var second_date = moment($("#orderDate").val()).format('DD-MM-YYYY');
			$("#startDate").val(newdate);
						
		});
	
	$("#endDate").change(function(){
			var date = $("#endDate").val();
			var datearray = date.split("/");
			var newdate = datearray[1] + '/' + datearray[0] + '/' + datearray[2];
			//var second_date = moment($("#orderDate").val()).format('DD-MM-YYYY');
			$("#endDate").val(newdate);
						
		});

	$("#getOrderReportForm").unbind('submit').bind('submit', function() {
		
		var startDate = $("#startDate").val();
		console.log(startDate);
		var endDate = $("#endDate").val();
		console.log(endDate);
		var optval = $("#report").val();
		
		
		
//

		if(startDate == "" || endDate == "" || optval == "") {
			if(startDate == "") {
				$("#startDate").closest('.form-group').addClass('has-error');
				$("#startDate").after('<p class="text-danger">The Start Date is required</p>');
			} else {
				$(".form-group").removeClass('has-error');
				$(".text-danger").remove();
			}

			if(endDate == "") {
				$("#endDate").closest('.form-group').addClass('has-error');
				$("#endDate").after('<p class="text-danger">The End Date is required</p>');
			} else {
				$(".form-group").removeClass('has-error');
				$(".text-danger").remove();
			}
			
						
		} else {
			$(".form-group").removeClass('has-error');
			$(".text-danger").remove();

			
		
		
		var sdatearray = startDate.split("/");
		var snewdate = sdatearray[1] + '/' + sdatearray[0] + '/' + sdatearray[2];
		var edatearray = endDate.split("/");
		var enewdate = edatearray[1] + '/' + edatearray[0] + '/' + edatearray[2];	
	
		if ( (! isNaN(Date.parse(snewdate))) && (! isNaN(Date.parse(enewdate))) )
	{
				
		printOrder(startDate,endDate,optval);
		
		
	}
	else
	{
		
		alert("Enter Correct Date");
	}
		
		
	}
		return false;
	});

});





/////////////
////////
function printOrder(startDate,endDate,optval) {
	//complete payment work
	
		if (optval  == "compayment")
	{
		
		$.ajax({
				url: 'php_action/getcompaymentReport.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate,
				optval: optval
				},
				dataType: 'text',
				success:function(response) {
					if(confirm('Do you want to print')){
			var mywindow = window.open('', 'Complete Payment Report', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Complete Payment</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	       mywindow.document.close();

	        
			mywindow.focus(); // necessary for IE >= 10
			mywindow.resizeTo(screen.width, screen.height);
			setTimeout(function() {
			mywindow.print();
			mywindow.close();
			}, 1250);  
           }else{
           	var mywindow = window.open('', 'Complete Payment Report', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Complete Payment</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	       mywindow.document.close();

           }
	     
	                                     // necessary for IE >= 10
	        


	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	}
	
		
else if (optval  == "comwork")
	{
		//alert(complete work);
		$.ajax({
				url: 'php_action/getcomworkReport.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate,
				optval: optval
				},
				dataType: 'text',
				success:function(response) {
					if(confirm('Do you want to print')){
			var mywindow = window.open('', 'Complete Work Report', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>COMPLETE WORK DETAILS</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
 mywindow.resizeTo(screen.width, screen.height);
setTimeout(function() {
    mywindow.print();
    mywindow.close();
}, 1250);}else{

var mywindow = window.open('', 'Complete Work Report', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>COMPLETE WORK DETAILS</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	    }
	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	}
	
	
	
else if (optval  == "penpayment")
	//pending payment
	{
		
		$.ajax({
				url: 'php_action/getpenpaymentReport.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate,
				optval: optval
				},
				dataType: 'text',
				success:function(response) {
					if(confirm('Do you want to print')){
			var mywindow = window.open('', 'Pending Payment Report', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Pending Payment</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
 mywindow.resizeTo(screen.width, screen.height);
setTimeout(function() {
    mywindow.print();
    mywindow.close();
}, 1250);}else{
	var mywindow = window.open('', 'Pending Payment Report', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Pending Payment</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
}


	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	}
	else if (optval  == "customer")
	{
		
		$.ajax({
				url: 'php_action/getCustomerReport.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate,
				optval: optval
				},
				dataType: 'text',
				success:function(response) {
					if(confirm('Do you want to print')){
			var mywindow = window.open('', 'Customer Report', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Customer Report</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
 mywindow.resizeTo(screen.width, screen.height);
setTimeout(function() {
    mywindow.print();
    mywindow.close();
}, 1250);}else{
	var mywindow = window.open('', 'Customer Report', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Customer Report</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
}


	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	}
	
	else if (optval  == "penwork")
	{
		//alert(pending work);
		$.ajax({
				url: 'php_action/getpenworkReport.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate,
				optval: optval
				},
				dataType: 'text',
				success:function(response) {
					if(confirm('Do you want to print')){
			var mywindow = window.open('', 'Pending Work Report', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>Pending Work</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
 mywindow.resizeTo(screen.width, screen.height);
setTimeout(function() {
    mywindow.print();
    mywindow.close();
}, 1250);}else{
	var mywindow = window.open('', 'Pending Work Report', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>Pending Work</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
}


	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	}
	
	
	else if (optval  == "expenses")
	{
	
	$.ajax({
				url: 'php_action/getExpenceReport.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate,
				optval: optval
				},
				dataType: 'text',
				success:function(response) {
					if(confirm('Do you want to print')){
			var mywindow = window.open('', 'Expenses Management System', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>Expenses Report Slip</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
			 mywindow.resizeTo(screen.width, screen.height);
			setTimeout(function() {
				mywindow.print();
				mywindow.close();
			}, 1250);}else{
				var mywindow = window.open('', 'Expenses Management System', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>Expenses Report Slip</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
			}


	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	
		}
	
} // /print order function
