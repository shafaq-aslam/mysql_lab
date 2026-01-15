CREATE DATABASE IF NOT EXISTS mysql_joins;

-- CROSS JOIN 
SELECT * FROM mysql_joins.users g1
CROSS JOIN mysql_joins.groups g2;

-- INNER JOIN
SELECT * FROM mysql_joins.membership t1
INNER JOIN mysql_joins.users t2
ON t1.user_id = t2.user_id; 

-- LEFT JOIN 
SELECT * FROM mysql_joins.membership t1
LEFT JOIN mysql_joins.users t2
ON t1.user_id = t2.user_id;

-- RIGHT JOIN
SELECT * FROM mysql_joins.membership t1
RIGHT JOIN mysql_joins.users t2
ON t1.user_id = t2.user_id;
