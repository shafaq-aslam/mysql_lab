SELECT * FROM mysqllab.smartphones;

-- SCALAR FUNCTIONS
-- ABS()
SELECT ABS(price - 200000) AS 'temp' FROM mysqllab.smartphones; 

-- ROUND()
SELECT model,
-- ROUND(SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size) AS 'PPI' 
ROUND(SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size,2) AS 'PPI'
FROM mysqllab.smartphones;

-- CEIL() AND FLOOR()
SELECT CEIL(screen_size) FROM mysqllab.smartphones; 
SELECT FLOOR(screen_size) FROM mysqllab.smartphones; 