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
			$crud->set_field_upload('gambar','assets/uploads/gambar');
			
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
	
	public function pengumuman()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_pengumuman');
			$crud->set_subject('Pengumuman');
			$crud->set_field_upload('berkas','assets/uploads/berkas');
			
			$crud->required_fields('judul');
			$crud->fields('judul', 'isi_pengumuman', 'berkas');
			$crud->columns('judul', 'isi_pengumuman');;
			
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
	
	public function faq_kategori()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_faq_kategori');
			$crud->set_subject('Kategori FAQ');
			
			$crud->required_fields('kategori');
			$crud->fields('kategori');
			$crud->columns('kategori');
			$crud->order_by('id_faq_kategori','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function faq()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_faq');
			$crud->set_subject('Daftar FAQ');
			$crud->required_fields('pertanyaan', 'jawaban', 'tampilkan');
			$crud->set_relation('id_faq_kategori','tbl_faq_kategori','kategori');
			$crud->display_as('id_faq_kategori','Kategori');
			$crud->fields('pertanyaan', 'jawaban','id_faq_kategori', 'tampilkan');
			$crud->columns('pertanyaan', 'jawaban','id_faq_kategori', 'tampilkan');
			$crud->order_by('id_faq','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function download()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_download_content');
			$crud->set_subject('Daftar Download');
			$crud->set_field_upload('berkas','assets/uploads/berkas');
			$crud->required_fields('judul', 'berkas');
			$crud->fields('judul', 'deskripsi', 'berkas');
			$crud->columns('judul', 'deskripsi');
			$crud->order_by('id_download_content','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	public function gallery()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_gallery');
			$crud->set_subject('Gallery');
			$crud->set_field_upload('gambar','assets/uploads/gambar');
			$crud->required_fields('judul', 'gambar');
			$crud->fields('judul', 'deskripsi', 'gambar');
			$crud->columns('judul', 'deskripsi', 'gambar');
			$crud->order_by('id_gallery','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function konten_statis()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_konten_statis');
			$crud->set_subject('Konten Statis');
			$crud->set_field_upload('gambar','assets/uploads/gambar');
			$crud->required_fields('judul', 'deskripsi');
			$crud->fields('judul', 'deskripsi', 'gambar');
			$crud->columns('judul', 'deskripsi');
			$crud->order_by('id_konten_statis','desc');
			$output = $crud->render();
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
}