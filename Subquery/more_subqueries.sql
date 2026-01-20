-- WITH SELECT 

-- Get the percentage of votes for each movie compared to the total number of votes.
SELECT name, 
(votes/(SELECT SUM(votes) FROM mysql_subquery.movies))*100 AS 'sum_of_movies'
FROM mysql_subquery.movies; 

-- Display all movie names, genre, score, and avg(score) of genre
SELECT name, genre, score, 
(SELECT AVG(score) FROM movies m2 WHERE m2.genre = m1.genre) 
FROM mysql_subquery.movies m1;

-- WITH FROM

-- Display average rating of all the restaurants
 SELECT r_name, avg_rating
 FROM (SELECT r_id, AVG(restaurant_rating) AS 'avg_rating'
		 FROM mysql_subquery.orders
		 GROUP BY r_id) t1 JOIN restaurants t2
		 ON t1.r_id = t2.r_id;
 
-- WITH HAVING

-- Find genres having avg score > avg score of all the movies  
SELECT genre, AVG(score) 
FROM mysql_subquery.movies
GROUP BY genre
HAVING AVG(score) > (SELECT AVG(score) FROM movies);

-- IN INSERT 
CREATE TABLE IF NOT EXISTS loyal_users(
	user_id INTEGER NOT NULL,
    name VARCHAR(50) NOT NULL,
    money INTEGER NOT NULL
);

-- Populate an already created loyal_user table with records of only those customers who have ordered food more than 3 times


 