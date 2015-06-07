<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	var $data = array();

	public function __construct()
	{
		parent::__construct();
		
		
		$timezone = @date_default_timezone_get();
        if (!isset($timezone) || $timezone == '') {
            $timezone = @ini_get('date.timezone');
        }
        if (!isset($timezone) || $timezone == '') {
            $timezone = 'UTC';
        }
        date_default_timezone_set($timezone); 
		
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
	
	function get_user_login() {
		$member_in = $this->_is_member_in();
		return $member_in["id_user"];
	}
	
	function get_user_kategori() {
		$member_in = $this->_is_member_in();
		return $member_in["user_kategori"];
	}
	
	function get_admin_wilayah() {
		$this->load->model("user_m");
		$d = $this->user_m->detail($this->get_user_login());
		$id_wilayah = isset($d[0]->id_wilayah)?$d[0]->id_wilayah:"";
		return $id_wilayah;
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
		
		$sess_login = $this->session->userdata("member_in");
		$user_kategori = $sess_login["user_kategori"];
		//echo $user_kategori;
		$sitemap = $this->Sitemap_m->daftar_sitemap_admin(array("user_kategori"=>$user_kategori, "level_sitemap"=>2));
		foreach( $sitemap as $row )
		{
			$id_parent = $row->id_sitemap;
			$where = array("id_parent"=>$id_parent);
			$row->sub_sitemap = $this->Sitemap_m->daftar_sitemap_admin($where);
		}
		//echo "<pre>";
		//print_r($sitemap); exit;
		return $sitemap;
	}
	
	public function get_sitemap()
	{
		return $this->data;
	}
	
	public function ganti_password()
	{
		try{
			$konten = "admin/konten/user/ganti-password-form.view.php";
			$data["konten"] = $konten;
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function ganti_password_proses()
	{
		try{
			$this->load->model("user_m");
			
			
			$password = $this->input->post("password");
			$id_user = $this->get_user_login();
			
			$data = array("password"=>hash('sha256', $password));
			$where = array("id_user"=>$id_user);
			
			$result = $this->user_m->update_user($data, $where);
			
			if( $result )
			{
				$pesan = "<b>Berhasil!</b> Proses pendaftaran berhasil. Silahkan menunggu proses verifikasi 
						oleh Administrator kami paling lambat 7 x 24 Jam";
				$this->session->set_flashdata('pesan', $this->get_alert("success", $pesan));
			}
			else
			{
				$pesan = "<b>Gagal!</b> Proses pendaftaran gagal. Silahkan mencoba kembali atau hubungi Administrator kami";
				$this->session->set_flashdata('pesan', $this->get_alert("fail"));
			}
			
			redirect("admin/ganti_password");
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function check_password_lama()
	{
		try{
			$this->load->model("user_m");
			$password = $this->input->post("password_lama");
			$id_user = $this->get_user_login();
			
			$where = array(
				"id_user"=>$id_user,
				"password"=>hash('sha256', $password)
			);
			
			if($this->user_m->check_password_exist($where))
			{
				echo "true";
			}
			else
			{
				echo "false";
			}
		}catch(Exception $e){
			echo "false";
		}
	}
	
	public function biodata_form()
	{
		try{
			
			$this->load->model("user_m");
			$this->load->model("wilayah_m");
			$this->load->model("jenjang_jabfung_m");
			$this->load->model("pendidikan_m");
			$this->load->model("ruang_golongan_m");
			
			$user = $this->user_m->detail($this->get_user_login());
			
			
			$data["golongan"] = $this->ruang_golongan_m->daftar();
			$data["jenjang"] = $this->jenjang_jabfung_m->daftar();
			$data["pendidikan"] = $this->pendidikan_m->daftar();
			$data["wilayah"] = $this->wilayah_m->daftar_wilayah();
			$data["user"] = $user;
			$konten = "admin/konten/user/biodata-form.view.php";
			$data["konten"] = $konten;
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function biodata_proses()
	{
		$this->load->model("user_m");
		
		$id_wilayah = $this->input->post("id_wilayah");
		$nip = $this->input->post("nip");
		$nama = $this->input->post("nama");
		$jenis_kelamin = $this->input->post("jenis_kelamin");
		$karpeg = $this->input->post("karpeg");
		$unit_kerja = $this->input->post("unit_kerja");
		$unit_kerja_telp = $this->input->post("unit_kerja_telp");
		$pendidikan_gelar = $this->input->post("pendidikan_gelar");
		$tempat_lahir = $this->input->post("tempat_lahir");
		$tanggal_lahir = $this->input->post("tanggal_lahir");
		$arr_tgl_lahir = explode("/", $tanggal_lahir);
		$tanggal_lahir = $arr_tgl_lahir[2] . "-" . $arr_tgl_lahir[1] . "-" . $arr_tgl_lahir[0];
		
		$ruang_golongan = $this->input->post("ruang_golongan");
		$jabatan = $this->input->post("jabatan");
		$jenjang_jabfung = $this->input->post("jenjang_jabfung");
		$no_hp = $this->input->post("no_hp");
		$no_sk_jabfung = $this->input->post("no_sk_jabfung");
		$sk_jabfung = $this->input->post("sk_jabfung");
		$change_by = $this->get_user_login();
		
		$email = $this->input->post("email");
		$karpeg = $this->input->post("karpeg");
		
		
		$datau = array(
			"email"=>$email
		);
		
		$datap = array(
			"id_wilayah"=>$id_wilayah,
			"nip"=>$nip,
			"nama"=>$nama,
			"jenis_kelamin"=>$jenis_kelamin,
			"karpeg"=>$karpeg,
			"unit_kerja"=>$unit_kerja,
			"unit_kerja_telp"=>$unit_kerja_telp,
			"pendidikan_gelar"=>$pendidikan_gelar,
			"tempat_lahir"=>$tempat_lahir,
			"tanggal_lahir"=>$tanggal_lahir,
			"ruang_golongan"=>$ruang_golongan,
			"jabatan"=>$jabatan,
			"jenjang_jabfung"=>$jenjang_jabfung,
			"no_hp"=>$no_hp,
			"no_sk_jabfung"=>$no_sk_jabfung,
			"sk_jabfung"=>$sk_jabfung,
			"karpeg"=>$karpeg,
			"change_by"=>$change_by
		);
		
		//print_r($datap);
		//exit;
		
		$where = array("id_user"=>$this->get_user_login());
		
		$result = $this->user_m->update_pegawai($datau, $datap, $where);
		
		if( $result )
		{
		}
		else
		{
		}
		
		redirect("admin/biodata_form");
	}
	
	public function atasan_langsung()
	{
		try{
			
			$this->load->model("user_m");
			$this->load->model("pangkat_m");
			
			$atasan_langsung = $this->user_m->detail_atasan_langsung($this->get_user_login());
			
			$data["pangkat"] = $this->pangkat_m->daftar();
			$data["atasan_langsung"] = $atasan_langsung;
			$konten = "admin/konten/user/atasan-langsung-form.view.php";
			$data["konten"] = $konten;
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function atasan_langsung_proses()
	{
		$this->load->model("user_m");
		
		$id_atasan_user = $this->input->post("id_atasan_user");
		$nama = $this->input->post("nama");
		$nip = $this->input->post("nip");
		$pangkat_golongan = $this->input->post("pangkat_golongan");
		$jabatan = $this->input->post("jabatan");
		$unit_kerja = $this->input->post("unit_kerja");
		$id_user = $this->get_user_login();
		
		$data = array(
			"id_user"=>$id_user,
			"nama"=>$nama,
			"nip"=>$nip,
			"pangkat_golongan"=>$pangkat_golongan,
			"jabatan"=>$jabatan,
			"unit_kerja"=>$unit_kerja
		);
		
		$where = array("id_atasan_user"=>$id_atasan_user);
		
		if( !empty( $id_atasan_user ) )
		{
			$result = $this->user_m->update_atasan_user($data, $where);
		}
		else
		{
			$result = $this->user_m->insert_atasan_user($data);
		}
		
		if( $result )
		{
			$pesan = "<b>Berhasil!</b> Proses penyimpanan berhasil.";
			$this->session->set_flashdata('pesan', $this->get_alert("success", $pesan));
		}
		else
		{
			$pesan = "<b>Gagal!</b> Proses penyimpanan gagal.";
			$this->session->set_flashdata('pesan', $this->get_alert("fail"));
		}
		
		redirect("admin/atasan_langsung");
	}
	
	public function index()
	{
		try{
			$this->load->model("kegiatan_m");
			$this->load->model("user_m");
			
			$user_kategori = $this->get_user_kategori();

			if( $user_kategori == "sadmin" )
			{
				$konten = "admin/konten/dashboard/dashboard-admin.view.php";
			}elseif( $user_kategori == "admin" ){
				$konten = "admin/konten/dashboard/dashboard-admin.view.php";
			}elseif( $user_kategori == "pegawai" )
			{
				$data["user"] = $this->user_m->detail($this->get_user_login());
				$konten = "admin/konten/dashboard/dashboard-pegawai.view.php";
			}
			elseif( $user_kategori == "penilai" ){
				$konten = "admin/konten/dashboard/dashboard-penilai.view.php";
			}elseif( $user_kategori == "penguji" ){
				$konten = "admin/konten/dashboard/dashboard-penguji.view.php";
			}else{
				$konten = "admin/konten/dashboard/dashboard-admin.view.php";
			}
			
			$data["konten"] = $konten;
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function get_alert($info)
	{
		if( $info == "success" )
		return '<div class="alert alert-success" role="alert"><b>Berhasil!</b> Data telah tersimpan</div>';
		else
		return '<div class="alert alert-danger" role="alert"><b>Gagal!</b> Data tidak tersimpan</div>';
	}
	
	///
	
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
			$crud->set_subject('Kategori');
			
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
	
	public function daftar_referensi()
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
	
	
	public function daftar_gallery()
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
	
	public function wilayah()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_wilayah');
			$crud->set_subject('Wilayah');
			$crud->set_relation('change_by','tbl_user','email');
			
			$crud->required_fields('wilayah');
			$crud->unique_fields('wilayah');
			
			$crud->add_fields('wilayah', 'keterangan', 'change_by', 'change_date');
			$crud->edit_fields('wilayah', 'keterangan', 'change_by', 'change_date');
			$crud->columns('wilayah', 'change_by', 'change_date');
			$crud->callback_column('change_date',array($this,'format_date_callback'));
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$crud->order_by('id_wilayah','desc');
			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function tanggal_merah()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_table('tbl_tanggal_merah');
			$crud->set_subject('Tanggal Merah');
			
			$crud->required_fields('tanggal_merah');
			$crud->unique_fields('tanggal_merah');
			
			$crud->fields('tanggal_merah', 'keterangan');
			$crud->columns('tanggal_merah', 'keterangan');
			
			$crud->unset_read();
			$crud->order_by('tanggal_merah', 'asc');
			
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

			$crud->set_relation_n_n('Users', 'tbl_sitemap_user', 'tbl_user_kategori', 'id_sitemap', 'id_user_kategori', 'user_description');
			//$crud->display_as('id_user_kategori','Kategori User');
			$crud->required_fields('no_sitemap', 'kategori_modul', 'no_urut');
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
	
	/*public function biodata()
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
	}*/
	
	
	public function kegiatan_unsur()
	{
		try{
			$crud = new grocery_CRUD();
			
			$state = $crud->getState();
			
			$crud->set_table('tbl_kegiatan_unsur');
			$crud->set_subject('Unsur Kegiatan');
			
			$crud->set_relation('change_by','tbl_user','email');

			$crud->required_fields('unsur');
			$crud->unique_fields('unsur');
						
			$crud->order_by('unsur','asc');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function kegiatan_subunsur()
	{
		try{
			$crud = new grocery_CRUD();
			
			$state = $crud->getState();
			
			$crud->set_table('tbl_kegiatan_subunsur');
			$crud->set_subject('Subunsur Kegiatan');
			
			$crud->set_relation('change_by', 'tbl_user', 'email');
			$crud->set_relation('id_kegiatan_unsur', 'tbl_kegiatan_unsur', 'unsur');

			$crud->required_fields('subunsur');
			$crud->unique_fields('subunsur');
					
			$crud->display_as('id_kegiatan_unsur', 'Unsur');
						
			$crud->order_by('subunsur','asc');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function kegiatan_butir()
	{
		try{
			$crud = new grocery_CRUD();
			
			$state = $crud->getState();
			
			$crud->set_table('tbl_kegiatan_butir');
			$crud->set_subject('Butir Kegiatan');
			
			$crud->set_relation('change_by','tbl_user','email');
			$crud->set_relation('id_kegiatan_subunsur','tbl_kegiatan_subunsur', 'subunsur');

			$crud->required_fields('id_kegiatan_subunsur', 'butir', 'angka_kredit', 'satuan_hasil', '');
			$crud->unique_fields('butir');
					
			$crud->display_as('id_kegiatan_subunsur', 'Sub Unsur');
						
			$crud->order_by('butir','asc');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function kegiatan()
	{
		try{
			$crud = new grocery_CRUD();
			
			$state = $crud->getState();
			
			$crud->set_table('tbl_kegiatan');
			$crud->set_subject('Kegiatan');
		
			if($state == 'edit' or $state == 'add')
			{
				 $crud->set_relation('id_parent', 'tbl_kegiatan', 'butir_kegiatan');
			}
			$crud->set_relation('change_by','tbl_user','email');
			$crud->set_relation_n_n('Pelaksana', 'tbl_kegiatan_jenjang', 'tbl_jenjang', 'id_kegiatan', 'id_jenjang', 'jenjang');
			

			$crud->required_fields('butir_kegiatan');
			$crud->unique_fields('butir_kegiatan', 'no');
			$crud->fields('id_parent', 'no', 'butir_kegiatan', 'angka_kredit', 'satuan_hasil', 'Pelaksana');
			$crud->columns('no', 'butir_kegiatan', 'angka_kredit', 'satuan_hasil');
			
			$crud->display_as("id_parent", "Kegiatan")->display_as("no", "No Kegiatan");
			
			$crud->order_by('no','asc');
			
			$crud->callback_before_update(array($this,'get_change_by_callback'));
			$crud->callback_before_insert(array($this,'get_change_by_callback'));
			$crud->callback_field('change_date',array($this,'format_date_callback'));
			$crud->change_field_type('change_by','readonly');
			$crud->change_field_type('change_date','readonly');
			
			$crud->unset_read();
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function daftar_user($where=NULL)
	{
		try{
			$this->load->model("user_m");
			$user = $this->user_m->select($where);
			return $user;
		}catch(Exception $e){
			return NULL;
		}
	}
	
	public function pegawai()
	{
		try{
			
			$user_kategori = $this->get_user_kategori();
			$id_wilayah = $this->get_admin_wilayah();
			
			
			if( $user_kategori == "sadmin" )
				$data["user"] = $this->daftar_user(array("id_kategori_user"=>3));
			elseif( $user_kategori == "admin" )
				$data["user"] = $this->daftar_user(array("id_kategori_user"=>3, "id_wilayah"=>$id_wilayah));
			else
				$data["user"] = NULL;
			
			$data["konten"] = "admin/konten/user/daftar-user-list.view.php";
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function aktifkan_user($id_user=NULL)
	{
		$this->load->model("user_m");
		$this->load->model("email_m");
		
		$data = array("status"=>"aktif");
		$where = array("id_user"=>$id_user);
		
		$result = $this->user_m->update_user($data, $where);
		
		// Kirim Email
		// Configuration
		$dc = $this->email_m->get_config();
		$r = isset( $dc[0] )?$dc[0]:"";
		
		if( isset($r->protocol) and !empty($r->protocol))
			$config['protocol'] = $r->protocol;
		if( isset($r->mailpath) and !empty($r->mailpath))
			$config['mailpath'] = $r->mailpath;
		if( isset($r->charset) and !empty($r->charset))
			$config['charset'] = $r->charset;
		if( isset($r->wordwrap) and !empty($r->wordwrap))
			$config['wordwrap'] = strtoupper($r->wordwrap)=="TRUE"?TRUE:FALSE;
		if( isset($r->useragent) and !empty($r->useragent))
			$config['useragent'] = $r->useragent;
		if( isset($r->smtp_host) and !empty($r->smtp_host))	
			$config['smtp_host'] = $r->smtp_host;
		if( isset($r->smtp_user) and !empty($r->smtp_user))
			$config['smtp_user'] = $r->smtp_user;
		$config['smtp_pass'] = 'YOURPASSWORDHERE';
		$config['smtp_port'] = 465; 
		$config['smtp_timeout'] = 5;
		
		
		$this->email->initialize($config);
		
		
		
		if( $result )
		{
			$pesan = "<b>Berhasil!</b> Proses pendaftaran berhasil. Silahkan menunggu proses verifikasi 
					oleh Administrator kami paling lambat 7 x 24 Jam";
			$this->session->set_flashdata('pesan', $this->get_alert("success", $pesan));
		}
		else
		{
			$pesan = "<b>Gagal!</b> Proses pendaftaran gagal. Silahkan mencoba kembali atau hubungi Administrator kami";
			$this->session->set_flashdata('pesan', $this->get_alert("fail"));
		}
		
		redirect("admin/pegawai");
	}
	
	public function nonaktifkan_user($id_user=NULL)
	{
		$this->load->model("user_m");
		$data = array("status"=>"non-aktif");
		$where = array("id_user"=>$id_user);
		
		$result = $this->user_m->update_user($data, $where);
		if( $result )
		{
			$pesan = "<b>Berhasil!</b> Proses pendaftaran berhasil. Silahkan menunggu proses verifikasi 
					oleh Administrator kami paling lambat 7 x 24 Jam";
			$this->session->set_flashdata('pesan', $this->get_alert("success", $pesan));
		}
		else
		{
			$pesan = "<b>Gagal!</b> Proses pendaftaran gagal. Silahkan mencoba kembali atau hubungi Administrator kami";
			$this->session->set_flashdata('pesan', $this->get_alert("fail"));
		}
		redirect("admin/pegawai");
	}
	
	// Pegawai
	public function daftar_kegiatan()
	{
		try{
			$this->load->model("kegiatan_m");
			
			$id_unsur = $this->uri->segment(3);
			$kegiatan = $this->kegiatan_m->detail_kegiatan_unsur(array("id_kegiatan_unsur"=>$id_unsur));
			$unsur = isset($kegiatan[0]->unsur)?$kegiatan[0]->unsur:"";
			
			$data["unsur"] = $unsur;
			$data["kegiatan"] 	= $this->kegiatan_m->daftar_kegiatan(array("id_kegiatan_unsur"=>$id_unsur));
			$data["konten"] 	= "admin/konten/input_kegiatan/kegiatan-list.view.php";
			$data["sitemap"] 	= $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function daftar_kegiatan_transaksi()
	{
		try{
			$this->load->model("kegiatan_m");
			
			$id_kegiatan_butir = $this->uri->segment(4);			
			$kegiatan_butir = $this->kegiatan_m->detail_kegiatan_butir(array("id_kegiatan_butir"=>$id_kegiatan_butir));
			$unsur = isset($kegiatan_butir[0]->unsur)?$kegiatan_butir[0]->unsur:"";
			$subunsur = isset($kegiatan_butir[0]->subunsur)?$kegiatan_butir[0]->subunsur:"";
			$butir = isset($kegiatan_butir[0]->butir)?$kegiatan_butir[0]->butir:"";
			
			$where = array(
					"id_kegiatan_butir"=>$id_kegiatan_butir,
					"id_user"=>$this->get_user_login()
			);
			
			$data["unsur"] = $unsur;
			$data["subunsur"] = $subunsur;
			$data["butir"] = $butir;
			$data["kegiatan"] = $this->kegiatan_m->daftar_kegiatan_transaksi($where);
			$data["konten"] = "admin/konten/input_kegiatan/kegiatan-butir-list.view.php";
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function form_kegiatan_transaksi()
	{
		try{
			$this->load->model("kegiatan_m");
			
			$id_kegiatan_subunsur = $this->uri->segment(3);
			$id_kegiatan_butir = $this->uri->segment(4);
			$id_kegiatan_transaksi = $this->uri->segment(5);
			
			$kegiatan_butir = $this->kegiatan_m->detail_kegiatan_butir(array("id_kegiatan_butir"=>$id_kegiatan_butir));
			$unsur = isset($kegiatan_butir[0]->unsur)?$kegiatan_butir[0]->unsur:"";
			$subunsur = isset($kegiatan_butir[0]->subunsur)?$kegiatan_butir[0]->subunsur:"";
			$butir = isset($kegiatan_butir[0]->butir)?$kegiatan_butir[0]->butir:"";
			
			$data["unsur"] = $unsur;
			$data["subunsur"] = $subunsur;
			$data["butir"] = $butir;
			$data["kegiatan"] = $this->kegiatan_m->detail_kegiatan_transaksi(array("id_kegiatan_transaksi"=>$id_kegiatan_transaksi));
			$data["konten"] = "admin/konten/input_kegiatan/kegiatan-form.view.php";
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	public function proses_kegiatan()
	{
		$this->load->model("kegiatan_m");
		
		$tanggal_kegiatan = tglSql($this->input->post("tanggal_kegiatan"));
		$tanggal_kegiatan_selesai = tglSql($this->input->post("tanggal_kegiatan_selesai"));
		$lembur = $this->input->post("lembur");
		$keterangan = $this->input->post("keterangan");
		$bukti = $this->input->post("bukti");
		$id_kegiatan_butir = $this->input->post("id_kegiatan_butir");
		$id_kegiatan_subunsur = $this->input->post("id_kegiatan_subunsur");
		$id_kegiatan_transaksi = $this->input->post("id_kegiatan_transaksi");
		
		//echo empty($id_kegiatan_transaksi); exit;
		
		$id_user = $this->get_user_login();		
		
		$angka_kredit = $this->kegiatan_m->get_angka_kredit($id_kegiatan_butir);
		
		$data = array(
			"tanggal_kegiatan"=>$tanggal_kegiatan,
			"tanggal_kegiatan_selesai"=>$tanggal_kegiatan_selesai,
			"lembur"=>$lembur,
			"keterangan"=>$keterangan,
			"bukti"=>$bukti,
			"id_kegiatan_butir"=>$id_kegiatan_butir,
			"id_user"=>$id_user,
			"change_by"=>$id_user,
			"status"=>"Proses",
			"angka_kredit"=>$angka_kredit
		);
		
		if( empty($id_kegiatan_transaksi) )
		{
			$result = $this->kegiatan_m->insert_kegiatan_transaksi($data);
		}
		else
		{
			$where = array(
				"id_kegiatan_transaksi"=>$id_kegiatan_transaksi
			);
			$result = $this->kegiatan_m->update_kegiatan_transaksi($data, $where);
		}
		
		if( $result )
		{
			$this->session->set_flashdata('pesan', $this->get_alert("success"));
		}
		else
		{
			$this->session->set_flashdata('pesan', $this->get_alert("fail"));
		}
		
		redirect("admin/daftar_kegiatan_transaksi/" . $id_kegiatan_subunsur . "/" . $id_kegiatan_butir);
	}
	
	public function hapus_berkas_kegiatan() //gets the job done but you might want to add error checking and security
	{
		$this->load->model("kegiatan_m");
		
		$id_kegiatan_subunsur = $this->uri->segment(3);
		$id_kegiatan_butir = $this->uri->segment(4);
		$id_kegiatan_transaksi = $this->uri->segment(5);
		$file = $this->uri->segment(6);
		
		$output_dir = './assets/uploads/berkas/';		
		$filePath = $output_dir. $file;
		
		$data = array(
			"bukti"=>NULL,
		);
		
		$where = array("id_kegiatan_transaksi"=>$id_kegiatan_transaksi);
		
		$result = $this->kegiatan_m->update_kegiatan_transaksi($data, $where);
		
		if( $result )
		{
			if (file_exists($filePath)) 
			{
				unlink($filePath);
			}
		}
		
		$url = "admin/form_kegiatan_transaksi/".$id_kegiatan_subunsur."/".$id_kegiatan_butir."/".$id_kegiatan_transaksi."";
		redirect($url);
	}
	
	public function butir_kegiatan()
	{
		try{
			$crud = new grocery_CRUD();
			$state = $crud->getState();
			
			$unsur = $this->uri->segment(3);
			
			if($state == 'list')
			{	
				//!empty($unsur)$crud->where("")
				$crud->set_table('tbl_kegiatan_butir');
				$crud->set_relation('id_kegiatan_subunsur', 'tbl_kegiatan_subunsur', 'subunsur');
				$crud->set_subject('Kegiatan');
				$crud->columns('id_kegiatan_subunsur', 'butir', 'angka_kredit', 'satuan_hasil');
				$crud->order_by('id_kegiatan_subunsur','asc');
				
				$crud->display_as('id_kegiatan_subunsur', 'Sub Unsur');
				
				$crud->add_action('Input', '', 'demo/action_more','fa fa-edit');
				
				$crud->unset_edit();
				$crud->unset_delete();
				$crud->unset_read();
			}			
			$sitemap = $this->get_sitemap();
			$output = $crud->render($sitemap);
			
			$this->load->view('admin/themes/default', $output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
	
	public function form_spmt($id_kegiatan_butir=NULL)
	{
		try{
			$this->load->model("kegiatan_m");
			$this->load->model("user_m");
			
			$where = array(
				"id_user"=>$this->get_user_login(),
				"id_kegiatan_butir"=>$id_kegiatan_butir
			);
			
			$data["kegiatan"] = $this->kegiatan_m->daftar_kegiatan_transaksi($where);
			$data["user"] = $this->user_m->detail($this->get_user_login());
			$data["atasan_langsung"] = $this->user_m->detail_atasan_langsung($this->get_user_login());
			$data["konten"] = "admin/konten/input_kegiatan/spmt-form.view.php";
			$data["sitemap"] = $this->get_sitemap();
			$this->load->view("admin/themes/default2.php", $data);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}
	
}