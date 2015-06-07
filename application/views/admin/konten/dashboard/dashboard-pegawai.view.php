<?php
	$row = isset($user[0])?$user[0]:"";
?>
<br />

<div class="panel panel-default">
  <div class="panel-heading"><h3 class="panel-title">Dashboard</h3></div>
  <div class="panel-body">
  		<div class="form-horizontal">
        	<div class="form-group col-md-12 col-sm-12">
                <label class="col-md-3 col-sm-3">NIP</label>
                <div class="col-md-9 com-sm-9">
                	<?php echo $row->nip ?>
                </div>
            </div>
            <div class="form-group col-md-12 col-sm-12">
                <label class="col-md-3 col-sm-3">Wilayah</label>
                <div class="col-md-9 com-sm-9">
                	<?php echo $row->wilayah ?>
                </div>
            </div>
            <div class="form-group col-md-12 col-sm-12">
                <label class="col-md-3 col-sm-3">Ruang Golongan</label>
                <div class="col-md-9 com-sm-9">
                	<?php echo $row->pangkat_golongan ?>
                </div>
            </div>
            <div class="form-group col-md-12 col-sm-12">
                <label class="col-md-3 col-sm-3">Kepangkatan Saat Ini</label>
                <div class="col-md-9 com-sm-9">
                	<?php echo $row->jenjang ?>
                </div>
            </div>
            
            <div class="form-group col-md-12 col-sm-12">
                <label class="col-md-3 col-sm-3">Jumlah Kredit Terkumpul sampai dengan sekarang</label>
                <div class="col-md-9 com-sm-9">
                	XXX
                </div>
            </div>
        </div>
  </div>
</div>