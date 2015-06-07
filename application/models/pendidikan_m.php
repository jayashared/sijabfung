<?php
class Pendidikan_m  extends CI_Model  {

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar()
	{
		$this->db->order_by("no_urut asc");
		$query = $this->db->get("tbl_pendidikan");
		return $query->result();
	}
	
}