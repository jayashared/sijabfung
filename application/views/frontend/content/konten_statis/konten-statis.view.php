<?php
	$statis = isset($statis)?$statis:"";
	$judul = !empty($statis[0]->judul)?$statis[0]->judul:"";
	$deskripsi = !empty($statis[0]->deskripsi)?$statis[0]->deskripsi:"";
?>
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">

    <p>
    	<?php
			echo $deskripsi;
		?>
    </p>
</div>