-- DISTINCT (unique) ---> To find unique 
SELECT DISTINCT(brand_name) AS 'All brands' FROM mysqllab.smartphones;
SELECT DISTINCT(model) AS 'All models'FROM mysqllab.smartphones;
SELECT DISTINCT(processor_brand) AS 'ALll processors' FROM mysqllab.smartphones;

-- DISTINCT combo
SELECT DISTINCT brand_name, processor_brand FROM mysqllab.smartphones;

-- To find unique combinations 
SELECT DISTINCT brand_name AS 'All brands', 
model AS 'All models', 
processor_brand AS 'ALll processors' 
FROM mysqllab.smartphones;
