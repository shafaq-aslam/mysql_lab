-- BETWEEN 
 
SELECT * FROM mysqllab.smartphones;

-- Find all phones in the price range of 10000 and 20000
SELECT * FROM mysqllab.smartphones
WHERE price 
BETWEEN 10000 AND 20000;

-- Find phones with rating > 80 and price < 25000
SELECT * FROM mysqllab.smartphones
WHERE rating > 80 
AND price < 25000;

-- Find phones with rating range of 70 and 80, price range of 25000 and 35000, 
-- and ram > 8GB 

SELECT * FROM mysqllab.smartphones
WHERE rating BETWEEN 70 AND 80 
AND price BETWEEN 25000 AND 35000
AND ram_capacity > 6;





