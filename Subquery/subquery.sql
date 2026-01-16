-- Find the movie with highest rating
SELECT * FROM mysql_subquery.movies
WHERE score = (SELECT MAX(score) FROM mysql_subquery.movies); 