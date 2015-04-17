create or replace view news_ticker_view as
select		x.judul as judul, x.tanggal_berita as tanggal, x.berita_penuh as isi
from			tbl_berita x
where			x.tanggal_berita = date(now())
union all
select		x.judul as judul, x.tanggal_pengumuman as tanggal, x.isi_pengumuman as isi
from			tbl_pengumuman x
where			x.tanggal_pengumuman = date(now())