create or replace view tbl_kegiatan_view as
select			ku.id_kegiatan_unsur, ku.unsur,
					ks.id_kegiatan_subunsur, ks.subunsur,
					kb.id_kegiatan_butir, kb.butir, kb.angka_kredit, kb.satuan_hasil
from				tbl_kegiatan_butir kb
left join		tbl_kegiatan_subunsur ks on ks.id_kegiatan_subunsur = kb.id_kegiatan_subunsur
left join		tbl_kegiatan_unsur ku on ku.id_kegiatan_unsur = ks.id_kegiatan_unsur
;
