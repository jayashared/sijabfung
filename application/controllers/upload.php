<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Upload extends CI_Controller {
	
	public function upload_form()
	{
		$this->load->view("template/uploadform.view.php");
	}
	
	function do_upload()
	{
		$config['upload_path'] = './assets/uploads/berkas/';
		$config['allowed_types'] = '*';
		//$config['max_size']	= '100';
		//$config['max_width']  = '1024';
		//$config['max_height']  = '768';

		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload())
		{
			$error = array('error' => $this->upload->display_errors());
			print_r($error);
			//$this->load->view('upload_form', $error);
		}
		else
		{
			$data = $this->upload->data();
			echo json_encode($data);
			
			//$this->load->view('upload_success', $data);
		}
	}
	
	
	public function deleteImage($file)//gets the job done but you might want to add error checking and security
	{
		$output_dir = "uploads/";
		$op = $this->input->post("op");
		$name = $this->input->post('name');
		if( isset($op) && $op == "delete" && isset($name) )
		{
			$fileName = $name;
			$filePath = $output_dir. $fileName;
			if (file_exists($filePath)) 
			{
				unlink($filePath);
			}
		}
	}
	
	
}