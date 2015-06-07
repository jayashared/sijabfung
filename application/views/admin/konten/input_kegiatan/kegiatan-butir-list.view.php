<style>
	.floatL { float:left; }
	.floatR { float:right; }
	.clear { clear:both; }
</style>
<?php
	$kegiatan = isset($kegiatan)?$kegiatan:"";
?>

<br>

<?php
	$pesan = $this->session->flashdata('pesan');
	echo isset($pesan)?$pesan:"";
?>

<div class="">
    <div class="panel panel-success">
      <div class="panel-heading">
	  <a href="<?php echo base_url() ?>admin/daftar_kegiatan/<?php echo $this->uri->segment(3) ?>"><?php echo isset($unsur)?$unsur:"" ?> </a> <i class="fa fa-angle-double-right"></i>
	  <?php echo isset($subunsur)?$subunsur:"" ?> <i class="fa fa-angle-double-right"></i>
	  <?php echo isset($butir)?$butir:"" ?>
      </div>
      <div class="panel-body">
    		<div class="form-group">
            	<div class="floatL">
		            <button class="btn btn-info" id="tambah_kegiatan_transaksi_pegawai">Tambah</button>
                </div>
                <div class="floatR">
	                
            	</div>
                <div class="clear"></div>
            </div>   
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="tbl_kegiatan_transaksi_pegawai_list" class="table grocery-crud-table">
            <thead>
              <tr class="bg-primary">
                <th>Butir Kegiatan</th>
                <th>Tanggal Mulai Kegiatan</th>
                <th>Tanggal Selesai Kegiatan</th>
                <th>Keterangan</th>
                <th>Angka Kredit</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
                <?php 
				$total = 0;
				foreach( $kegiatan as $row )
                {
					if( $row->status == "Setuju" )
					{
						$total += $row->angka_kredit;
					}
                ?>
                  <tr>
                    <td><?php echo $row->butir ?></td>
                    <td><?php echo TglUK($row->tanggal_kegiatan) ?></td>
                     <td><?php echo TglUK($row->tanggal_kegiatan_selesai) ?></td>
                    <td><?php echo PotongKata($row->keterangan, 20) ?>...</td>
                    <td align="right"><?php echo $row->angka_kredit ?></td>
                    <td><?php echo $row->status ?></td>
                    <td align="center">
                        <?php echo !empty($row->angka_kredit)?'
						<a href="'
							. base_url() .'admin/form_kegiatan_transaksi/'
							. $this->uri->segment(3) .'/'
							. $row->id_kegiatan_butir . '/'
							. $row->id_kegiatan_transaksi .
						'">
							<i class="fa fa-pencil"></i>
						</a>':''; 
						?>
                         | 
                        <?php echo $row->status!="Setuju"?'
						<a href="'
							. base_url() .'admin/form_spmt/'
							. $row->id_kegiatan_butir . 
						'" title="SPMT">
							<i class="fa fa-file-archive-o"></i>
						</a>':''; 
						?>
                    </td>
                  </tr>
                <?php
                }
                ?>
            </tbody>
            </table>
            
            <hr />
            
            <div class="text-left">
            	Total Angka Kredit: <?php echo $total ?>
            </div>
            
           	<span class="label label-warning">
	            Total Angka Kredit anda dihitung berdasarkan jumlah kegiatan per unsur yang telah disetujui
            </span>
            
      </div>
    </div>
</div>

<script>
	$("#tbl_kegiatan_transaksi_pegawai_list").DataTable();
	$("#tambah_kegiatan_transaksi_pegawai").click(function(e) {
        location.href = "<?php echo base_url() ?>admin/form_kegiatan_transaksi/<?php echo $this->uri->segment(3) ?>/<?php echo $this->uri->segment(4) ?>"
    });
	
	$("#kembali_kegiatan_transaksi_pegawai").click(function(e) {
        location.href = "<?php echo base_url() ?>admin/daftar_kegiatan/<?php echo $this->uri->segment(3) ?>";
    });
</script>