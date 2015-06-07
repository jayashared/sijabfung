<?php
class User_m  extends CI_Model  {

	protected $primary_key = null;
	protected $table_name = null;
	protected $relation = array();
	protected $relation_n_n = array();
	protected $primary_keys = array();

	function __construct()
    {
        parent::__construct();
    }
	
	function select($where=NULL)
	{
		if( !empty($where) )
			$this->db->where($where);
		$this->db->order_by("id_user desc");
		$query = $this->db->get('tbl_user_view');
		return $query->result();
	}
	
	function detail($id_user=NULL)
	{
		if( !empty($id_user) )
			$this->db->where(array("id_user"=>$id_user));
		$query = $this->db->get('tbl_user_view');
		return $query->result();
	}
	
	function detail_atasan_langsung($id_user=NULL)
	{
		if( !empty($id_user) )
			$this->db->where(array("id_user"=>$id_user));
		$query = $this->db->get('tbl_atasan_user_view');
		return $query->result();
	}
	
	function insert_pegawai($data_user=NULL, $data_pegawai=NULL)
	{
		$this->db->trans_start();
		
		// Insert to User
		$this->db->insert("tbl_user", $data_user);
		
		// Get Last ID of User
		$data_pegawai["id_user"] = $this->db->insert_id();
		$this->db->insert("tbl_biodata", $data_pegawai);
		
		return $this->db->trans_complete();
	}
	
	function update_pegawai($data_user=NULL, $data_pegawai=NULL, $where=NULL)
	{
		$this->db->trans_start();
			$this->db->update("tbl_user", $data_user, $where);
			$this->db->update("tbl_biodata", $data_pegawai, $where);
		return $this->db->trans_complete();
	}
	
	function update_user($data=NULL, $where=NULL)
	{
		if( !empty($data) and !empty($where) )
		{
			return $this->db->update("tbl_user", $data, $where);
		}
		else
			return false;
	}
	
	function check_email_exist($email=NULL)
	{
		$this->db->where( array("email"=>$email) );
		$query = $this->db->get("tbl_user");
		return $query->result();
	}
	
	function check_nip_exist($nip=NULL)
	{
		$this->db->where( array("nip"=>$nip) );
		$query = $this->db->get("tbl_biodata");
		return $query->result();
	}
	
	function check_password_exist($where)
	{
		$this->db->where( $where );
		$query = $this->db->get("tbl_user");
		return $query->result();
	}
	
	function insert_atasan_user($data=NULL)
	{
		return $this->db->insert("tbl_atasan_user", $data);
	}
	
	function update_atasan_user($data=NULL, $where=NULL)
	{
		if( !empty($data) and !empty($where) )
		{
			return $this->db->update("tbl_atasan_user", $data, $where);
		} else
		return false;
	}
}