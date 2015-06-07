<script src="<?php echo base_url() ?>assets/grocery_crud/js/jquery_plugins/jquery-validation/dist/jquery.validate.js"></script>


<?php  
	$wilayah = isset($wilayah)?$wilayah:"";
	$pesan = $this->session->flashdata('pesan');
?>
<!-- BEGIN CONTAINER -->   
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">
	
    <div>
		<?php echo $pesan ?>
    </div>
    
    <form method="post" action="<?php echo base_url() ?>frontend/registrasi_proses" id="form_registrasi" class="form-horizontal">
    
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">Registrasi Form</h3>
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
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Nama</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input Nama" name="nama" id="nama">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">NIP</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input NIP" name="nip" id="nip" maxlength="18">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">No. SK Jabfung</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input No. SK Jabfung" name="no_sk_jabfung">
                    </div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Berkas SK Jabfung</label>
                    <div class="col-md-8 com-sm-8" id="upload_file_content">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Upload SK Jabfung</button>                      
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-8">
	                    <input type="text" class="form-control" readonly="readonly" name="sk_jabfung" id="sk_jabfung" value="" />
                	</div>
                </div>
                
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Alamat E-Mail</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="text" class="form-control required" placeholder="Input E-mail" name="email" id="email">
                    </div>
                </div>    
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Password</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="password" class="form-control required" placeholder="Input Password" name="password" id="password">
                    </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Konfirmasi Password</label>
                    <div class="col-md-8 com-sm-8">
                    <input type="password" class="form-control required" placeholder="Input Konfirmasi password" name="repassword">
                    </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4">Kode</label>
                    <div class="col-md-8 com-sm-8">
                        
                        <img id="siimage" style="border: 1px solid #e4e4e4; padding:3px; margin-right: 15px; width:90%; height:70px;" 
                            src="<?php echo base_url() ?>securimages/securimages_show?sid=<?php echo md5(uniqid()) ?>" 
                            alt="CAPTCHA Image" align="left" 
                        />
                       
                        &nbsp;
                        <a tabindex="-1" style="border-style: none;" href="#" 
                            title="Refresh Image" 
                            onclick="document.getElementById('siimage').src = 
                        '<?php echo base_url() ?>securimages/securimages_show?sid=' + Math.random(); this.blur(); return false"
                        >
                            <img 
                                src="<?php echo base_url() ?>assets/plugins/securimage/images/refresh.png" 
                                alt="Reload Image" title="Refresh Captha" height="32" width="32" onclick="this.blur()" align="bottom" border="0" 
                            />
                        </a>
                    </div>
                </div>
                <div class="form-group col-md-12 col-sm-12">
                    <label class="col-md-4 col-sm-4"></label>
                    <div class="col-md-8 com-sm-8">
                        <input type="text" name="ct_captcha" class="form-control required" placeholder="Inputkan Kode diatas" size="12" maxlength="8" />
                    </div>
                </div>
                

        </div>
        <div class="panel-footer">
            <div class="row">
                <div class="col-md-12">
                    <input type="submit" value="Daftar" class="btn btn-primary" />                     
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
    
</div>


<link rel="stylesheet" media="screen" href="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/css/uploadfile.css">
<script src="<?php echo base_url()?>assets/plugins/jquery-upload-file-master/js/jquery.uploadfile.js"></script>
<script type="text/javascript">
  //  $.noConflict();

    function reloadCaptcha()
    {
        $('#siimage').prop('src', '<?php echo base_url() ?>securimages/securimage_show?sid=' + Math.random());
    }
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