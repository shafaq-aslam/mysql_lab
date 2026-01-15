-- Join more than one cols and tables

-- Join more than one cols 
SELECT * FROM mysql_joins.students t1
JOIN mysql_joins.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;

SELECT * FROM mysql_joins.students t1
LEFT JOIN mysql_joins.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;

SELECT * FROM mysql_joins.students t1
RIGHT JOIN mysql_joins.class t2
ON t1.class_id = t2.class_id
AND t1.enrollment_year = t2.class_year;

-- Join more than one table
-- Find oder name and corresponding category name

SELECT * FROM mysql_joins.order_details t1
JOIN mysql_joins.orders t2
ON t1.order_id = t2.order_id
JOIN mysql_joins.users t3
ON t2.user_id = t3.user_id;

-- Filtering Columns
-- 1. Find order_id, name, and city by joining users and orders.




-- 2. Find order_id, product category by joining order_details and category.    
 
 