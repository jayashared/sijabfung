<?php
class General_m  extends MY_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_newsticker()
	{
		$berita = new MY_Model();
		$berita->MY_Model("news_ticker_view");
		return $berita->get_all_data();
	}
}