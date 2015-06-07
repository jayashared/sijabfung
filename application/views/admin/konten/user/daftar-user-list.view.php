<script src="<?php echo base_url() ?>assets/grocery_crud/js/jquery_plugins/jquery-validation/dist/jquery.validate.js"></script>

<br>

<?php
	$pesan = $this->session->flashdata('pesan');
	echo !empty($pesan)?$pesan:"";
	
	$user = isset($user)?$user:"";
?>

<div class="panel panel-success">
  <div class="panel-heading">Daftar User</div>
  <div class="panel-body">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table" id="tabel_daftar_user">
      <thead>
      <tr  class="bg-primary">
        <th>NIP</th>
        <th>Nama</th>
        <th>Wilayah</th>
        <th>Status</th>
        <th>Aksi</th>
      </tr>
      </thead>
      <tbody>
      <?php foreach( $user as $row ){ ?>
      <tr>
        <td><?php echo isset($row->nip)?$row->nip:""; ?></td>
        <td><?php echo isset($row->nama)?$row->nama:""; ?></td>
        <td><?php echo isset($row->wilayah)?$row->wilayah:""; ?></td>
        <td><?php echo isset($row->status)?$row->status:""; ?></td>
        <td align="center">
            <?php
                if( $row->status == "non-aktif" )
                {
            ?>
                <a href="<?php echo base_url() ?>admin/aktifkan_user/<?php echo $row->id_user ?>" class="persutujuan_user" title="Aktifkan User">
                    <i class="fa fa-check"></i>
                </a>
            <?php
                }
                else
                {
            ?>
                <a href="<?php echo base_url() ?>admin/nonaktifkan_user/<?php echo $row->id_user ?>" class="persutujuan_user" title="Non-aktifkan User"><i class="fa fa-times"></i></a>
            <?php
                }
            ?>
        </td>
      </tr>
      <?php } ?>
      </tbody>
    </table>
  </div>
</div>

<script>
	$("#tabel_daftar_user").DataTable();
	
	$(".persutujuan_user").click(function(e) {
		if( confirm("Anda yakin ingin mengubah status ?") )
		{
			return true;	
		}
		else
		{
			return false;
		}
    });
</script>