create or replace view tbl_user_view as
select		u.id_user, u.email,
				u.password, u.id_kategori_user, u.`status`,
				tb.id_biodata, tb.id_wilayah, tb.nip, tb.nama, tb.jenis_kelamin, tb.karpeg,
				tb.unit_kerja, tb.unit_kerja_telp, tb.pendidikan_gelar, tb.jabatan,
				tb.tempat_lahir, tb.tanggal_lahir, tb.ruang_golongan, tb.jenjang_jabfung,
				tb.no_hp, tb.no_sk_jabfung, tb.sk_jabfung, tb.change_by, tb.change_date,
				uk.user_kategori, tw.wilayah, tp.pendidikan,
				tpg.pangkat_golongan, j.jenjang
from			tbl_user u
left join	tbl_biodata tb on tb.id_user = u.id_user
left join	tbl_user_kategori uk on uk.id_user_kategori = u.id_kategori_user
left join	tbl_wilayah tw on tw.id_wilayah = tb.id_wilayah
left join	tbl_pendidikan tp on tp.id_pendidikan = tb.pendidikan_gelar
left join	tbl_pangkat_gol tpg on tpg.id_pangkat = tb.ruang_golongan
left join	tbl_jenjang j on j.id_jenjang = tb.jenjang_jabfung 