USE mysqllab;

-- Cumulative Sum

SELECT * FROM (SELECT 
CONCAT("Match-",CAST(ROW_NUMBER() OVER(ORDER BY ID) AS CHAR)) AS 'match_no',
SUM(batsman_run) AS 'runs_scored',
SUM(SUM(batsman_run)) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS 'career_runs'
FROM IPL
WHERE batter = 'V Kohli'
GROUP BY ID) t
WHERE match_no = 'Match-10' OR match_no = 'Match-20' OR match_no = 'Match-30' ;
