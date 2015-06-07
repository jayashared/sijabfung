create or replace view tbl_kegiatan_transaksi_view as
select		kt.id_kegiatan_transaksi, kt.id_kegiatan_butir, kt.id_user,
				kt.tanggal_kegiatan, kt.keterangan, kt.bukti, kt.`status`, kt.status_deskripsi,
				kt.change_by, kt.change_date,
				kb.id_kegiatan_subunsur, kb.butir, kb.angka_kredit, kb.satuan_hasil,
				ks.id_kegiatan_unsur, ks.subunsur, ku.unsur
from			tbl_kegiatan_transaksi kt
left join	tbl_kegiatan_butir kb on kb.id_kegiatan_butir = kt.id_kegiatan_butir
left join	tbl_kegiatan_subunsur ks on ks.id_kegiatan_subunsur = kb.id_kegiatan_subunsur
left join	tbl_kegiatan_unsur ku on ku.id_kegiatan_unsur - ks.id_kegiatan_unsur