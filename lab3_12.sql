select client.c_name,client.c_id_card,sum(case when property.pro_type = 1 then pro_quantity*finances_product.p_amount
                                               when property.pro_type = 2 then pro_quantity*insurance.i_amount
                                               when property.pro_type = 3 then pro_quantity*fund.f_amount
                                               else 0 end) as total_amount
from client left join property
on client.c_id = property.pro_c_id
left join finances_product 
on property.pro_pif_id = finances_product.p_id and property.pro_type = 1
left join insurance
on property.pro_pif_id = insurance.i_id and property.pro_type = 2
left join fund
on property.pro_pif_id = fund.f_id and property.pro_type = 3
group by client.c_id
order by total_amount desc;
