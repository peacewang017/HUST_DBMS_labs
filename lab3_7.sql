select c_name,c_phone,c_mail 
from client
where(left(client.c_id_card, 4) = 4201)    
    and c_id not in(select pro_c_id from property where pro_type = 1);