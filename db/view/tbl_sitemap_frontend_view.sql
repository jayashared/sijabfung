create or replace view tbl_sitemap_frontend_view as
select		s.id_sitemap, s.id_parent, s.no_sitemap, s.sitemap,
				s.judul, 
				s.url as url, 
				s.icon, s.no_urut, s.change_by, s.change_date
from			tbl_sitemap s
where			s.no_sitemap like '01.%'