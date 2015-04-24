create or replace view tbl_sitemap_admin_view as
select		s.id_sitemap, s.id_parent, s.no_sitemap, s.sitemap,
				s.judul, s.url as url, s.icon, s.no_urut, s.change_by, s.change_date,
				round(length(replace(s.no_sitemap, '.', '')) / 2) as level_sitemap
from			tbl_sitemap s
where			s.no_sitemap like '02.%'