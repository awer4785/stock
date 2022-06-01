$(document).ready(function() {
    //$("#client_name").menu();
	// order date picker
	$("#startDate").datepicker();
	// order date picker
	$("#endDate").datepicker();

	$("#getOrderReportForm").unbind('submit').bind('submit', function() {
		
		var startDate = $("#startDate").val();
		var endDate = $("#endDate").val();	

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
		} else {
			$(".form-group").removeClass('has-error');
			$(".text-danger").remove();

			var form = $(this);

			$.ajax({
				url: form.attr('action'),
				type: form.attr('method'),
				data: form.serialize(),
				dataType: 'text',
				success:function(response) {
					var mywindow = window.open('', 'Stock Management System', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>Order Report Slip</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');

	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10

	        mywindow.print();
	        mywindow.close();
				} // /success
			});	// /ajax

		} // /else

		return false;
	});

	$("#nameReportForm").unbind('submit').bind('submit', function() {
		var client_name = $("#client_name").val();
		if(client_name == "" ){
			$("#client_name").after('<p class="text-danger">Name is required</p>');
			$("#client_name").closest('.form-group').addClass('has-error');
		
		}
		else{
			$(".form-group").find('.text-danger').remove();
			$(".text-danger").closest('.form-group').addClass('has-success');	
		}
		if(client_name)
		{
			var form = $(this);

			$.ajax({
				url: form.attr('action'),
				type: form.attr('method'),
				data: form.serialize(),
				dataType: 'text',
				success:function(response) {
			var mywindow = window.open('', '', 'height=400,width=600');
	        mywindow.document.write('<html><head><title>Order Report Slip</title>');        
	        mywindow.document.write('</head><body>');
	        mywindow.document.write(response);
	        mywindow.document.write('</body></html>');
	        mywindow.document.close(); // necessary for IE >= 10
	        mywindow.focus(); // necessary for IE >= 10
	        mywindow.print();
	        mywindow.close();
				} // /success
			});	// /ajax

		}
		return false;
	});
	
});

