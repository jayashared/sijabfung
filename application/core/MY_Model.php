<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Model extends CI_Model {
	
	var $myTable = "";
	var $orderBy = "";
	
	public function MY_Model($myTable="")
	{
		$this->myTable = $myTable;
	}
	
	public function order_by($order_by)
	{
		$this->orderBy = $order_by;
	}
	
	public function get_all_data()
	{
		$query = $this->db->get($this->myTable);
		return $query->result();
	}
	
	public function get_data_where($where)
	{
		$this->db->where($where);
		$query = $this->db->get($this->myTable);
		return $query->result();
	}
	
	public function get_per_page_data($offset, $limit)
	{
		$this->db->limit($offset, $limit);
		$this->db->order_by($this->orderBy);
		$query = $this->db->get($this->myTable);
		return $query->result();
	}
	
	public function get_lastest_data($limit=3)
	{
		$this->db->limit($limit);
		$query = $this->db->get($this->myTable);
		return $query->result();
	}
}