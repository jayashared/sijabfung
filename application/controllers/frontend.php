<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Frontend extends CI_Controller {

	var $data = array();

	public function __construct()
	{
		parent::__construct();

		$this->load->model("Pengumuman_m");
		$this->load->model("Link_m");
		$this->load->model("General_m");
		
		$pengumuman = $this->Pengumuman_m->pengumuman_terbaru(5);
		$link = $this->Link_m->daftar_link();
		$newsticker = $this->General_m->daftar_newsticker();
		$sitemap = $this->get_sitemap();
		$data = array(
			"pengumuman"=>$pengumuman,
			"link"=>$link,
			"newsticker"=>$newsticker,
			"sitemap"=>$sitemap
		);
		
		$this->data = $data;
	}
	
	public function paging($pag=array())
	{
		$config['base_url'] = $pag["url"];
		$config['total_rows'] = $pag["total_rows"];
		$config['per_page'] = $pag["per_page"]; 
		$config['page_query_string'] = TRUE;
		$config['use_page_numbers'] = TRUE;
		$config['query_string_segment'] = "page";
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['next_link'] = '&gt;';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['last_link'] = 'Akhir';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		$config['first_link'] = 'Awal';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['anchor_class'] = 'class="page"';
		$this->pagination->initialize($config); 
		
		return $this->pagination->create_links();
	}
	
	public function get_sitemap()
	{
		$this->load->model("Sitemap_m");
		$sitemap = $this->Sitemap_m->daftar_sitemap_frontend();
		return $sitemap;
	}
	
	public function get_right_sidebar()
	{
		return $this->data;
	}
	
	public function index()
	{
		try
		{
			$this->load->model("Berita_m");
			$berita = $this->Berita_m->berita_terbaru(5);
			$data = $this->get_right_sidebar();
			$data["berita"] = $berita;
			$data["konten"] = "frontend/home.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function home()
	{
		$this->index();
	}
	
	public function berita()
	{
		try
		{
			
			$this->load->model("Berita_m");
			
			
			
			$page = $this->input->get("page");
			$page = !empty($page)?$page:1;
			$limit = 10;
			
			if(isset($page) and !empty($page)):
				$offset = ($page * $limit) - $limit;
			else:
				$offset = 0;
			endif;
			
			// Paging
			$total_row =  $this->Berita_m->count_berita();
			$url = base_url() . "frontend/berita/?paging=true";
			$data_paging = array(
				"url"=>$url,
				"total_rows"=>$total_row,
				"per_page"=>$limit,
				"halaman"=>$page
			);
			
			$berita = $this->Berita_m->daftar_berita_per_page($limit, $offset);
			$data = $this->get_right_sidebar();
			
			$data["paging"] = $this->paging($data_paging);
			$data["page"] = $page;
			
			$data["berita"] = $berita;
			$data["konten"] = "frontend/content/berita/berita-list.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function berita_detail($id_berita = NULL)
	{
		try
		{
			$this->load->model("Berita_m");
			$berita = $this->Berita_m->detail_berita(array("id_berita"=>$id_berita));
			$data = $this->get_right_sidebar();
			$data["berita"] = $berita;
			$data["konten"] = "frontend/content/berita/berita-detail.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function pengumuman()
	{
		try
		{
			
			$this->load->model("Pengumuman_m");
			
			
			
			$page = $this->input->get("page");
			$page = !empty($page)?$page:1;
			$limit = 10;
			
			if(isset($page) and !empty($page)):
				$offset = ($page * $limit) - $limit;
			else:
				$offset = 0;
			endif;
			
			// Paging
			$total_row =  $this->Pengumuman_m->count_pengumuman();
			$url = base_url() . "frontend/pengumuman/?paging=true";
			$data_paging = array(
				"url"=>$url,
				"total_rows"=>$total_row,
				"per_page"=>$limit,
				"halaman"=>$page
			);
			
			$berita = $this->Pengumuman_m->daftar_pengumuman_per_page($limit, $offset);
			$data = $this->get_right_sidebar();
			
			$data["paging"] = $this->paging($data_paging);
			$data["page"] = $page;
			
			$data["pengumuman"] = $berita;
			$data["konten"] = "frontend/content/pengumuman/pengumuman-list.view.php";
			$this->load->view('frontend/index', $data);
			
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function pengumuman_detail($id_pengumuman = NULL)
	{
		try
		{
			$this->load->model("Pengumuman_m");
			$pengumuman = $this->Pengumuman_m->detail_pengumuman(array("id_pengumuman"=>$id_pengumuman));
			$data = $this->get_right_sidebar();
			$data["pengumuman"] = $pengumuman;
			$data["konten"] = "frontend/content/pengumuman/pengumuman-detail.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function referensi()
	{
		try
		{
			$this->load->model("Download_m");
			$download_kategori = $this->Download_m->daftar_download_kategori();
			
			foreach( $download_kategori as $rdk )
			{
				$id_download_kategori = $rdk->id_download_kategori;
				$where = array("id_download_kategori"=>$id_download_kategori);
				$rdk->download = $this->Download_m->daftar_download($where);
			}
			
			$data = $this->get_right_sidebar();
			$data["download"] = $download_kategori;
			$data["konten"] = "frontend/content/referensi/referensi-list.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function registrasi()
	{
		try
		{
			$data = $this->get_right_sidebar();
			$data["konten"] = "frontend/content/registrasi/registrasi-form.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function registrasi_proses()
	{
		$nip = $this->input->post("nip");
		$email = $this->input->post("email");
		$no_sk_jabfung = $this->input->post("no_sk_jabfung");
		$password = $this->input->post("password");
	}
	
	public function konten_statis($where=NULL)
	{
		try
		{
			$this->load->model("Konten_statis_m");
			$statis = $this->Konten_statis_m->konten_statis(array("nama"=>$where));
			$data = $this->get_right_sidebar();
			$data["statis"] = $statis;
			$data["konten"] = "frontend/content/konten_statis/konten-statis.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
	public function faq()
	{
		try
		{
			$this->load->model("Faq_m");
			$faq_kategori = $this->Faq_m->daftar_faq_kategori();
			
			foreach( $faq_kategori as $rfk )
			{
				$id_faq_kategori = $rfk->id_faq_kategori;
				$where = array("id_faq_kategori"=>$id_faq_kategori, "tampilkan"=>"Ya");
				$rfk->faq = $this->Faq_m->daftar_faq($where);
			}
			
			$data = $this->get_right_sidebar();
			$data["faq"] = $faq_kategori;
			$data["konten"] = "frontend/content/faq/faq-list.view.php";
			$this->load->view('frontend/index', $data);
		} catch(Exception $e){
			echo "Terjadi Kesalahan. Hubungi Administrator";
		}
	}
	
}