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
	user_id INTEGER,
    name VARCHAR(50),
    money INTEGER
);

DROP TABLE IF EXISTS loyal_users;

-- Populate an already created loyal_user table with records of only those customers who have ordered food more than 3 times
INSERT INTO loyal_users (user_id, name)
SELECT t1.user_id, t2.name 
FROM orders t1
JOIN users t2 ON t1.user_id = t2.user_id
GROUP BY user_id, name
HAVING COUNT(*) > 3;

-- IN UPDATE
 
-- Populate the money col of loyal_users table using the orders table. Provide a 10% app money to all customers based on their order value

UPDATE loyal_users
SET money = (SELECT user_id, SUM(amount)*0.1 AS 'discount' 
			FROM orders
			GROUP BY user_id);
 