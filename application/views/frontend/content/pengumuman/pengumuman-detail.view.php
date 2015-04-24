<?php
	$pengumuman = isset($pengumuman[0])?$pengumuman[0]:"";
	$judul_pengumuman = isset($pengumuman->judul)?$pengumuman->judul:"";
	$isi_pengumuman = isset($pengumuman->isi_pengumuman)?$pengumuman->isi_pengumuman:"";
	$tanggal_pengumuman = isset($pengumuman->tanggal_pengumuman)?TglOnlyIndo($pengumuman->tanggal_pengumuman):"";
	$email = !empty($pengumuman->email)?$pengumuman->email:"";
	$berkas = !empty($pengumuman->berkas)?'<li><a href="' . base_url() . $pengumuman->berkas . '" target="_blank"><i class="fa fa-download"></i> Unduh Berkas </a></li>':"";
?>
<div class="col-md-9 blog-item margin-bottom-40">
    <h2><a href="#"><?php echo $judul_pengumuman ?></a></h2>
    <p>
    	<?php echo $isi_pengumuman ?>
    </p>
    <ul class="blog-info">
       <li><i class="fa fa-calendar"></i> <?php echo $tanggal_pengumuman ?></li>
       <li><i class="fa fa-user"></i> <?php echo $email ?></li>
       <?php echo $berkas  ?>
    </ul>
</div>