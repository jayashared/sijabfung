<!-- jQuery -->
<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/bower_components/raphael/raphael-min.js"></script>
<!--<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/bower_components/morrisjs/morris.min.js"></script>
<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/js/morris-data.js"></script>-->

<!-- Custom Theme JavaScript -->
<script src="<?php echo base_url() ?>assets/startbootstrap-sb-admin-2-1.0.5/dist/js/sb-admin-2.js"></script>
<script src="<?php echo base_url() ?>assets/plugins/DataTables-1.10.7/media/js/jquery.dataTables.js"></script>


<script>
	function ajax(xType,xData,xUrl,xHasil,xEvent,xShowProgress) {	 
		$.ajax({
			cache:false,
			type: xType,
			url: xUrl,    
			data: xData,
			beforeSend: function() {
				 $(xHasil).html("Please Wait");
			},
			error: function (request, status, error) {
				var msg;
				if( request.status == "400" )
				{
					msg = "Server understood the request but request content was invalid.";
				}
				else if( request.status == '401' )
				{
					msg = "Unauthorised access.";
				}
				else if( request.status == '403' )
				{
					msg = "Forbidden resouce can't be accessed";
				}
				else if( request.status == '404' )
				{
					msg = "Page not Found ";
				}
				else if( request.status == '500' )
				{
					msg = "Internal Server Error.";
				}
				else if( request.status == '503' )
				{
					msg = "Service Unavailable";
				}
				else
				{
					msg = "Unknown Error. Please check your Connection or Contact your Administrator."
				}
				$(xHasil).html('<center><h3> Information! </h3>' + msg + '</center>');
			},
			success: function (html){                 
			  $(xHasil).html(html);
			  eval(xEvent);				
			} 
		});	
	}
</script>