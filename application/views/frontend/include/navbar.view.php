<?php
	$sitemap = isset($sitemap)?$sitemap:"";
?>
<ul class="nav navbar-nav">
    <?php
    	foreach( $sitemap as $rs )
		{
	?>
            <li id="<?php echo $rs->sitemap ?>">
                <a href="<?php echo base_url() . "frontend/" .$rs->url ?>">
                    <?php echo $rs->judul ?>
                </a>
            </li>
    <?php
		}
	?>
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


<?php
	$id = str_replace('_detail', '', $this->uri->segment(2));
	$id2 = $this->uri->segment(3);
?>
<script>
	$(document).ready(function(e) {
        $("#<?php echo !empty($id)?$id:"home"; ?>").addClass("active");
		$("#<?php echo !empty($id)?$id2:"home"; ?>").addClass("active");
    });
</script>