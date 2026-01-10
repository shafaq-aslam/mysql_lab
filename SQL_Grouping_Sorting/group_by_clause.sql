-- GROUP BY 

-- Group smartphones by brand and get the count, average price, max rating, avg screen size, and avg battery capacity
SELECT brand_name, COUNT(*) AS 'num_phones', 
ROUND(AVG(price)) AS 'avg_price',
MAX(rating) AS 'max_rating',
ROUND(AVG(screen_size), 2) AS 'avg_screen_size',
ROUND(AVG(battery_capacity)) AS 'avg_battery_capacity'
FROM mysqllab.smartphones
GROUP BY brand_name
ORDER BY num_phones DESC;

-- Group smartphones by whether they have an NFC and get the average price and rating
SELECT has_nfc, 
AVG(price) AS 'avg_price',
AVG(rating) AS 'avg_rating'
FROM mysqllab.smartphones
GROUP BY has_nfc;

-- for has_5g 
SELECT has_5g, 
AVG(price) AS 'avg_price',
AVG(rating) AS 'avg_rating'
FROM mysqllab.smartphones
GROUP BY has_5g;

-- for fast charging available 
SELECT fast_charging_available, 
AVG(price) AS 'avg_price',
AVG(rating) AS 'avg_rating'
FROM mysqllab.smartphones
GROUP BY fast_charging_available;

-- Group smartphones by the extended memory available and get the average price
SELECT extended_memory_available,
AVG(price) AS 'avg_price' 
FROM mysqllab.smartphones
GROUP BY extended_memory_available;

-- Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution (rear)
SELECT brand_name, processor_brand,
COUNT(*) AS 'num_models', 
ROUND(AVG(primary_camera_rear)) AS 'avg_rear_camera'
FROM mysqllab.smartphones
GROUP BY brand_name, processor_brand;

-- Find top 5 most costly phone brands
SELECT brand_name, ROUND(AVG(price)) AS 'avg_price'
FROM mysqllab.smartphones
GROUP BY brand_name
ORDER BY avg_price DESC LIMIT 5;

-- Which brand makes the smallest screen smartphones
-- Avg price of 5g phones vs avg price of non 5g phones
-- Group smartphones by the brand, and find the brand with the highest number of models that have both NFC and an IR blaster
-- Find all samsung 5g enable smartphones and find out the avg price for NFC and Non-NFC phones
-- Find the phone name, price of the costliest phone      