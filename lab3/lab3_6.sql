select pro_income , count(pro_income) AS presence    
from property    
group by pro_income      
having count(pro_income) >= ALL(     
        SELECT count(pro_income) 
        FROM property 
        GROUP BY pro_income);