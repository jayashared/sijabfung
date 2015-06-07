<?php
class Kegiatan_m  extends MY_Model  {

	var $table = "tbl_kegiatan";

	function __construct()
    {
        parent::__construct();
    }
	
	function daftar_kegiatan($where = NULL)
	{
		if( !empty($where) )
			$this->db->where($where);
		
		$query = $this->db->get("tbl_kegiatan_view");
		return $query->result();
	}
	
	function daftar_kegiatan_transaksi($where = NULL)
	{
		if( !empty($where) )
			$this->db->where($where);
		
		$query = $this->db->get("tbl_kegiatan_transaksi_view");
		
		return $query->result();
	}
	
	function detail_kegiatan_transaksi($where = NULL)
	{
		if( !empty($where) )
			$this->db->where($where);
		
		$query = $this->db->get("tbl_kegiatan_transaksi_view");
		//echo $this->db->last_query();
		return $query->result();
	}
	
	public function insert_kegiatan_transaksi($data=NULL)
	{
		return $this->db->insert("tbl_kegiatan_transaksi", $data);
	}
	
	public function update_kegiatan_transaksi($data=NULL, $where=NULL)
	{
		return $this->db->update("tbl_kegiatan_transaksi", $data, $where);
	}
	
	public function get_angka_kredit($id_kegiatan_butir=NULL)
	{
		$this->db->where(array("id_kegiatan_butir"=>$id_kegiatan_butir));
		$query = $this->db->get("tbl_kegiatan_butir");
		$data = $query->result();
		//echo $this->db->last_query();
		return isset($data[0]->angka_kredit)?$data[0]->angka_kredit:"";
	}
	
	public function detail_kegiatan_butir($where)
	{
		if( !empty($where) )
			$this->db->where($where);
		$query = $this->db->get("tbl_kegiatan_view");
		return $query->result();
	}
	
	public function detail_kegiatan_unsur($where)
	{
		if( !empty($where) )
			$this->db->where($where);
		$query = $this->db->get("tbl_kegiatan_unsur");
		return $query->result();
	}
	
	public function total_angka_kredit($where=NULL)
	{
		$this->db->where($where);
		$this->db->select_sum('angka_kredit');
		$query = $this->db->get('tbl_kegiatan_transaksi_view');
		return $query->result();
	}
	
}