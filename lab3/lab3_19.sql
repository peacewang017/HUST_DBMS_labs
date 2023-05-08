select week_of_trading, 
sum(if(id = 0, amount, null)) as Monday,
sum(if(id = 1, amount, null)) as Tuesday,
sum(if(id = 2, amount, null)) as Wednesday,
sum(if(id = 3, amount, null)) as Thursday,
sum(if(id = 4, amount, null)) as Friday

from 
(select week(pro_purchase_time) - 5 as week_of_trading, weekday(pro_purchase_time) as id, sum(pro_quantity * f_amount) as amount
from property, fund
where pro_pif_id = f_id and pro_purchase_time like "2022-02-%" and pro_type = 3
group by pro_purchase_time) as weektable
group by week_of_trading;