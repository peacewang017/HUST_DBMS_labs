select p_id,p_amount,p_year 
from finances_product 
where p_amount between 30000 and 50000
order by p_amount,p_year desc;
