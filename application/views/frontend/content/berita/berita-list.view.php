<?php
	$berita = isset($berita)?$berita:"";
?>

<!-- BEGIN LEFT SIDEBAR -->   
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">
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
            <h2><a href="<?php echo base_url() ?>frontend/berita_detail/<?php echo $row->id_berita ?>/<?php echo SEO($row->judul) ?>"><?php echo $row->judul ?></a></h2>
            <ul class="blog-info">
                <li><i class="fa fa-calendar"></i> <?php echo TglOnlyIndo($row->tanggal_berita) ?></li>
                <li><i class="fa fa-user"></i> <?php echo $row->email ?></li>
                <!--<li><i class="fa fa-tags"></i> Metronic, Keenthemes, UI Design</li>-->
            </ul>
            <p>
                <?php echo PotongKata($row->berita_penuh, 50); ?>
                <a class="more" href="<?php echo base_url() ?>frontend/berita_detail/<?php echo $row->id_berita ?>/<?php echo SEO($row->judul) ?>">Selengkapnya... <i class="icon-angle-right"></i></a>
            </p>
            
        </div>
    </div>
    <hr class="blog-post-sep">
    <?php
        }
    ?>
    <ul class="pagination">
    	<?php echo $paging ?>
    </ul>
    <!-- END BLOG TAGS -->
</div>
<!-- END RIGHT SIDEBAR -->

