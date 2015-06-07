<?php
	$atasan_langsung = isset($atasan_langsung)?$atasan_langsung:"";
	$rat = isset($atasan_langsung[0])?$atasan_langsung[0]:"";
	
	$user = isset($user)?$user:"";
	$ru = isset($user[0])?$user[0]:"";

	$kegiatan = isset($kegiatan)?$kegiatan:"";
	//print_r($kegiatan);
?>

<br>

<div class="panel panel-success">
  <div class="panel-heading">SPMT</div>
  <div class="panel-body">
    
   	<form class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-12">Yang Bertanda Tangan dibawah ini: </label>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Nama</label>
            <div class="col-sm-9">
              <?php echo isset($rat->nama)?$rat->nama:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">NIP</label>
            <div class="col-sm-9">
              <?php echo isset($rat->nama)?$rat->nama:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Pangkat / Gol. Ruang</label>
            <div class="col-sm-9">
              <?php echo isset($rat->nama_pangkat_golongan)?$rat->nama_pangkat_golongan:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Jabatan</label>
            <div class="col-sm-9">
              <?php echo isset($rat->jabatan)?$rat->jabatan:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Unit Kerja</label>
            <div class="col-sm-9">
              <?php echo isset($rat->unit_kerja)?$rat->unit_kerja:""; ?>
            </div>
          </div>
          
          
          <hr />
          
          <div class="form-group">
            <label class="col-sm-12">Menyatakan Bahwa: </label>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Nama</label>
            <div class="col-sm-9">
              <?php echo isset($ru->nama)?$ru->nama:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">NIP</label>
            <div class="col-sm-9">
              <?php echo isset($ru->nama)?$ru->nama:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Pangkat / Gol. Ruang</label>
            <div class="col-sm-9">
              <?php echo isset($ru->pangkat_golongan)?$ru->pangkat_golongan:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Jabatan</label>
            <div class="col-sm-9">
              <?php echo isset($ru->jabatan)?$ru->jabatan:""; ?>
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-3 control-label">Unit Kerja</label>
            <div class="col-sm-9">
              <?php echo isset($ru->unit_kerja)?$ru->unit_kerja:""; ?>
            </div>
          </div>
          
          
          <hr />
          
      <div class="form-group">
            <label class="col-sm-12">Telah melakukan kegiatan Penggerakan, Pembinaan, & Pelaksanaan Pengawasan sebagai berikut: </label>
      </div>
          
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table table-bordered">
            <thead>
            <tr class="bg-primary">
                <th rowspan="2">NO</th>
                <th rowspan="2">Uraian</th>
                <th colspan="2">Tanggal</th>
                <th rowspan="2">Satuan AK</th>
                <th rowspan="2">Jumlah</th>
                <th rowspan="2">Keterangan</th>
            </tr>
            <tr class="bg-primary">
                <th>Mulai</th>
                <th>Selesai</th>
            </tr>
            </thead>
            <tbody>
            <tbody>
            <?php
				$no = 0;
            	foreach( $kegiatan as $rk ){
				$no++;
			?>
            <tr>
                <td align="right"><?php echo $no ?></td>
                <td><?php echo $rk->butir ?></td>
                <td align="center"><?php echo TglUK($rk->tanggal_kegiatan) ?></td>
                <td align="center"><?php echo TglUK($rk->tanggal_kegiatan_selesai) ?></td>
                <td align="right"><?php echo $rk->angka_kredit ?></td>
                <td><?php echo "" ?></td>
                <td><?php echo PotongKata($rk->keterangan,100) ?></td>
                </tr>
            <?php
				}
			?>
            </tbody>
        </table>   
      </form>
    
  </div>
</div>