select c_id , c_name , sum(money) as total_property
from(
    select client.c_id , client.c_name , sum(case when property.pro_type = 1 then pro_quantity*finances_product.p_amount + property.pro_income
                                                  when property.pro_type = 2 then pro_quantity*insurance.i_amount + property.pro_income
                                                  when property.pro_type = 3 then pro_quantity*fund.f_amount + property.pro_income
                                                  else 0 end)as money
    from client left join property
    on client.c_id = property.pro_c_id
    left join finances_product 
    on property.pro_pif_id = finances_product.p_id and property.pro_type = 1
    left join insurance
    on property.pro_pif_id = insurance.i_id and property.pro_type = 2
    left join fund
    on property.pro_pif_id = fund.f_id and property.pro_type = 3
    group by client.c_id

    union

    select client.c_id , client.c_name , sum(case when bank_card.b_type = '储蓄卡' then b_balance
                                                  when bank_card.b_type = '信用卡' then 0-b_balance
                                                  else 0 end)as money
    from client left join bank_card
    on client.c_id = bank_card.b_c_id      
    group by client.c_id                                   
)as moneytable(c_id , c_name , money)
group by c_id , c_name
order by c_id;