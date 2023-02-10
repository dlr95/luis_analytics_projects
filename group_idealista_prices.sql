--This query counts the number of apartments listed by Idealista in customized price ranges

select 
	sum(case when precio >0 and precio <500 then 1 else 0 end) as '0-499',
	sum(case when precio >=500 and precio <1000 then 1 else 0 end) as '500-999',
	sum(case when precio >=1000 and precio <1500 then 1 else 0 end) as '1000-1499',
	sum(case when precio >=1500 and precio <2000 then 1 else 0 end) as '1500-1999',
	sum(case when precio >=2000 and precio <2500 then 1 else 0 end) as '2000-2499',
	sum(case when precio >=2500 then 1 else 0 end) as '>=2500'
from rent_spain_scraping_dataset rssd 


--Source data can be found in https://www.kaggle.com/datasets/laurabarreda/rental-listins-in-idealista-spain
