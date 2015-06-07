create or replace view tbl_atasan_user_view as
select		tau.id_atasan_user, tau.id_user, tau.pangkat_golongan,
				tau.nama, tau.nip, tau.jabatan, tau.unit_kerja,
				tpg.pangkat_golongan as nama_pangkat_golongan
from			tbl_atasan_user tau
left join	tbl_pangkat_gol tpg on tpg.id_pangkat = tau.pangkat_golongan