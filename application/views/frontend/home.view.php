<?php
	$berita = isset($berita)?$berita:"";
?>

<!-- BEGIN LEFT SIDEBAR -->         
<div class="col-md-8 col-sm-8 blog-posts margin-bottom-40">
    <div class="blog-item-img margin-bottom-40">
        <!-- BEGIN CAROUSEL -->            
        <div class="front-carousel">
            <div id="myCarousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="active item thumbnail">
                        <img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/posts/img1.jpg" alt="">
                    </div>
                    <div class="item thumbnail">
                        <img src="<?php echo base_url() ?>assets/frontend/template_content/assets/img/posts/img3.jpg" alt="">
                    </div>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>                
        </div>
        <!-- END CAROUSEL -->             
    </div>
    
    <h3><i class="fa fa-eye"></i> Selayang Pandang</h3>
    <div class="row">
    	<div class="col-md-12">
        </div>
    </div>
    
	<h4><i class="fa fa-newspaper-o"></i> Berita Terbaru</h4>
	<?php
        foreach( $berita as $row )
        {
    ?>
    <div class="row">
        <div class="col-md-2 col-sm-2">
        	<a href="<?php echo !empty($row->gambar)?base_url() . $row->gambar:"" ?>" target="_blank">
            	<img src="<?php echo !empty($row->gambar)?base_url() . $row->gambar:"" ?>" alt="" class="img-responsive thumbnail">
        	</a>
        </div>
        <div class="col-md-10 col-sm-10">
            <h2><a href="blog_item.html"><?php echo $row->judul ?></a></h2>
            <ul class="blog-info">
                <li><i class="fa fa-calendar"></i> <?php echo TglOnlyIndo($row->tanggal_berita) ?></li>
                <li><i class="fa fa-user"></i> <?php echo $row->email ?></li>
                <!--<li><i class="fa fa-tags"></i> Metronic, Keenthemes, UI Design</li>-->
            </ul>
            <p>
                <?php echo PotongKata($row->berita_singkat, 50); ?>
                <a class="more" href="#">Selengkapnya... <i class="icon-angle-right"></i></a>
            </p>
            
        </div>
    </div>
    <hr class="blog-post-sep">
    <?php
        }
    ?>
    <!-- END BLOG TAGS -->
</div>
<!-- END RIGHT SIDEBAR -->