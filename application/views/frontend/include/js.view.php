<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/respond.min.js"></script>  
<![endif]-->  
<script src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
<script type="text/javascript" src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/hover-dropdown.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/back-to-top.js"></script>    
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS(REQUIRED ONLY FOR CURRENT PAGE) -->
<script type="text/javascript" src="<?php echo base_url() ?>assets/frontend/template_content/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>  
<script src="<?php echo base_url() ?>assets/frontend/template_content/assets/scripts/app.js"></script>  
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();                      
    });
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->