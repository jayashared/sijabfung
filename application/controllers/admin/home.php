<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
	
	public function index()
	{
		$data["konten"] = "admin/home.php";
		$this->load->view("admin/index.php", $data);
	}
}