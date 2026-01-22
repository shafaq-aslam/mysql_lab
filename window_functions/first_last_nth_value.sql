USE mysqllab;
-- FIRST_VALUE 
-- Find  the student who hot highest marks
SELECT *, 
FIRST_VALUE(name) OVER(ORDER BY marks DESC)
FROM marks

-- LAST_VALUE