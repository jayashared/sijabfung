<?php
	$kegiatan = isset($kegiatan)?$kegiatan:"";
?>

<br>

<div class="">
    <div class="panel panel-success">
      <div class="panel-heading"><?php echo isset($unsur)?$unsur:"" ?></div>
      <div class="panel-body">
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0" id="tbl_kegiatan_pegawai_list" class="table">
            <thead>
              <tr class="bg-primary">
                <th>Sub Unsur</th>
                <th>Butir Kegiatan</th>
                <th>Satuan Hasil</th>
                <th>Angka Kredit</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
                <?php foreach( $kegiatan as $row )
                {
                ?>
                  <tr>
                    <td><?php echo $row->subunsur ?></td>
                    <td><?php echo $row->butir ?></td>
                    <td><?php echo $row->satuan_hasil ?></td>
                    <td align="right"><?php echo $row->angka_kredit ?></td>
                    <td>Status</td>
                    <td align="center" valign="middle">
                        <?php echo !empty($row->angka_kredit)?'<a href="'. base_url() .'admin/daftar_kegiatan_transaksi/'. $this->uri->segment(3) .'/'. $row->id_kegiatan_butir .'">
							<i class="fa fa-pencil"></i>
							</a>':''; 
						?>
                    </td>
                  </tr>
                <?php
                }
                ?>
            </tbody>
            </table>
            
      </div>
    </div>
</div>
<script>
	$("#tbl_kegiatan_pegawai_list").DataTable();
</script>