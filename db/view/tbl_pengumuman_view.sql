create or replace view tbl_pengumuman_view as 
select 		b.id_pengumuman, b.tanggal_pengumuman, b.judul, b.isi_pengumuman,
				if(b.berkas <> '', concat('assets/uploads/gambar/', b.berkas), 
				'') as berkas,
				b.change_date, b.change_by, u.email
from			tbl_pengumuman b
left join	tbl_user u on u.id_user = b.change_by