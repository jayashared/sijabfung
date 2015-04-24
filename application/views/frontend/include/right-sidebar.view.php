<style>
	.blog-sidebar { text-align:justify; }
</style>
<!-- BEGIN RIGHT SIDEBAR -->            
<div class="col-md-3 col-sm-3 blog-sidebar">
    <!-- BEGIN Pengumuman -->     
    <?php
    	$pengumuman = isset($pengumuman)?$pengumuman:"";
	?>                       
    <h2> Pengumuman</h2>
    <div class="recent-news margin-bottom-10">
        <div class="row margin-bottom-10">
            <?php
                foreach($pengumuman as $rp)
				{
			?>
                <div class="col-md-12">
                    <h3><a href="#"><?php echo $rp->judul ?></a></h3>
                    <p>
                    	<?php echo PotongKata($rp->isi_pengumuman, 10) ?>
                        <a class="more" href="blog_item.html">Selengkapnya... <i class="icon-angle-right"></i></a>
                    </p>
                    
                </div>           
        	<?php
				}
			?>
        </div>
    </div>
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