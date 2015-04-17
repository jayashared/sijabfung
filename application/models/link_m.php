<?php
class Link_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_link()
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_link");
		return $berita->get_all_data();
	}
	
}