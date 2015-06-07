create or replace view tbl_sitemap_user_view as
select		su.id_sitemap_user, su.id_user_kategori, su.id_sitemap,
				s.id_parent, s.no_sitemap, s.sitemap, s.judul, s.deskripsi,
				s.url, s.icon, s.no_urut,
				uk.user_kategori, uk.user_description, round(length(replace(s.no_sitemap, '.', '')) / 2) as level_sitemap
from			tbl_sitemap_user su
left join	tbl_sitemap s on s.id_sitemap = su.id_sitemap
left join	tbl_user_kategori uk on uk.id_user_kategori = su.id_user_kategori 