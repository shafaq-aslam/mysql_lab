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