select email,first_name,last_name,g.name
from customer c
join invoice i on c.customer_id = i.customer_id
join invoice_line il on i.invoice_id = il.invoice_id
join track t on t.track_id = il.track_id
join genre g on t.genre_id = g.genre_id
where g.name = 'Rock'
group by 1,2,3,4
order by 1