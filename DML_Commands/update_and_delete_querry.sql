SELECT * FROM mysqllab.smartphones;
SELECT * FROM mysqllab.userdetail;

-- Update
-- update processor_brand from mediatek to dimensity
UPDATE mysqllab.smartphones
SET processor_brand = 'dimensity'
WHERE processor_brand = 'mediatek';

-- Based on multiple conditions
UPDATE mysqllab.userdetail
SET email = 'shayan@gmail.com', password = '56987'
WHERE name = 'shayan'; 