# DBMS
华中科技大学数据库实验源代码 
## lab1,2
基础操作(未上传)
## lab3
查询操作：

1.select 操作

2.sum() , avg() 接group by聚集函数 , 使用having语法限定聚集对象，where语法限定非聚集对象

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

2.插入数据：

要向数据库中插入数据，可以使用 SQL 的 INSERT INTO 语句。以下是插入数据的基本语法：

```
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

3.批量插入数据

```
INSERT INTO table_name
select * 
from table2_name;
```

4.删除信息

```
DELETE FROM table_name
where c_id not in();
```
## lab6
1.创建视图

```
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

2.使用创建的视图

语法跟使用table一样

## lab7
## lab8
## lab9

