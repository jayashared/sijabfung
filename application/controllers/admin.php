<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
	}
	
	public function berita()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_berita');
			$crud->set_subject('Berita');
			$crud->set_field_upload('gambar','assets/uploads/files');
			
			$crud->required_fields('judul', 'berita_singkat', 'berita_penuh');
			$crud->fields('judul', 'berita_singkat', 'berita_penuh', 'gambar');
			$crud->display_as('berita_singkat','Headline')->display_as('berita_penuh','Isi Berita');
			$crud->columns('judul','berita_singkat','berita_penuh');
			
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function link()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_link');
			$crud->set_subject('Link Terkait');
			
			$crud->required_fields('title', 'url');
			$crud->fields('title', 'url');
			$crud->display_as('title','Judul Link')->display_as('url','URL');
			$crud->columns('title', 'url');
			$crud->order_by('id_link','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function unit_kerja()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_unitkerja');
			$crud->set_subject('Daftar Unit Kerja');
			$crud->required_fields('name', 'kode_institusi');
			$crud->fields('name', 'kode_institusi', 'kepala_nama', 'kepala_nip', 'kepala_pangkat', 'id_jabatan', 'status');
			$crud->set_relation('id_jabatan','tbl_jabatan','jabatan');
			$crud->display_as('kepala_nama','Nama Kepala')
				 ->display_as('kepala_nip','NIP Kepala')
				 ->display_as('kepala_pangkat','Pangkat Kepala')
				 ->display_as('kepala_jabatan','Jabatan Kepala')
				 ->display_as('id_jabatan','Pangkat/Jabatan')
				 ;
			$crud->columns('name','kode_institusi','kepala_nama', 'kepala_nip', 'kepala_pangkat', 'kepala_jabatan');
			$crud->order_by('id_unit_kerja','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function ulp()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_ulp');
			$crud->set_subject('Daftar ULP');
			$crud->required_fields('nama_ulp', 'id_unit_kerja');
			$crud->set_relation('id_unit_kerja','tbl_unitkerja','name');
			$crud->fields('nama_ulp', 'id_unit_kerja', 'kepala_nip', 'kepala_pangkat', 'kepala_nama');
			$crud->display_as('kepala_nama','Nama Kepala')
				 ->display_as('kepala_nip','NIP Kepala')
				 ->display_as('kepala_pangkat','Pangkat Kepala')
				 ->display_as('kepala_jabatan','Jabatan Kepala')
				 ->display_as('id_jabatan','Pangkat/Jabatan')
				 ->display_as('id_unit_kerja','Unit Kerja')
				 ;
			$crud->columns('nama_ulp','id_unit_kerja', 'kepala_nama', 'kepala_nip', 'kepala_pangkat', 'kepala_jabatan');
			$crud->order_by('id_unit_kerja','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
}