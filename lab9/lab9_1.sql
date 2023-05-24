use finance1;
set global log_bin_trust_function_creators=1;
drop function IF EXISTS get_deposit;
/*
   用create function语句创建符合以下要求的函数：
   依据客户编号计算该客户所有储蓄卡的存款总额。
   函数名为：get_Records。函数的参数名可以自己命名:*/

delimiter $$
create function get_deposit(client_id int)
returns numeric(10,2) 
begin
    declare total_deposit numeric(10,2) default 0;
    select sum(b_balance) into total_deposit
    from bank_card
    where b_c_id = client_id and b_type = '储蓄卡'
    group by b_c_id;

    return total_deposit;
end$$
delimiter ;

/*  应用该函数查询存款总额在100万以上的客户身份证号，姓名和存储总额(total_deposit)，
    结果依存款总额从高到代排序  */
select c_id_card , c_name , get_deposit(c_id) as total_deposit
from client
where get_deposit(c_id) >= 1000000
order by get_deposit(c_id) desc;


/*  代码文件结束     */