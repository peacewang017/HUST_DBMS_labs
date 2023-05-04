select c_name,c_id_card,c_phone
from client 
where c_id in(
    select b_c_id
    from bank_card
    group by b_c_id
    having COUNT(b_type = '信用卡' or null) >= 2
);