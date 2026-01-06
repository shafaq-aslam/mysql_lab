-- To select all data from the table. 
SELECT * FROM mysqllab.smartphones; 

-- To get selective columns
SELECT brand_name, model, price, rating FROM mysqllab.smartphones;

SELECT model, battery_capacity, os FROM mysqllab.smartphones;

-- To alias (rename) a column
SELECT os AS 'Operating_system' FROM mysqllab.smartphones;
SELECT battery_capacity AS 'mAh' FROM mysqllab.smartphones;
SELECT os AS 'Operating_system', battery_capacity AS 'mAh' FROM mysqllab.smartphones;