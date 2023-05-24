use finance1;
-- 请用一条SQL语句删除client表中没有银行卡的客户信息：
delete from client 
where c_id not in(
    select distinct b_c_id
    from bank_card
    order by b_c_id
);
/* the end of your code */ 