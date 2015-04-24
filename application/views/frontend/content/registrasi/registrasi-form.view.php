<script src="<?php echo base_url() ?>assets/grocery_crud/js/jquery_plugins/jquery-validation/dist/jquery.validate.js"></script>
<!-- BEGIN CONTAINER -->   
<div class="col-md-9 col-sm-9 blog-posts margin-bottom-40">
    <form method="post" action="<?php echo base_url() ?>frontend/registrasi_proses" id="form_registrasi" class="form-horizontal"> 

		
        <div class="form-group col-md-12 col-sm-12">
            <label class="col-md-4 col-sm-4">NIP</label>
            <div class="col-md-8 com-sm-8">
            <input type="text" class="form-control required" placeholder="Input NIP" name="nip">
        	</div>
        </div>
        
        <div class="form-group col-md-12 col-sm-12">
        	<label class="col-md-4 col-sm-4">No. SK Jabfung</label>
            <div class="col-md-8 com-sm-8">
            <input type="text" class="form-control required" placeholder="Input No. SK Jabfung" name="no_sk_jabfung">
        	</div>
        </div>
        
        <div class="form-group col-md-12 col-sm-12">
        	<label class="col-md-4 col-sm-4">Alamat E-Mail</label>
            <div class="col-md-8 com-sm-8">
            <input type="text" class="form-control required" placeholder="Input E-mail" name="email">
            </div>
        </div>    
        <div class="form-group col-md-12 col-sm-12">
        	<label class="col-md-4 col-sm-4">Password</label>
            <div class="col-md-8 com-sm-8">
            <input type="password" class="form-control required" placeholder="Input Password" name="password">
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
                
                <!--<object type="application/x-shockwave-flash" 
                	data="<?php echo base_url() ?>assets/plugins/securimage/securimage_play.swf?bgcol=#ffffff&amp;icon_file=
					<?php echo base_url() ?>assets/plugins/securimage/images/audio_icon.png&amp;audio_file=
					<?php echo base_url() ?>securimages/securimages_play" 
                    height="32" width="32"
                >
                
                <param 
                	name="movie" 
                	value="<?php echo base_url() ?>assets/plugins/securimage/securimage_play.swf?bgcol=#ffffff&amp;
                    icon_file=<?php echo base_url() ?>assets/plugins/securimage/images/audio_icon.png&amp;
                    audio_file=<?php echo base_url() ?>securimages/securimages_play" 
                />
                </object>-->
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
        <div class="row">
            <div class="col-md-10">
                <button type="submit" class="btn theme-btn pull-right">Daftar</button>                        
            </div>
        </div>
        <hr>
    </form>
</div>


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
			}
		},
		
		messages: {
			nip: {
				required: "NIP harus diisi."
			},
			no_sk_jabfung: {
				required: "No. SK Jabfung harus diisi."
			},
			email: {
				required: "Email harus diisi."
			},
			password: {
				required: "Password harus diisi."
			},
			repassword: {
				required: "Konfirmasi Password harus diisi."
			},
			
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
			//success1.show();
			//error1.hide();
		}
	});
</script>