<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    
   <?php $this->load->view("frontend/include/meta.view.php"); ?>
   <?php $this->load->view("frontend/include/css.view.php"); ?>
   <?php $this->load->view("frontend/include/js.view.php"); ?>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body> 
		
    <!-- BEGIN HEADER -->
	    <?php $this->load->view("frontend/include/header.view.php"); ?>
    <!-- END HEADER -->

    <!-- BEGIN PAGE CONTAINER -->  
    <div class="page-container">
	
        <!-- BEGIN News Ticker -->
        	<?php $this->load->view("frontend/include/newsticker.view.php"); ?>
        <!-- END News Ticker -->

		<!-- BEGIN CONTAINER -->   
		<div class="container min-hight">
			<div class="row">
                <!-- BEGIN BLOG -->
                    <?php 
						$konten = isset($konten)?$konten:"frontend/home.view.php";
						$this->load->view($konten); 
					?> 
                <!-- END BEGIN BLOG -->
            	<?php $this->load->view("frontend/include/right-sidebar.view.php"); ?> 
            </div>
		</div>
		<!-- END CONTAINER -->
		
	</div>
    <!-- END BEGIN PAGE CONTAINER -->  
		
    <!-- BEGIN FOOTER -->
    	<?php $this->load->view("frontend/include/footer.view.php"); ?>
    <!-- END FOOTER -->

    <!-- BEGIN COPYRIGHT -->
    	<?php $this->load->view("frontend/include/copyright.view.php"); ?>
    <!-- END COPYRIGHT -->

    
</body>
<!-- END BODY -->
</html>