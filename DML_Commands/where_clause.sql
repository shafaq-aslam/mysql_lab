-- Filter data based on brand_name (samsung) 
SELECT * FROM mysqllab.smartphones
WHERE brand_name = 'samsung';

-- based on apple 
SELECT * FROM mysqllab.smartphones
WHERE brand_name = 'apple';

-- Find all phones with price > 50000 
SELECT * FROM mysqllab.smartphones
WHERE price > 50000;

-- Find all phones rating > 80
SELECT * FROM mysqllab.smartphones
WHERE rating > 80; 

-- Find all phones price range of 10000 and 20000
SELECT * FROM mysqllab.smartphones
WHERE price > 10000 AND price < 20000;

-- OR
SELECT * FROM mysqllab.smartphones
WHERE price BETWEEN 10000 AND 20000; 

-- Find all samsung phone with rating > 80
SELECT * FROM mysqllab.smartphones
WHERE brand_name = 'samsung'
AND rating > 80;

-- Find all samsung phone with price < 25000
SELECT * FROM mysqllab.smartphones
WHERE brand_name = 'samsung'
AND price < 25000;

-- Find all phone with price < 25000, rating > 80, and processor snapdragon
SELECT * FROM mysqllab.smartphones
WHERE price < 25000
AND rating > 80
AND processor_brand = 'snapdragon';