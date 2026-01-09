-- SORTING DATA (ORDER BY)
SELECT * FROM mysqllab.smartphones;

-- Find top 5 samsung phones with biggest screen size
SELECT model, screen_size FROM mysqllab.smartphones
WHERE brand_name = 'samsung'
ORDER BY screen_size DESC LIMIT 5;

-- Sort all the phones in decending order of number of total camera
SELECT brand_name, model, num_front_cameras + num_rear_cameras AS 'total_camera' 
FROM mysqllab.smartphones
ORDER BY total_camera DESC;

-- Sort data on the basis of ppi in decreasing order  
SELECT model, ROUND(SQRT(resolution_height*resolution_height + resolution_width*resolution_width)/screen_size, 2) AS 'PPI' 
FROM mysqllab.smartphones
ORDER BY PPI DESC;

-- Find the phone with second largest battery
SELECT model, battery_capacity FROM mysqllab.smartphones
ORDER BY battery_capacity DESC LIMIT 1, 1; -- 1 is offset, 1 is no of rows

-- Find the name and rating of the worst ratted apple phone  
SELECT model, rating FROM mysqllab.smartphones
WHERE brand_name = 'apple'
ORDER BY rating ASC LIMIT 1;

-- Sort phones alphabetically and then on the basis of rating in desc order
SELECT brand_name, model, rating FROM mysqllab.smartphones
ORDER BY brand_name ASC, rating DESC;

-- Sort phones alphabetically and then on the basis of price in asc order
SELECT brand_name, model, rating, price FROM mysqllab.smartphones
ORDER BY brand_name ASC, price ASC;