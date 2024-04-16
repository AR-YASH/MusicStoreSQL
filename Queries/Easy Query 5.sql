select customer.customer_id,first_name,last_name,sum(invoice.total)
from customer
join invoice on customer.customer_id = invoice.customer_id
group by 1,2,3
order by 4 desc
limit 1