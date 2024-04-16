with recursive
	customer_with_country as(
		select customer.customer_id,first_name,last_name,billing_country,sum(total) as spending
		from invoice
		join customer on customer.customer_id = invoice.customer_id
		group by 1,2,3,4
		order by 2,3 desc
),
	country_max_spending as(
		select max(spending) as maxspending,billing_country
		from customer_with_country
		group by 2
)
SELECT customer_with_country.*
from customer_with_country
join country_max_spending on country_max_spending.billing_country = customer_with_country.billing_country
where customer_with_country.spending = country_max_spending.maxspending
order by 4
	