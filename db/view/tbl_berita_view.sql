create or replace view tbl_berita_view as 
select 		b.id_berita, b.tanggal_berita, b.judul, b.berita_singkat, b.berita_penuh,
				if(b.gambar <> '', concat('assets/uploads/gambar/', b.gambar), 
				concat('assets/images/', 'No_image_available.jpg')) as gambar,
				b.change_date, b.change_by, u.email
from			tbl_berita b
left join	tbl_user u on u.id_user = b.change_by