select sum(total) as sum_by_city, billing_city
from invoice
group by billing_city
order by sum_by_city desc