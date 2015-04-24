<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	var $data = array();

	public function __construct()
	{
		parent::__construct();
		$member_in = $this->_is_member_in();

		if( empty($member_in) )
		{
			$message = '<div class="alert alert-danger" role="alert"><strong>Peringatan!</strong> Akses ditolak </div>';
			$this->session->set_flashdata('pesan', $message);
			redirect("login");
		}
		
		$sitemap = $this->admin_sitemap();
		$data = array(
			"sitemap"=>$sitemap
		);
		
		$this->data = $data;
	}
	
	public function _is_member_in()
	{
		return $this->session->userdata("member_in");
	}
	
	function get_change_by_callback($post_array) {
		$member_in = $this->_is_member_in();
		
		$post_array['change_by'] = $member_in["id_user"];
		return $post_array;
	}
	
	public function format_date_callback($date)
	{
		
		if(!empty($date))
		{
			$arr_date_time = explode(" ", $date);
			$arr_date = explode("-", $arr_date_time[0]);
			$time = isset($arr_date_time[1])?$arr_date_time[1]:"";
			$date = $arr_date[2] . "/" . $arr_date[1] . "/" . $arr_date[0] . " " . $time; 
		}
		else
		{
			$date = "";
		}
		return $date;
	}
	
	public function admin_sitemap()
	{
		$this->load->model("Sitemap_m");
		$sitemap = $this->Sitemap_m->daftar_sitemap_admin(array("level_sitemap"=>"2"));
		foreach( $sitemap as $row )
		{
			$id_parent = $row->id_sitemap;
			$where = array("id_parent"=>$id_parent, "level_sitemap"=>"3");
			$row->sub_sitemap = $this->Sitemap_m->daftar_sitemap_admin($where);
		}
		
		return $sitemap;
	}
	
	public function get_sitemap()
	{
		return $this->data;
	}
	
	public function index()
	{
		$this->berita();
	}
	
	public function berita()
	{	
		
		try{
			$crud = new grocery_CRUD();
			$crud->set_table('tbl_berita');
			$crud->set_subject('Berita');
			$crud->set_relation('change_by','tbl_user','email');
			$crud->set_field_upload('gambar','assets/uploads/gambar');
			
			$crud->required_fields('tanggal_berita', 'judul', 'berita_singkat', 'berita_penuh');
			
			$crud->add_fields('tanggal_berita', 'judul', 'berita_singkat', 'berita_penuh', 'gambar', 'change_by', 'change_date');
			$crud->edit_fields('tanggal_berita', 'judul', 'berita_singkat', 'berita_penuh', 'gambar', 'change_by', 'change_date');
			$crud->display_as('berita_singkat','Headline')
				 ->display_as('berita_penuh','Isi Berita')
				 ->display_as('change_by', 'Input / Edit oleh')
				 ->display_as('change_date', 'Input / Edit Tanggal')
				 ;
			$crud->columns('tanggal_berita', 'judul', 'berita_singkat', 'change_by');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->order_by('id_berita','desc');
			$crud->unset_read();
			
			$sitemap = $this->get_sitemap();
			//print_r($data); exit;
			$output = $crud->render($sitemap);
			$this->load->view('admin/themes/default', $output);

		} catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function pengumuman()
	{
		try{
			
			$crud = new grocery_CRUD();
			$crud->set_table('tbl_pengumuman');
			$crud->set_subject('Pengumuman');
			
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->set_field_upload('berkas','assets/uploads/berkas');
			
			$crud->required_fields('judul', 'tanggal_pengumuman', 'isi_pengumuman');
			
			$crud->add_fields('judul', 'tanggal_pengumuman', 'isi_pengumuman', 'berkas', 'change_by', 'change_date');
			$crud->edit_fields('judul', 'tanggal_pengumuman', 'isi_pengumuman', 'berkas', 'change_by', 'change_date');
			$crud->display_as('change_by', 'Input / Edit oleh')
				 ->display_as('change_date', 'Input / Edit Tanggal')
				 ;
				 
			$crud->columns('tanggal_pengumuman', 'judul', 'isi_pengumuman', 'change_by');;
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			$crud->unset_read();
			$crud->order_by('id_pengumuman','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
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
			
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->required_fields('title', 'url');
			$crud->add_fields('title', 'url', 'change_by', 'change_date');
			$crud->edit_fields('title', 'url', 'change_by', 'change_date');
			$crud->display_as('title','Judul Link')->display_as('url','URL');
			
			$crud->columns('title', 'url', 'change_by');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			$crud->unset_read();
			$crud->order_by('id_link','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
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
			
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->required_fields('kategori');
			$crud->add_fields('kategori', 'change_by', 'change_date');
			$crud->edit_fields('kategori', 'change_by', 'change_date');
			
			$crud->columns('kategori', 'change_by');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			
			$crud->order_by('id_faq_kategori','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function daftar_faq()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_faq');
			$crud->set_relation('id_faq_kategori','tbl_faq_kategori','kategori');
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->set_subject('Daftar FAQ');
			
			$crud->required_fields('id_faq_kategori', 'pertanyaan', 'jawaban', 'tampilkan');
			$crud->display_as('id_faq_kategori','Kategori');
			$crud->add_fields('id_faq_kategori', 'pertanyaan', 'jawaban', 'tampilkan', 'change_by', 'change_date');
			$crud->edit_fields('id_faq_kategori', 'pertanyaan', 'jawaban', 'tampilkan', 'change_by', 'change_date');
			
			$crud->columns('pertanyaan', 'id_faq_kategori', 'tampilkan', 'change_by');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			
			$crud->order_by('id_faq','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function referensi_kategori()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_download_kategori');
			$crud->set_subject('Kategori Referensi');
			
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->required_fields('download_kategori');
			$crud->add_fields('download_kategori', 'change_by', 'change_date');
			$crud->edit_fields('download_kategori', 'change_by', 'change_date');
			
			$crud->columns('download_kategori', 'change_by');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			
			$crud->order_by('id_download_kategori','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function referensi()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_download');
			$crud->set_relation('id_download_kategori','tbl_download_kategori','download_kategori');
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->set_subject('Daftar Download');
			
			$crud->set_field_upload('berkas','assets/uploads/berkas');
			
			$crud->required_fields('id_download_kategori', 'judul', 'berkas');
			
			$crud->add_fields('id_download_kategori', 'judul', 'deskripsi', 'berkas', 'change_by', 'change_date');
			$crud->edit_fields('id_download_kategori', 'judul', 'deskripsi', 'berkas', 'change_by', 'change_date');
			$crud->display_as("id_download_kategori", "Kategori");
			$crud->columns('judul', 'deskripsi', 'change_by');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$crud->order_by('id_download','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	public function gallery()
	{
		$id_gallery_kategori = $this->uri->segment(3);
		try{
			$crud = new grocery_CRUD();

			$crud->where("tbl_gallery.id_gallery_kategori", $id_gallery_kategori);
			$crud->set_table('tbl_gallery');
			
			$crud->set_subject('Gallery');
			$crud->set_relation('change_by','tbl_user','email');
			$crud->set_relation('id_gallery_kategori', 'tbl_gallery_kategori', 'gallery_kategori');
			$crud->display_as('id_gallery_kategori','Kategori');
			$crud->set_field_upload('gambar','assets/uploads/gambar');
			$crud->required_fields('judul', 'gambar');
			
			
			$crud->fields('judul', 'deskripsi', 'gambar', 'id_gallery_kategori', 'change_by', 'change_date');
			$crud->columns('id_gallery_kategori', 'judul', 'deskripsi', 'gambar', 'change_by', 'change_date');
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			$crud->unset_read();
			$crud->order_by('id_gallery','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function gallery_kategori()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_gallery_kategori');
			$crud->set_subject('Gallery');
			$crud->set_relation('change_by','tbl_user','email');
			$crud->required_fields('gallery_kategori');
			$crud->add_fields('gallery_kategori', 'change_by', 'change_date');
			$crud->edit_fields('gallery_kategori', 'change_by', 'change_date');
			$crud->columns('gallery_kategori', 'change_by', 'change_date');
			$crud->callback_column('change_date',array($this,'format_date_callback'));
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$crud->add_action('Unggah gambar', '', 'admin/gallery', 'ui-icon-plus');
			$crud->order_by('id_gallery_kategori','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
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
			//$crud->change_field_type('judul', 'readonly');
			$crud->order_by('id_konten_statis','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function sitemap()
	{
		try{
			$crud = new grocery_CRUD();

			$state = $crud->getState();

			$crud->set_table('tbl_sitemap');
			$crud->set_subject('Sitemap');
			if($state == 'edit' or $state == 'add')
			{
				  $crud->set_relation('id_parent', 'tbl_sitemap', 'deskripsi');
			}

			$crud->set_relation_n_n('Users', 'tbl_sitemap_user', 'tbl_user_kategori', 'id_sitemap', 'id_user_kategori', 'user_kategori');
			//$crud->display_as('id_user_kategori','Kategori User');
			$crud->required_fields('id_parent', 'no_sitemap', 'kategori_modul', 'no_urut');
			$crud->unique_fields('no_sitemap');
			$crud->fields('Users', 'id_parent', 'no_sitemap', 'sitemap', 'deskripsi', 'judul', 'icon', 'url', 'no_urut');
			$crud->columns('no_sitemap', 'sitemap', 'judul', 'no_urut');
			$crud->order_by('no_sitemap','asc');
			
			$crud->unset_read();
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function biodata()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_biodata');
			$crud->set_subject('Biodata');
			$crud->set_relation('id_parent', 'tbl_sitemap', 'deskripsi');

			$crud->set_relation_n_n('Users', 'tbl_sitemap_user', 'tbl_user_kategori', 'id_sitemap', 'id_user_kategori', 'user_kategori');
			//$crud->display_as('id_user_kategori','Kategori User');
			$crud->required_fields('Users', 'id_parent', 'no_sitemap', 'kategori_modul', 'no_urut');
			$crud->unique_fields('no_sitemap');
			$crud->fields('Users', 'id_parent', 'no_sitemap', 'sitemap', 'judul', 'icon', 'url', 'no_urut');
			$crud->columns('no_sitemap', 'sitemap', 'judul', 'no_urut');
			$crud->order_by('no_sitemap','asc');
			
			$crud->unset_read();
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
}