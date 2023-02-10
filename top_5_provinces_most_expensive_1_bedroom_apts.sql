-- This query finds the top 5 Spanish provinces with the highest median price for 1-bedroom apartments.
select 
	habitaciones,
	provincia,
	median(precio)
from rent_spain_scraping_dataset rssd 
where habitaciones = 1
group by habitaciones, provincia
order by median(precio) desc
limit 5
