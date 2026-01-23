USE mysqllab;

-- RANK (Give ranking in partition)
SELECT *,
RANK() OVER(PARTITION BY branch ORDER BY marks DESC)
FROM marks; 

-- DENSE_RANK (It doesn't skip anything) 
SELECT *,
DENSE_RANK() OVER(PARTITION BY branch ORDER BY marks DESC)
FROM marks;

-- ROW_NUMBER 
SELECT *,
ROW_NUMBER() OVER(PARTITION BY branch)
FROM marks;

SELECT *,
CONCAT(branch, '_', ROW_NUMBER() OVER(PARTITION BY branch))
FROM marks;

USE mysql_subquery;

-- Find top 2 most paying customers of each month
SELECT * FROM (SELECT MONTHNAME(date), user_id, SUM(amount) AS 'total',
				RANK() OVER(PARTITION BY MONTHNAME(date) ORDER BY SUM(amount) DESC)
				AS 'month_rank'
				FROM orders
				GROUP BY MONTHNAME(date), user_id
				ORDER BY MONTHNAME(date)) t
                WHERE t.month_rank < 3
                ORDER BY user_id ASC, month_rank ASC;


SELECT * FROM (SELECT BattingTeam, batter, SUM(batsman_run) AS 'total_runs',
				DENSE_RANK() OVER(PARTITION BY BattingTeam ORDER BY SUM(batsman_run) DESC) AS 'rank_within_team'
				FROM IPL
				GROUP BY BattingTeam, batter) t
WHERE t.rank_within_team < 6
ORDER BY t.BattingTeam, t.rank_within_team

