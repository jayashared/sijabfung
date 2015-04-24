<?php
class Sitemap_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_sitemap_frontend()
	{
		$sitemap = new MY_Model();
		$sitemap->MY_Model("tbl_sitemap_frontend_view");
		$sitemap->order_by("no_urut asc");
		return $sitemap->get_all_data();
	}
	
	function daftar_sitemap_admin($where="")
	{
		$sitemap = new MY_Model();
		$sitemap->MY_Model("tbl_sitemap_admin_view");
		$sitemap->order_by("no_sitemap, no_urut");
		//print_r($where);
		return $sitemap->get_data_where($where);
		
	}
	
}