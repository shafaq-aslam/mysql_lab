-- Correlated Subquery

-- Find all the movies that have a rating higher than the average rating of movies in the same genre. [Animation[
SELECT * FROM movies m1
WHERE score > (SELECT AVG(score) FROM movies m2
			   WHERE m2.genre = m1.genre);

-- Find the favorite food of each customer.
WITH fav_food AS (SELECT t2.user_id, t1.name, t4.f_name, COUNT(*) AS 'total_orders' 
					FROM mysql_subquery.users t1
					JOIN mysql_subquery.orders t2 ON t1.user_id = t2.user_id
					JOIN mysql_subquery.order_details t3 ON t2.order_id = t3.order_id
					JOIN mysql_subquery.food t4 ON t3.f_id = t4.f_id
					GROUP BY t2.user_id, t1.name, t4.f_id, t4.f_name)

SELECT * FROM fav_food f1
WHERE total_orders = (SELECT MAX(total_orders) 
						FROM fav_food f2
						WHERE f2.user_id = f1.user_id)