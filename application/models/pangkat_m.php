<?php
class Pangkat_m  extends CI_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar()
	{
		$this->db->order_by("pangkat_golongan asc");
		$query = $this->db->get("tbl_pangkat_gol");
		return $query->result();
	}
	
}