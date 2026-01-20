-- Independent Table Subquery (Multi cols and Multi rows)

-- Find the most profitable movie of each year
SELECT year, name FROM mysql_subquery.movies
WHERE (year, gross - budget) IN (SELECT year, MAX(gross - budget) AS 'prof_movies'
							FROM mysql_subquery.movies
							GROUP BY year);
                            
-- Find the highest rated movie of each genre votes cutoff of 25000
SELECT name, genre FROM mysql_subquery.movies
WHERE (genre, score) IN (SELECT genre, MAX(score) 
						FROM mysql_subquery.movies
						WHERE votes > 25000
						GROUP BY genre)
AND votes > 25000;

-- Find the highest grossing movies of top 5 actor/director combo in terms of total gross income  
WITH top_duos AS (SELECT star, director, MAX(gross) 
					FROM mysql_subquery.movies
					GROUP BY star, director
					ORDER BY SUM(gross) DESC LIMIt 5)
SELECT * FROM movies
WHERE (star, director, gross) IN (SELECT * FROM top_duos);