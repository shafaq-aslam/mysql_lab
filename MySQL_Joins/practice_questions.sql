-- Practice Questions

-- 1. Find all profitable orders
SELECT t1.order_id, SUM(t2.profit) AS 'profit' 
FROM mysql_joins.orders t1
JOIN mysql_joins.order_details t2
ON t1.order_id = t2.order_id
GROUP BY t1.order_id
HAVING profit > 0;

-- 2. Find the customer who has placed max number of orders
SELECT name, COUNT(*) AS 'num_orders' 
FROM mysql_joins.orders t1
JOIN mysql_joins.users t2
ON t1.user_id = t2.user_id
GROUP BY t2.name
ORDER BY num_orders DESC LIMIT 1;

-- 3. Which is the most profitable category
-- 4. Which is the most profitable state
-- 5. Find all categories with profit higher than 5000    