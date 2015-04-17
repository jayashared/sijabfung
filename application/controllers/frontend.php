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
		$data = array(
			"pengumuman"=>$pengumuman,
			"link"=>$link,
			"newsticker"=>$newsticker
		);
		
		$this->data = $data;
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
	
	public function berita()
	{
		try
		{
			$this->load->model("Berita_m");
			$berita = $this->Berita_m->daftar_berita();
			$data = $this->get_right_sidebar();
			$data["berita"] = $berita;
			$data["konten"] = "frontend/content/berita/berita-list.view.php";
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
	
}