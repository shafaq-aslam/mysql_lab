USE mysqllab;
-- FIRST_VALUE 
-- Find  the student who hot highest marks
SELECT *, 
FIRST_VALUE(name) OVER(ORDER BY marks DESC)
FROM marks;

-- LAST_VALUE
SELECT *,
LAST_VALUE(marks) OVER(ORDER BY marks DESC)
FROM marks;

SELECT *,
LAST_VALUE(marks) OVER(ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

SELECT *,
LAST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

-- NTH_VALUE

SELECT *,
NTH_VALUE(name, 2) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

SELECT *,
NTH_VALUE(name, 4) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

SELECT *,
NTH_VALUE(name, 5) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

-- Find the branch toppers 
SELECT *,
FIRST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM marks;

SELECT *,
FIRST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC) 
AS 'topper_name',
FIRST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC)
AS 'topper_marks'
FROM marks;

SELECT * FROM (SELECT *,
FIRST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC) 
AS 'topper_name',
FIRST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC)
AS 'topper_marks'
FROM marks) t
WHERE t.name = t.topper_name AND t.marks = t.topper_marks;

SELECT name, branch, marks FROM (SELECT *,
FIRST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC) 
AS 'topper_name',
FIRST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC)
AS 'topper_marks'
FROM marks) t
WHERE t.name = t.topper_name AND t.marks = t.topper_marks;

SELECT name, branch, marks FROM (SELECT *,
LAST_VALUE(name) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) 
						AS 'least_name',
LAST_VALUE(marks) OVER(PARTITION BY branch ORDER BY marks DESC
						ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
						AS 'least_marks'
FROM marks) t
WHERE t.name = t.least_name AND t.marks = t.least_marks;

SELECT name, branch, marks FROM (SELECT *,
LAST_VALUE(name) OVER w AS 'least_name',
LAST_VALUE(marks) OVER w AS 'least_marks'
FROM marks) t
WHERE t.name = t.least_name AND t.marks = t.least_marks
WINDOW w AS (PARTITION BY branch ORDER BY marks DESC
			 ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)