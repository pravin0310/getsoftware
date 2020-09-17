$(document).ready(function() {
	$('#navReport').addClass('active');
	// order date picker
	$("#startDate").datepicker();
	// order date picker
	$("#endDate").datepicker();
	$('#navReportp').addClass('active');
			
		
	
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
						
		})

	$("#getOrderReportForm").unbind('submit').bind('submit', function() {
		
		var startDate = $("#startDate").val();
		var endDate = $("#endDate").val();
		
		
		// optval = $('input[name="report"]:checked').val();
		
		//$('input[name="name_of_your_radiobutton"]:checked').val();
		
		var sdatearray = startDate.split("/");
		var snewdate = sdatearray[1] + '/' + sdatearray[0] + '/' + sdatearray[2];
		var edatearray = endDate.split("/");
		var enewdate = edatearray[1] + '/' + edatearray[0] + '/' + edatearray[2];

		if(startDate == "" || endDate == "") {
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
			
						
		} 
			
	else if ( (! isNaN(Date.parse(snewdate))) && (! isNaN(Date.parse(enewdate))) )
	{
					
						
			
			
			printOrder(startDate,endDate);
		

		
	}
	else
	{
		
		alert("Enter Correct Date");
	}


		
		

		return false;
	});

});




function printOrder(startDate,endDate) {
	
			
		$.ajax({
				url: 'php_action/getProfitLoss.php',
				type: 'post',
				data: {
				startDate: startDate,
				endDate: endDate
				},
				dataType: 'text',
				success:function(response) {
			var mywindow = window.open('', 'Stock Management System', 'height=600,width=400');
	        mywindow.document.write('<html><head><title>Profit & Loss</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
 mywindow.resizeTo(screen.width, screen.height);
setTimeout(function() {
    mywindow.print();
    mywindow.close();
}, 1250);


	       // mywindow.print();
	      //  mywindow.close();
				} // /success
			});	// /ajax
	
	
	
} // /print order function
