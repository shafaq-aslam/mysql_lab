-- RANK (Give ranking in partition)
USE mysqllab;
-- Find top 2 most paying customers of each month
SELECT *,
RANK() OVER(PARTITION BY branch ORDER BY marks DESC)
FROM marks; 

-- Create roll no from branch and marks



