<?php
	$kegiatan = isset($kegiatan)?$kegiatan:"";
	$kegiatan = isset($kegiatan)?$kegiatan:"";
	$data_kegiatan = isset($kegiatan[0])?$kegiatan[0]:"";
	
	$id_kegiatan_transaksi = isset($data_kegiatan->id_kegiatan_transaksi)?$data_kegiatan->id_kegiatan_transaksi:"";
	$tanggal_kegiatan = isset($data_kegiatan->tanggal_kegiatan)?$data_kegiatan->tanggal_kegiatan:"";
	$tanggal_kegiatan_selesai = isset($data_kegiatan->tanggal_kegiatan_selesai)?$data_kegiatan->tanggal_kegiatan_selesai:"";
	$lembur = isset($data_kegiatan->lembur)?$data_kegiatan->lembur:"";
	$keterangan = isset($data_kegiatan->keterangan)?$data_kegiatan->keterangan:"";
	$bukti = isset($data_kegiatan->bukti)?$data_kegiatan->bukti:"";
?>
<br />
<div class="panel panel-success">
  <div class="panel-heading">
    <a href="<?php echo base_url() ?>admin/daftar_kegiatan/<?php echo $this->uri->segment(3) ?>"><?php echo isset($unsur)?$unsur:"" ?> </a> <i class="fa fa-angle-double-right"></i>
    <?php echo isset($subunsur)?$subunsur:"" ?>
    (<?php echo isset($butir)?$butir:"" ?>)
  </div>
  <div class="panel-body">
    <form class="form-horizontal" id="form_kegiatan_transaksi" method="post" action="<?php echo base_url() ?>admin/proses_kegiatan">
      
      <input type="hidden" name="id_kegiatan_subunsur" value="<?php echo $this->uri->segment(3) ?>">
      <input type="hidden" name="id_kegiatan_butir" value="<?php echo $this->uri->segment(4) ?>">
      <input type="hidden" name="id_kegiatan_transaksi" value="<?php echo $id_kegiatan_transaksi ?>">
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Tanggal Mulai Kegiatan</label>
        <div class="col-sm-10">
          <input type="text" class="form-control required" value="<?php echo TglUK($tanggal_kegiatan) ?>" name="tanggal_kegiatan" id="tanggal_kegiatan" placeholder="Tanggal Mulai Kegiatan">
        </div>
      </div>
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Tanggal Selesai Kegiatan</label>
        <div class="col-sm-10">
          <input type="text" class="form-control required" value="<?php echo TglUK($tanggal_kegiatan_selesai) ?>" name="tanggal_kegiatan_selesai" id="tanggal_kegiatan_selesai" placeholder="Tanggal Selesai Kegiatan">
        </div>
      </div>
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Lembur</label>
        <div class="col-sm-10">
          <input type="text" class="form-control number" value="<?php echo $lembur ?>" name="lembur" id="lembur" placeholder="Lembur">
        </div>
      </div>
      
      <div class="form-group">
        <label for="keterangan" class="col-sm-2 control-label">Keterangan</label>
        <div class="col-sm-10">
          <textarea name="keterangan" class="form-control" id="keterangan"><?php echo $keterangan ?></textarea>
        </div>
      </div>
      
      <div class="form-group">
        <label for="keterangan" class="col-sm-2 control-label">Bukti <br><small>(pdf, doc. docx)</small></label>
        <div class="col-sm-10">
        	<?php if( empty($bukti) ){ ?>
            <div id="upload_file">Unggah Berkas</div>
			<?php }else{ ?>
            <a href="<?php echo base_url() ?>assets/uploads/berkas/<?php echo $bukti ?>" target="_blank"> <?php echo $bukti ?> </a> - 
           	<a href="<?php echo base_url() ?>admin/hapus_berkas_kegiatan/<?php echo $this->uri->segment(3) ?>/<?php echo $this->uri->segment(4) ?>/<?php echo $id_kegiatan_transaksi ?>/<?php echo $bukti ?>" 
            	class="text-danger hapus_file_kegiatan"
            >
            	<i class="fa fa-trash-o"></i>
            </a>
        	<?php } ?>
            <input type="hidden" name="bukti" id="bukti" value="<?php echo $bukti ?>">
        </div>
      </div>
      
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <button type="button" class="btn btn-default" id="btn_kegiatan_kembali">Kembali</button>
          <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
      </div>
    </form>
  </div>
</div>


<link rel="stylesheet" media="screen" href="<?php echo base_url()?>assets/grocery_crud/css/ui/simple/jquery-ui-1.10.1.custom.min.css">
<link rel="stylesheet" media="screen" href="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/css/uploadfile.css">
<script src="<?php echo base_url()?>assets/grocery_crud/texteditor/ckeditor/ckeditor.js"></script>
<!--<script src="<?php echo base_url()?>assets/grocery_crud/js/jquery_plugins/jquery-validation/dist/jquery.validate.js"></script>
<script src="<?php echo base_url()?>assets/grocery_crud/js/jquery_plugins/jquery-validation/lib/jquery.form.js"></script>-->
<script src="<?php echo base_url()?>assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.10.3.custom.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/js/jquery.uploadfile.js"></script>
<script>  
	CKEDITOR.replace( 'keterangan' );
	
	
	$("#tanggal_kegiatan").datepicker({
	  	changeMonth: true,
      	changeYear: true,
	  	showButtonPanel: true,
		onClose: function( selectedDate ) {
        	$( "#tanggal_kegiatan_selesai" ).datepicker( "option", "minDate", selectedDate );
        },
	  	beforeShow: function(input, inst) {
			// Handle calendar position before showing it.
			// It's not supported by Datepicker itself (for now) so we need to use its internal variables.
			var calendar = inst.dpDiv;
	
			// Dirty hack, but we can't do anything without it (for now, in jQuery UI 1.8.20)
			setTimeout(function() {
				calendar.position({
					my: 'left top',
					at: 'left bottom',
					collision: 'none',
					of: input
				});
			}, 1);
		}
    });
	
	$("#tanggal_kegiatan_selesai").datepicker({
	  	changeMonth: true,
      	changeYear: true,
	  	showButtonPanel: true,
		onClose: function( selectedDate ) {
         	$( "#tanggal_kegiatan" ).datepicker( "option", "maxDate", selectedDate );
        },
	  	beforeShow: function(input, inst) {
			// Handle calendar position before showing it.
			// It's not supported by Datepicker itself (for now) so we need to use its internal variables.
			var calendar = inst.dpDiv;
	
			// Dirty hack, but we can't do anything without it (for now, in jQuery UI 1.8.20)
			setTimeout(function() {
				calendar.position({
					my: 'left top',
					at: 'left bottom',
					collision: 'none',
					of: input
				});
			}, 1);
		}
    });
	
	$.datepicker._gotoToday = function(id) { 
		$("#tanggal_kegiatan").datepicker('setDate', new Date()).datepicker('hide').blur();
		$("#tanggal_kegiatan_selesai").datepicker('setDate', new Date()).datepicker('hide').blur(); 
	};
	
	$( "#tanggal_kegiatan" ).datepicker( "option", "dateFormat", "dd/mm/yy" );
	$( "#tanggal_kegiatan" ).val("<?php echo TglUK($tanggal_kegiatan) ?>");
	
	$( "#tanggal_kegiatan_selesai" ).datepicker( "option", "dateFormat", "dd/mm/yy" );
	$( "#tanggal_kegiatan_selesai" ).val("<?php echo TglUK($tanggal_kegiatan_selesai) ?>");
	
	$("#btn_kegiatan_kembali").click(function(e) {
        location.href = "<?php echo base_url() ?>admin/daftar_kegiatan_transaksi/<?php echo $this->uri->segment(3) ?>/<?php echo $this->uri->segment(4) ?>";
    });
</script>

<script>
	$("#upload_file").uploadFile({
		url:"<?php echo base_url() ?>upload/do_upload",
		fileName:"userfile",
		allowedTypes:"pdf,doc,docx",
		multiple:false,
		autoSubmit:true,
		//maxFileSize:1024*100,
		returnType :'json',
		showDone:false,
		uploadButtonClass:"btn btn-success",
		onSubmit:function(files)
		{
			//$("#eventsmessage").html($("#eventsmessage").html()+"<br/>Submitting:"+JSON.stringify(files));
		},
		onSuccess:function(files, data, xhr)
		{
			var jsontext   = JSON.stringify(data);
			var getContact = eval('(' + jsontext + ')');
			var file_name = "";
			file_name = getContact.file_name;
			$("#bukti").val(file_name);
			
		},
		afterUploadAll:function()
		{
			//alert("Semua File berhasil di Upload.");
			
		},
		onError: function(files,status,errMsg)
		{
			alert("Proses Upload Gagal.");
		}
	});
			
	$(".HapusFilePendukung").click(function(e) {
        var id_output_file_pendukung = $(this).attr("id_output_file_pendukung");
		var file_pendukung = $(this).attr("file_pendukung");
		var data = "id_output_file_pendukung=" + id_output_file_pendukung + "&file_pendukung=" + file_pendukung;
		var url = "<?php echo base_url() ?>output/hapus_file_pendukung"
		var funct = "hideFile("+ id_output_file_pendukung +")";
		if( confirm("Anda yakin ingin menghapus data ini ?") )
		{
			ajax("post", data, url, "#StatusFilePendukung", funct, "")
		}	
    });
</script>

<script>
	//$("#form_kegiatan_transaksi").validate();
	$(".hapus_file_kegiatan").click(function(e) {
        if( confirm("Anda yakin mau menghapus file ini ?") )
		{
			return true;
		}
		else
		{
			return false;
		}
    });
</script>