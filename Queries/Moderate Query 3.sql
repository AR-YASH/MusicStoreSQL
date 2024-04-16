select name,milliseconds
from track
where milliseconds > all
	(select avg(milliseconds)
	from track
)
order by 2 desc