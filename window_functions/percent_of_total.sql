USE mysql_subquery;

SELECT f_name, (total_value/SUM(total_value) OVER())*100 AS 'percent_of_total'
			FROM (SELECT f_id, SUM(amount) AS 'total_value' 
					FROM orders t1
					JOIN order_details t2
					ON t1.order_id = t2.order_id
					WHERE r_id = 1
					GROUP BY f_id) t
JOIN food t3
ON t.f_id = t3.f_id
ORDER BY (total_value/SUM(total_value) OVER())*100 DESC