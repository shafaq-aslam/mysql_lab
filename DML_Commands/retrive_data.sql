-- To select all data from the table 
SELECT * FROM mysqllab.smartphones; 

-- To get selective columns ---> Filter column
SELECT brand_name, model, price, rating FROM mysqllab.smartphones;
SELECT model, battery_capacity, os FROM mysqllab.smartphones;

-- To alias (rename) a column
SELECT os AS 'Operating_system' FROM mysqllab.smartphones;
SELECT battery_capacity AS 'mAh' FROM mysqllab.smartphones;
SELECT os AS 'Operating_system', battery_capacity AS 'mAh' FROM mysqllab.smartphones;

-- To create expression
SELECT model, 
SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size 
AS PPI
FROM mysqllab.smartphones;
 
SELECT model, rating/10 As rate FROM mysqllab.smartphones;

-- Constants
SELECT model, 'Smartphone' As 'type' FROM mysqllab.smartphones; 
SELECT model, 'Smartphone' As 'type', os As 'Operating System' FROM mysqllab.smartphones; 
 


