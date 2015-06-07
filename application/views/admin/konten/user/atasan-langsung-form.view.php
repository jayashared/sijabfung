<script src="<?php echo base_url() ?>assets/grocery_crud/js/jquery_plugins/jquery-validation/dist/jquery.validate.js"></script>

<br>

<?php  
	$atasan_langsung = isset($atasan_langsung)?$atasan_langsung:"";
	$pangkat = isset($pangkat)?$pangkat:"";
	$row = isset($atasan_langsung[0])?$atasan_langsung[0]:"";
	$pesan = $this->session->flashdata('pesan');
?>
<!-- BEGIN CONTAINER -->   
	
    <div>
		<?php echo $pesan ?>
    </div>
    
    <form method="post" action="<?php echo base_url() ?>admin/atasan_langsung_proses" id="form_registrasi" class="form-horizontal">
    
    <input type="hidden" name="id_atasan_user" value="<?php echo isset($row->id_atasan_user)?$row->id_atasan_user:"" ?>" />
    
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Atasan Langsung</h3>
        </div>
        <div class="panel-body">
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Nama</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input Nama" name="nama" id="nama" value="<?php echo isset($row->nama)?$row->nama:"" ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">NIP</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input NIP" name="nip" id="nip" maxlength="18" value="<?php echo isset($row->nip)?$row->nip:"" ?>">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Pangkat / Gol. Ruang</label>
                    <div class="col-md-8 com-sm-8">
	                    <select class="form-control" name="pangkat_golongan" id="pangkat_golongan">
                        	<option value="">-- Pilih Pangkat Golongan --</option>
							<?php
                            	foreach( $pangkat as $rp )
								{
							?>
                            	<option value="<?php echo $rp->id_pangkat ?>"><?php echo $rp->pangkat_golongan ?></option>
                            <?php
								}
							?>
                        </select>
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Jabatan</label>
                    <div class="col-md-8 com-sm-8">
	                    <input type="text" class="form-control required" placeholder="Input Jabatan" name="jabatan" id="jabatan" value="<?php echo isset($row->jabatan)?$row->jabatan:"" ?>">
                    </div>
                </div>

                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Unit Kerja</label>
                    <div class="col-md-8 com-sm-8">
	                    <input type="text" class="form-control required" placeholder="Input Unit Kerja" name="unit_kerja" id="unit_kerja" value="<?php echo isset($row->unit_kerja)?$row->unit_kerja:"" ?>">
                    </div>
                </div>

        </div>
        <div class="panel-footer">
            <div class="row">
                <div class="col-md-12">
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



<link rel="stylesheet" media="screen" href="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/css/uploadfile.css">
<script src="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/js/jquery.uploadfile.js"></script>

<script>
	$("#pangkat_golongan").val("<?php echo isset($row->pangkat_golongan)?$row->pangkat_golongan:"" ?>")

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
				email: true,
				remote: {
					url: "<?php echo base_url() ?>frontend/registrasi_check_email_exist",
					type: "post",
					data: {
						email: function() {
							return $( "#email" ).val();
						}
					}
				}
			},
			nip: {
				maxlength: 18,
				minlength: 18,
				required: true,
				remote: {
					url: "<?php echo base_url() ?>frontend/registrasi_check_nip_exist",
					type: "post",
					data: {
						nip: function() {
							return $( "#nip" ).val();
						}
					}
				}
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
	
</script>