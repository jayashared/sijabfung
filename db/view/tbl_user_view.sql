create or replace view tbl_user_view as
select		u.id_user, u.id_kategori_user, u.email,
				u.password, u.no_sk_jabfung, u.no_sertifikat,
				u.status, uk.user_kategori
from			tbl_user u
left join	tbl_user_kategori uk on uk.id_user_kategori = u.id_kategori_user