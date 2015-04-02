<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search">
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button">
                        <i class="fa fa-search"></i>
                    </button>
                </span>
                </div>
                <!-- /input-group -->
            </li>
            <li>
                <a href="<?php echo base_url() ?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
            </li>
            <li>
                <a href="<?php echo base_url() ?>admin/berita" id="berita" class=""><i class="fa fa-table fa-fw"></i> Berita</a>
            </li>
            <li>
                <a href="<?php echo base_url() ?>admin/pengumuman" id="pengumuman" class=""><i class="fa fa-table fa-fw"></i> Pengumuman</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-files-o fa-fw"></i> Master<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="<?php echo base_url() ?>admin/ulp" id="ulp">ULP</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/link" id="link">Link</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/unit_kerja" id="unit_kerja">Unit Kerja</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/faq_kategori" id="faq_kategori">FAQ Kategori</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/faq" id="faq">FAQ</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/download" id="download">Download</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/gallery" id="gallery">Gallery</a>
                    </li>
                    <li>
                        <a href="<?php echo base_url() ?>admin/konten_statis" id="konten_statis">Konten Statis</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="blank.html">Blank Page</a>
                    </li>
                    <li>
                        <a href="login.html">Login Page</a>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
        </ul>
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->

<script>
	$("#<?php echo strtolower($this->uri->segment(2)) ?>").addClass("active");
</script>