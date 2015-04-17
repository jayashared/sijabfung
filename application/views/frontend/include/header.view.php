<div class="header navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">
            <!-- BEGIN LOGO (you can use logo image instead of text)-->
            <a class="navbar-brand-custom" href="<?php echo base_url() ?>">
                <img src="<?php echo base_url() ?>assets/images/frontend-logo.png" />
            </a>
            <!-- END LOGO -->
        </div>
    
        <!-- BEGIN TOP NAVIGATION MENU -->
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li id="home">
                    <a href="<?php echo base_url() ?>frontend">
                        <big><big><i class="fa fa-home"></i></big></big>
                    </a>
                </li>
                <li id="berita"><a href="<?php echo base_url() ?>frontend/berita"><i class="fa fa-newspaper-o"></i>Berita</a></li>
                <li><a href="<?php echo base_url() ?>frontend/referensi"><i class="fa fa-cloud-download"></i>Referensi</a></li>
                <li><a href="#"><i class="fa fa-sign-in"></i>Registrasi</a></li>
                <li><a href="#"><i class="fa fa-paper-plane-o"></i>Kotak Kami</a></li>
                <li><a href="#"><i class="fa fa-comments"></i>FAQ</a></li>
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>

                    <div class="search-box">
                        <form action="#">
                            <div class="input-group input-large">
                                <input class="form-control" type="text" placeholder="Pencarian">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn theme-btn">Cari</button>
                                </span>
                            </div>
                        </form>
                    </div> 
                </li>
            </ul>                         
        </div>
        <!-- BEGIN TOP NAVIGATION MENU -->
    </div>
</div>

<?php
	$id = $this->uri->segment(2);
?>
<script>
	$(document).ready(function(e) {
        $("#<?php echo !empty($id)?$id:"home"; ?>").addClass("active");
    });
</script>