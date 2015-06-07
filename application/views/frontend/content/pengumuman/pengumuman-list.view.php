<?php
	$pengumuman = isset($pengumuman)?$pengumuman:"";
?>

<!-- BEGIN LEFT SIDEBAR -->   
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">

	<?php
        foreach( $pengumuman as $row )
        {
    ?>
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <h2><a href="<?php echo base_url() ?>frontend/pengumuman_detail/<?php echo $row->id_pengumuman ?>/<?php echo SEO($row->judul) ?>"><?php echo $row->judul ?></a></h2>
            <ul class="blog-info">
                <li><i class="fa fa-calendar"></i> <?php echo TglOnlyIndo($row->tanggal_pengumuman) ?></li>
                <li><i class="fa fa-user"></i> <?php echo $row->email ?></li>
            </ul>
            <p>
                <?php echo PotongKata($row->isi_pengumuman, 50); ?>
                <a class="more" href="<?php echo base_url() ?>frontend/pengumuman_detail/<?php echo $row->id_pengumuman ?>/<?php echo SEO($row->judul) ?>">Selengkapnya... <i class="icon-angle-right"></i></a>
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

