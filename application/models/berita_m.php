<?php
class Berita_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function berita_terbaru($limit)
	{
		$berita = new MY_Model();
		$berita->order_by("tanggal_berita desc");
		$berita->MY_Model("tbl_berita_view");
		return $berita->get_lastest_data(5);
	}
	
	function daftar_berita()
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_berita_view");
		return $berita->get_all_data();
	}
	
	function detail_berita($where = NULL)
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_berita_view");
		return $berita->get_data_where($where);
	}
	
	function daftar_berita_per_page($limit=0, $offset=0)
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_berita_view");
		$berita->order_by("id_berita desc");
		return $berita->get_per_page_data($limit, $offset);
	}
	
	function count_berita()
	{
		$berita = new MY_Model();
		$berita->MY_Model("tbl_berita_view");
		return $berita->count_all();
	}
	
}