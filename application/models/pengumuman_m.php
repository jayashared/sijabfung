<?php
class Pengumuman_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function pengumuman_terbaru($limit)
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_pengumuman_view");
		return $berita->get_lastest_data(5);
	}
	
}