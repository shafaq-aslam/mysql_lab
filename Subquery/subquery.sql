-- Find the movie with highest rating
SELECT * FROM mysql_subquery.movies
WHERE score = (SELECT MAX(score) FROM mysql_subquery.movies); 

-- Find the movie with highest voting
SELECT * FROM mysql_subquery.movies
WHERE votes = (SELECT MAX(votes) FROM mysql_subquery.movies);

-- Find the movie with highest voting, and rating
SELECT * FROM mysql_subquery.movies
WHERE score = (SELECT MAX(score) FROM mysql_subquery.movies)
AND votes = (SELECT MAX(votes) FROM mysql_subquery.movies);