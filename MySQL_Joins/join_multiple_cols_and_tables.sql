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