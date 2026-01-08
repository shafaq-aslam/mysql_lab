SELECT * FROM mysqllab.smartphones;

-- FUNCTIONS IN SQL
-- Aggregate Functions
-- MIN() and MAX()
SELECT MIN(price) FROM mysqllab.smartphones; 
SELECT MAX(price) FROM mysqllab.smartphones; 
SELECT MIN(ram_capacity) FROM mysqllab.smartphones;  
SELECT MAX(ram_capacity) FROM mysqllab.smartphones;

-- Find the price of the costliest samsung phone
SELECT MAX(price) FROM mysqllab.smartphones
WHERE brand_name = 'samsung'; 

-- AVG() 
-- Find the avg rating of apple phone
SELECT AVG(rating) FROM mysqllab.smartphones
WHERE brand_name = 'apple'; 

SELECT AVG(rating) FROM mysqllab.smartphones
WHERE brand_name = 'samsung'; 

-- Average price of samsung phones 
SELECT AVG(price) FROM mysqllab.smartphones
WHERE brand_name = 'samsung';

-- SUM()
SELECT SUM(price) FROM mysqllab.smartphones; 

-- COUNT() --> count number of instances
-- Find the number of oneplus phones
SELECT COUNT(*) FROM mysqllab.smartphones
WHERE brand_name = 'oneplus'; 

-- Find the number of samsung phones
SELECT COUNT(*) FROM mysqllab.smartphones
WHERE brand_name = 'samsung';

-- COUNT(DISTINCT) --> number of unique
SELECT COUNT(DISTINCT(brand_name)) FROM mysqllab.smartphones;
SELECT COUNT(DISTINCT(processor_brand)) FROM mysqllab.smartphones;
SELECT COUNT(DISTINCT(model)) FROM mysqllab.smartphones;

-- STD()
-- Find the std of screen size
SELECT STD(screen_size) FROM mysqllab.smartphones;  

-- VARIANCE 
SELECT VARIANCE(screen_size) FROM mysqllab.smartphones;