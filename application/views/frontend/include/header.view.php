<div class="header navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <!-- BEGIN LOGO (you can use logo image instead of text)-->
            <a class="navbar-brand-custom" href="<?php echo base_url() ?>">
                <img src="<?php echo base_url() ?>assets/images/frontend-logo.png" />
            </a>
            <!-- END LOGO -->
        </div>
    
        <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="navbar-collapse collapse">
                <?php $this->load->view("frontend/include/navbar.view.php") ?>                         
            </div>
        <!-- BEGIN TOP NAVIGATION MENU -->
    </div>
</div>
