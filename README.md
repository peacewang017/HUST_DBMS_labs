# DBMS
华中科技大学数据库实验源代码 
## lab1,2
基础操作(未上传)
## lab3
查询操作：

1.select 操作

2.sum() , avg() 接group by聚集函数 , 使用having语法限定聚集对象

3.union 连接表

4.嵌套查询
## lab4
## lab5
1.连接更新:

在 MySQL 中，连接更新（Join Update）语句用于同时更新两个或多个表中的行。连接更新语句结合了 UPDATE 和 JOIN 两个语句的功能。

连接更新语句的一般形式如下：

```
UPDATE table1
JOIN table2 ON table1.column = table2.column
SET table1.column = new_value
WHERE condition;
```