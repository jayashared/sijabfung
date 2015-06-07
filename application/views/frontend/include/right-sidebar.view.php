<style>
	.blog-sidebar { text-align:justify; }
</style>
<!-- BEGIN RIGHT SIDEBAR -->            
<div class="col-md-3 col-sm-3 blog-sidebar">
    <!-- BEGIN Pengumuman -->     
    	<form class="form-horizontal" action="<?php echo base_url() ?>login/proses" method="post">
          <div class="form-group">
          	<label> Email </label>
            <div class="col-sm-12">
              <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email">
            </div>
          </div>
          <div class="form-group">
          	<label> Password </label>
            <div class="col-sm-12">
              <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-6" align="left">
            	<a href="#"> <i class="fa fa-question-circle"></i> Lupa Password </a>
            </div>
            
            <div class="col-sm-6" align="right">
              <button type="submit" class="btn btn-primary">Login</button>
            </div>
          </div>
        </form>
    <!-- END Pengumuman -->                            
	
    <!-- BEGIN BLOG PHOTOS STREAM -->
    <div class="blog-photo-stream margin-bottom-20">
        <h2>Gallery</h2>
        <ul class="list-unstyled">
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/people/img5-small.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/works/img1.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/people/img4-large.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/works/img6.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/pics/img1-large.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/pics/img2-large.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/works/img3.jpg" alt=""></a></li>
            <li><a href="#"><img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/people/img2-large.jpg" alt=""></a></li>
        </ul>                    
    </div>
    <!-- END BLOG PHOTOS STREAM -->
    
    <!-- CATEGORIES START -->
    <?php
    	$link = isset($link)?$link:"";
	?>
    <h2> Link</h2>
    <ul class="nav sidebar-categories margin-bottom-40">
        <?php
        	foreach($link as $rl)
			{
		?>
        	<li><a href="<?php echo $rl->url ?>" target="_blank"><?php echo $rl->title ?></a></li>
		<?php
			}
		?>
    </ul>
    <!-- CATEGORIES END -->

</div>
<!-- END RIGHT SIDEBAR --> 