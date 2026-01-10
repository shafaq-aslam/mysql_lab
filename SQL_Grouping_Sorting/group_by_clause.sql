-- GROUP BY 

-- Group smartphones by brand and get the count, average price, max rating, avg screen size, and avg battery capacity
SELECT brand_name, COUNT(*) AS 'num_phones', 
ROUND(AVG(price)) AS 'avg_price',
MAX(rating) AS 'max_rating',
ROUND(AVG(screen_size), 2) AS 'avg_screen_size',
ROUND(AVG(battery_capacity)) AS 'avg_battery_capacity'
FROM mysqllab.smartphones
Group By brand_name
ORDER BY num_phones DESC;


-- Group smartphones by whether they have an NFC and get the average price and rating
-- Group smartphones by the extended memory available and get the average price
-- Group smartphones by the brand and processor brand and get the count of models and the average primary camera resolution (rear)
-- Find top 5 most costly phone brands
-- Which brand makes the smallest screen smartphones
-- Avg price of 5g phones vs avg price of non 5g phones
-- Group smartphones by the brand, and find the brand with the highest number of models that have both NFC and an IR blaster
-- Find all samsung 5g enable smartphones and find out the avg price for NFC and Non-NFC phones
-- Find the phone name, price of the costliest phone      