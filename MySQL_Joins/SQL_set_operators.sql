-- SQL SET OPERATORS

-- UNION
SELECT * FROM mysql_joins.person1
UNION 
SELECT * FROM mysql_joins.person2;

-- UNION ALL
SELECT * FROM mysql_joins.person1
UNION ALL
SELECT * FROM mysql_joins.person2;

--  INTERSECT
SELECT * FROM mysql_joins.person1
INTERSECT
SELECT * FROM mysql_joins.person2;

--  EXCEPT
SELECT * FROM mysql_joins.person1
EXCEPT
SELECT * FROM mysql_joins.person2;
