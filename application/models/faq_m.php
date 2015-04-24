<?php
class Faq_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_faq_kategori()
	{
		$kategori = new MY_model();
		$kategori->MY_Model("tbl_faq_kategori");
		return $kategori->get_all_data();
	}
	
	function daftar_faq($where)
	{
		$faq = new MY_model();
		$faq->MY_Model("tbl_faq");
		return $faq->get_data_where($where);
	}
	
}