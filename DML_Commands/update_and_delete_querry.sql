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

-- DELETE
-- Delete price greater than 200000
DELETE FROM mysqllab.smartphones
WHERE price > 200000;

-- Delete samsung phones whose primary rear camera is greater than 100
DELETE FROM mysqllab.smartphones
WHERE primary_camera_rear > 100
AND brand_name = 'samsung';