--This query counts the number of apartments listed by Idealista in customized price ranges

select 
	sum(case when price >0 and price <=150 then 1 else 0 end) as '0-150',
	sum(case when price >150 and price <=300 then 1 else 0 end) as '150-300',
	sum(case when price >300 and price <=450 then 1 else 0 end) as '300-450',
	sum(case when price >450 and price <=600 then 1 else 0 end) as '450-600',
	sum(case when price >600 and price <=750 then 1 else 0 end) as '600-750'
from Idealista_Data

--Source data can be found in https://www.kaggle.com/datasets/laurabarreda/idealista-madrid-rental-real-state