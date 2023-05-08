select b_c_id,sum(b_balance) as credit_card_amount
from bank_card
where b_type = '信用卡'
group by b_c_id
having count(b_balance >= 5000 and b_type = '信用卡' or null) >= 1
order by b_c_id;             