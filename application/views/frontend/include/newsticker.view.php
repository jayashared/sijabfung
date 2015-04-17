<style>
	.newsticker marquee { font-size:13px; padding-top:7px; }
	.breadcrumbs h1 { margin:0px 0px 0px 0px; font-size:20px; }
</style>
<?php
	$newsticker = isset($newsticker)?$newsticker:"";
?>
<div class="row breadcrumbs margin-bottom-40">
    <div class="container">
        <div class="col-md-2 col-sm-2">
            <h1><i class="fa fa-info"></i> Info Update</h1>
        </div>
        <div class="col-md-10 col-sm-10 newsticker">
            <marquee onmouseover="this.stop();" onmouseout="this.start();">
            	<?php
					if( !empty($newsticker) )
					{
						foreach( $newsticker as $rn )
						{
							echo '<span class="text-danger"><i class="fa fa-calendar"></i> ' . TglOnlyIndo($rn->tanggal) . ': </span>  <a href="#">' . ' ' .$rn->judul . '</a> ';
						}
					}
					else
					{
						echo "Info Update tidak tersedia";
					}
				?>
            </marquee>
        </div>
    </div>
</div>