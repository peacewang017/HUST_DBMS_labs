select c_name,c_phone,b_number 
from client,bank_card
where b_type='储蓄卡' and b_c_id=c_id
order by c_id;