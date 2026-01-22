-- LEAD AND LAG 

USE mysqllab;

-- LAG() 
SELECT *,
LAG(marks) OVER(ORDER BY student_id)
FROM marks;

-- LEAD() 
SELECT *,
LEAD(marks) OVER(ORDER BY student_id)
FROM marks;

SELECT *,
LEAD(marks) OVER(PARTITION BY branch ORDER BY student_id),
LAG(marks) OVER(PARTITION BY branch ORDER BY student_id)
FROM marks;

-- Find the MoM revenue growth of Zomato
USE mysql_subquery;
 
SELECT MONTHNAME(date) AS 'month_name', 
SUM(amount) AS 'total_amount',
((SUM(amount) - LAG(SUM(amount)) OVER(ORDER BY MONTH(date)))/ LAG(SUM(amount)) OVER(ORDER BY MONTH(date)))*100
FROM orders
GROUP BY MONTH(date), MONTHNAME(date)
ORDER BY MONTH(date) ASC;
