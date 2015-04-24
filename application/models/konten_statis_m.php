<?php
class Konten_statis_m  extends CI_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function konten_statis($where=NULL)
	{
		$konten = new MY_Model();
		$konten->MY_Model("tbl_konten_statis");
		return $konten->get_data_where($where);
	}
}