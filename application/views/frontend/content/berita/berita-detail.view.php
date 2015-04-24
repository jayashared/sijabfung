<?php
	$berita = isset($berita[0])?$berita[0]:"";
	$judul_berita = isset($berita->judul)?$berita->judul:"";
	$gambar = isset($berita->gambar)?base_url() . $berita->gambar:"";
	$berita_penuh = isset($berita->berita_penuh)?$berita->berita_penuh:"";
	$tanggal_berita = isset($berita->tanggal_berita)?TglOnlyIndo($berita->tanggal_berita):"";
	$email = isset($berita->email)?$berita->email:"";
?>
<div class="col-md-9 blog-item margin-bottom-40">
    <div class="blog-item-img">       
       <center><img src="<?php echo $gambar ?>" alt="" class="img-responsive thumbnail"></center>
    </div>
    <h2><a href="#"><?php echo $judul_berita ?></a></h2>
    <p>
    	<?php echo $berita_penuh ?>
    </p>
    <ul class="blog-info">
       <li><i class="fa fa-calendar"></i> <?php echo $tanggal_berita ?></li>
       <li><i class="fa fa-user"></i> <?php echo $email ?></li>
    </ul>
</div>