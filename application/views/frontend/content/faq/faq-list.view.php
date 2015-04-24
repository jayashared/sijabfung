<?php
	$faq = isset($faq)?$faq:"";
	//echo $faq=""?"Data tidak ditemukan":"";
?>
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">

    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">      
      <?php
      	foreach( $faq as $rf )
		{
	  ?>
      <h3><?php echo $rf->kategori ?></h3>
      <?php
	  		$no = 0;
      		foreach( $rf->faq as $r )
			{
				$no++;
	  ?>
      <div class="panel panel-success">
        <div class="panel-heading" role="tab" id="heading<?php echo $r->id_faq; ?>">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $r->id_faq; ?>" aria-expanded="true" aria-controls="collapse<?php echo $r->id_faq; ?>">
              <?php echo $r->pertanyaan ?>
            </a>
          </h4>
        </div>
        <div id="collapse<?php echo $r->id_faq; ?>" class="panel-collapse collapse<?php echo $no==1?" in":""; ?>" role="tabpanel" aria-labelledby="heading<?php echo $r->id_faq; ?>">
          <div class="panel-body">
          	<?php echo $r->jawaban ?>
          </div>
        </div>
      </div>
      <?php 
			}
	  } 
	  ?>
    </div>
</div>