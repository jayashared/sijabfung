<?php
class Pengumuman_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function pengumuman_terbaru($limit)
	{
		$pengumuman = new MY_Model();
		$pengumuman->order_by("id_pengumuman");
		$pengumuman->MY_Model("tbl_pengumuman_view");
		return $pengumuman->get_lastest_data(5);
	}
	
	function daftar_pengumuman()
	{
		$pengumuman = new MY_Model();
		$pengumuman->MY_Model("tbl_pengumuman_view");
		return $pengumuman->get_all_data();
	}
	
	function detail_pengumuman($where = NULL)
	{
		$pengumuman = new MY_Model();
		$pengumuman->MY_Model("tbl_pengumuman_view");
		return $pengumuman->get_data_where($where);
	}
	
	function daftar_pengumuman_per_page($limit=0, $offset=0)
	{
		$pengumuman = new MY_Model();
		$pengumuman->MY_Model("tbl_pengumuman_view");
		$pengumuman->order_by("id_pengumuman desc");
		return $pengumuman->get_per_page_data($limit, $offset);
	}
	
	function count_pengumuman()
	{
		$pengumuman = new MY_Model();
		$pengumuman->MY_Model("tbl_pengumuman_view");
		return $pengumuman->count_all();
	}
	
}