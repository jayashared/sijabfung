<script src="<?php echo base_url() ?>assets/grocery_crud/js/jquery_plugins/jquery-validation/dist/jquery.validate.js"></script>

<br>

<?php  
	$user = isset($user)?$user:"";
	$row = isset($user[0])?$user[0]:"";
	$wilayah = isset($wilayah)?$wilayah:"";
	$jenjang = isset($jenjang)?$jenjang:"";
	$pendidikan = isset($pendidikan)?$pendidikan:"";
	$golongan = isset($golongan)?$golongan:"";
	$pesan = $this->session->flashdata('pesan');
?>
<!-- BEGIN CONTAINER -->   
	
    <div>
		<?php echo $pesan ?>
    </div>
    
    <form method="post" action="<?php echo base_url() ?>admin/biodata_proses" id="form_registrasi" class="form-horizontal">
    
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Biodata</h3>
        </div>
        <div class="panel-body">
            
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Wilayah</label>
                    <div class="col-md-8 com-sm-8">
                        <select name="id_wilayah" id="id_wilayah" class="form-control required">
                            <option value="">-- Pilih Wilayah --</option>
							<?php 
							foreach( $wilayah as $rw ) 
							{
							?>
                            	<option value="<?php echo $rw->id_wilayah ?>"><?php echo $rw->wilayah ?></option>
                        	<?php
							}
							?>
                        </select>
                    </div>
                </div>
                <script> $("#id_wilayah").val("<?php echo $row->id_wilayah ?>"); </script>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Nama</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input Nama" name="nama" id="nama" value="<?php echo $row->nama ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Jenis Kelamin</label>
                    <div class="col-md-8 com-sm-8">
						<label><input type="radio" name="jenis_kelamin" class="jenis_kelamin" value="Laki-laki" /> Laki-Laki</label> <br>
                        <label><input type="radio" name="jenis_kelamin" class="jenis_kelamin" value="Perempuan" /> Perempuan</label>
                    </div>
                </div>
                <script> $(".jenis_kelamin").val(["<?php echo $row->jenis_kelamin ?>"]); </script>
                
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Tempat Lahir</label>
                    <div class="col-md-8 com-sm-8">
						<input type="text" class="form-control" placeholder="Input Tempat Lahir" name="tempat_lahir" id="tempat_lahir" value="<?php echo $row->tempat_lahir ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Tanggal Lahir</label>
                    <div class="col-md-8 com-sm-8">
						<input type="text" class="form-control required" placeholder="Input Tanggal Lahir" name="tanggal_lahir" id="tanggal_lahir" value="<?php echo $row->tanggal_lahir ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">NIP</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" readonly="readonly" class="form-control required" placeholder="Input NIP" name="nip" id="nip" maxlength="18" value="<?php echo $row->nip ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Jenjang Jabfung</label>
                    
                    <div class="col-md-8 com-sm-8">
                    	<select class="form-control required" name="jenjang_jabfung" id="jenjang_jabfung">
                        	<option value="">-- Pilih Jenjang --</option>
							<?php
								foreach( $jenjang as $rj )
								{ 
							?>
                            <option value="<?php echo $rj->id_jenjang ?>"><?php echo $rj->jenjang ?></option>
                        	<?php
								}
							?>
                        </select>
                    </div>
                </div>
                <script>$("#jenjang_jabfung").val("<?php echo $row->jenjang_jabfung ?>")</script>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">No. SK Jabfung</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input No. SK Jabfung" name="no_sk_jabfung" value="<?php echo $row->no_sk_jabfung ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Berkas SK Jabfung</label>
                    <div class="col-md-8 com-sm-8" id="upload_file_content">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Upload SK Jabfung</button>                      
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
	                    <input type="text" class="form-control" readonly="readonly" name="sk_jabfung" id="sk_jabfung" value="<?php echo $row->sk_jabfung ?>" />
                	</div>
                    <div class="col-md-2">
                    	Download
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Alamat E-Mail</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input E-mail" name="email" id="email" value="<?php echo $row->email ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">No HP.</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control" placeholder="Input No HP" name="no_hp" id="no_hp" value="<?php echo $row->no_hp ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
					<hr />
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Karpeg</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control" placeholder="Input Karpeg" name="karpeg" id="karpeg" value="<?php echo $row->karpeg ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Unit Kerja</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control" placeholder="Input Unit Kerja" name="unit_kerja" id="unit_kerja" value="<?php echo $row->unit_kerja ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Telp. Unit Kerja</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control" placeholder="Input Telp. Unit Kerja" name="unit_kerja_telp" id="unit_kerja_telp" value="<?php echo $row->unit_kerja_telp ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Pendidikan/Gelar</label>
                    <div class="col-md-8 com-sm-8">
                    	<select class="form-control required" name="pendidikan_gelar" id="pendidikan_gelar">
                        	<option value="">-- Pilih Pendidikan --</option>
							<?php 
								foreach( $pendidikan as $rp )
								{
							?>
                            <option value="<?php echo $rp->id_pendidikan ?>"><?php echo $rp->pendidikan ?></option>
                        	<?php
								}
							?>
                        </select>
                    </div>
                </div>
                <script>$("#pendidikan_gelar").val("<?php echo $row->pendidikan_gelar ?>")</script>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Ruang Golongan</label>
                    <div class="col-md-8 com-sm-8">
                    	<select class="form-control required" name="ruang_golongan" id="ruang_golongan">
                        	<option value="">-- Pilih Ruang Golongan --</option>
							<?php 
								foreach( $golongan as $rg ) 
								{
							?>
                            <option value="<?php echo $rg->id_pangkat ?>"><?php echo $rg->pangkat_golongan ?></option>
                        	<?php
								}
							?>
                        </select>
                    </div>
                </div>
                <script>$("#ruang_golongan").val("<?php echo $row->ruang_golongan ?>")</script>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Jabatan</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input Jabatan" name="jabatan" id="jabatan" value="<?php echo $row->jabatan ?>">
                    </div>
                </div>
				
        </div>
        <div class="panel-footer">
            <div class="row">
                <div class="col-md-12" align="right">
                    <input type="submit" value="Simpan" class="btn btn-primary" />                     
                </div>
            </div>
        </div>
    </div>
    </form>
    
    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	            <h4 class="modal-title" id="myModalLabel">Upload SK Jabfung</h4>
            </div>
        	<div class="modal-body">
				<div id="upload_file"> Pilih Berkas </div>
            </div>
        </div>
      </div>
    </div>  


<link rel="stylesheet" media="screen" href="<?php echo base_url()?>assets/grocery_crud/css/ui/simple/jquery-ui-1.10.1.custom.min.css">
<link rel="stylesheet" media="screen" href="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/css/uploadfile.css">
<script src="<?php echo base_url()?>assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.10.3.custom.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/js/jquery.uploadfile.js"></script>

<script>
	$("#tanggal_lahir").datepicker({
	  	changeMonth: true,
      	changeYear: true
    });
	
	$( "#tanggal_lahir" ).datepicker( "option", "dateFormat", "dd/mm/yy" );
	$( "#tanggal_lahir" ).val("<?php echo TglUK($row->tanggal_lahir) ?>");
</script>

<script>
	var form1 = $('#form_registrasi');

	form1.validate({
		onkeyup: false,
		errorElement: 'span', //default input error message container
		errorClass: 'help-block', // default input error message class
		focusInvalid: false, // do not focus the last invalid input
		ignore: "",
		rules: {
			ct_captcha: {
			  required: true,
			  remote: "<?php echo base_url() ?>securimages/check_captha"
			},
			email: {
				required: true,
				email: true
			},
			nip: {
				maxlength: 18,
				minlength: 18,
				required: true
			},

			password: {
				minlength: 5
			},
			repassword: {
				minlength: 5,
				equalTo: "#password"
			},
		},
		
		messages: {
			id_wilayah: {
				required: "Wilayah harus diisi."
			},
			nip: {
				required: "NIP harus diisi.",
				maxlength: "NIP harus terdiri dari 18 karakter.",
			  	minlength: "NIP harus terdiri dari 18 karakter.",
				remote: "NIP sudah terdaftar sebelumnya."
			},
			no_sk_jabfung: {
				required: "No. SK Jabfung harus diisi."
			},
			email: {
				required: "Email harus diisi.",
				remote: "Email sudah terdaftar sebelumnya."
			},
			password: {
				required: "Password harus diisi.",
				minlength: "Password minimal terdiri dari 5 karakter."
			},
			repassword: {
				required: "Konfirmasi Password harus diisi.",
				minlength: "Password minimal terdiri dari 5 karakter.",
				equalTo: "Password tidak sama."
			},
			ct_captcha: {
				required: "Kode harus diisi.",
				remote: "Kode tidak sesuai."
			}
			
		},

		invalidHandler: function (event, validator) { //display error alert on form submit
		},

		highlight: function (element) { // hightlight error inputs
			$(element)
				.closest('.form-group').addClass('has-error'); // set error class to the control group
		},

		unhighlight: function (element) { // revert the change done by hightlight
			$(element)
				.closest('.form-group').removeClass('has-error'); // set error class to the control group
		},

		success: function (label) {
			label
				.closest('.form-group').removeClass('has-error'); // set success class to the control group
		},

		submitHandler: function (form) {
			form.submit();
		}
	});
	
	
	$("#upload_file").uploadFile({
		url:"<?php echo base_url() ?>upload/do_upload",
		fileName:"userfile",
		allowedTypes:"pdf,doc,docx",
		multiple:false,
		autoSubmit:true,
		//maxFileSize:1024*100,
		returnType :'json',
		showDone:false,
		showDelete:true,
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
			$("#sk_jabfung").val(file_name);
			
		},
		afterUploadAll:function()
		{
			alert("Unggah SK Jabfung Berhasil");
			
		},
		onError: function(files,status,errMsg)
		{
			alert("Proses Upload Gagal.");
		}
	});
</script>