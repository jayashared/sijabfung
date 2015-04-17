<?php
class Download_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_download($where)
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_download");
		return $berita->get_data_where($where);
	}
	
	function daftar_download_kategori()
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_download_kategori");
		return $berita->get_all_data();
	}
	
}