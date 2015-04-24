<?php
	$download = isset($download)?$download:"";
?>

<!-- BEGIN LEFT SIDEBAR -->   
    
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">

	<?php
        foreach( $download as $row )
        {
    ?>
    <div class="panel panel-success">
        <div class="panel-heading">
        	<big><big><?php echo $row->download_kategori ?></big></big>
        </div>
        <div class="panel-body">
            <table class="table">
            <thead>
            <tr>
            	<th>Judul</th>
                <th>Deskripsi</th>
                <th>Unduh</th>
            </tr>
            </thead>
            <tbody>
			<?php
            	foreach( $row->download as $rd )
				{
			?>
            	<tr>
                    <td>
	                    <a href="<?php echo base_url() . 'assets/uploads/berkas/' . $rd->berkas ?>" target="_blank"><?php echo $rd->judul ?></a>
                    </td>
                    <td>
                    	<?php echo PotongKata($rd->deskripsi, 50) ?>
                    </td>
                    <td align="center" width="20">
                    	<a href="<?php echo base_url() . 'assets/uploads/berkas/' . $rd->berkas ?>" target="_blank"><big><i class="fa fa-download"></i></big></a>
                    </td>
                </tr>
            <?php		
				}
			?>
            </tbody>
            </table>
        </div>
    </div>

    <?php
        }
    ?>
    <!-- END BLOG TAGS -->
</div>
<!-- END RIGHT SIDEBAR -->
