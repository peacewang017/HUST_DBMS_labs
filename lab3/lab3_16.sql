with t(c_id, f_id) as (
    select
        pro_c_id c_id,
        group_concat(distinct pro_pif_id order by pro_pif_id) as f_id
    from property
    where pro_type = 3
    group by pro_c_id
)
select
    t1.c_id as c_id1,
    t2.c_id as c_id2
from t t1, t t2
where t1.c_id < t2.c_id
and t1.f_id = t2.f_id;
