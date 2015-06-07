<?php
class Wilayah_m  extends CI_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_wilayah()
	{
		$this->db->order_by("wilayah asc");
		$query = $this->db->get("tbl_wilayah");
		return $query->result();
	}
	
}