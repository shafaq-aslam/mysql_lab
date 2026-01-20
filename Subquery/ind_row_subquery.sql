-- Independent Row Subquery (one col but multi rows)

-- Find all users who never ordered
SELECT * FROM mysql_subquery.users
WHERE user_id NOT IN (SELECT DISTINCT(user_id) 
					  FROM mysql_subquery.orders);

-- Find all the movies made by top 3 directors (in terms of total gross incme)
WITH top_directors AS (SELECT director FROM mysql_subquery.movies
					GROUP BY director
					ORDER BY SUM(gross) DESC LIMIT 3)
SELECT * FROM mysql_subquery.movies
WHERE director IN (SELECT * FROM top_directors);

-- Find all movies of all those actors whose filmography's avg rating > 8.5 (take 25000 votes as cutoff)
SELECT * FROM mysql_subquery.movies
WHERE star IN (SELECT star FROM mysql_subquery.movies
				WHERE votes > 25000
				GROUP BY star
				HAVING AVG(score) > 8.5
                AND votes > 25000);
                -- OR --
SELECT name, votes, director, star FROM mysql_subquery.movies
WHERE star IN (SELECT star FROM mysql_subquery.movies
				WHERE votes > 25000
				GROUP BY star
				HAVING AVG(score) > 8.5
                AND votes > 25000);