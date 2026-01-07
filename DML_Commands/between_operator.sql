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

-- Find phones price range 85000 and 100000, and brand name samsung
SELECT * FROM mysqllab.smartphones
WHERE price BETWEEN 85000 AND 100000
AND brand_name = 'samsung'; 

-- Find all apple phones with processor bionic and rating of range 70 and 80
SELECT * FROM mysqllab.smartphones
WHERE brand_name = 'apple'
AND processor_brand = 'bionic'
AND rating BETWEEN 70 AND 80; 

-- Find brands who sell phones with price > 50000
SELECT DISTINCT(brand_name) FROM mysqllab.smartphones
WHERE price > 50000;

-- Find brands who sell phones with price range of 8000 and 100000
SELECT DISTINCT(brand_name) FROM mysqllab.smartphones
WHERE price BETWEEN 80000 AND 100000;





