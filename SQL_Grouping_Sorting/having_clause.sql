SELECT * FROM mysqllab.smartphones;

-- HAVING CLAUSE

-- Find the phones which have at least 20 phones
SELECT brand_name, COUNT(*) AS 'count' 
FROM mysqllab.smartphones
GROUP BY brand_name
HAVING count > 20
ORDER BY count DESC;

-- Find the avg rating of smartphone brands which have more than 20 phones
SELECT brand_name, COUNT(*) AS 'count',
ROUND(AVG(rating)) AS 'avg_rating'
FROM mysqllab.smartphones
GROUP BY brand_name
HAVING count > 20
ORDER BY count DESC;
-- Find the top 3 brands with the highest avg ram that have a refresh rate of at least 90 Hz and fast charging available and don't consider brands which have less than 10 phones
-- Find the avg price of all the phone brands with avg rating > 70 and num_phones more than 10 among all 5g enabled phones    