-- WITH SELECT 

-- Get the percentage of votes for each movie compared to the total number of votes.
SELECT name, 
(votes/(SELECT SUM(votes) FROM mysql_subquery.movies))*100 AS 'sum_of_movies'
FROM mysql_subquery.movies; 

-- Display all movie names, genre, score, and avg(score) of genre
SELECT name, genre, score, 
(SELECT AVG(score) FROM movies m2 WHERE m2.genre = m1.genre) 
FROM mysql_subquery.movies m1;