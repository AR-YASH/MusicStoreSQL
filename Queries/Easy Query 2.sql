select count(invoice_id), billing_country
from invoice
group by billing_country
order by 1 desc