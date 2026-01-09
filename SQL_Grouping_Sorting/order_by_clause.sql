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
-- Find the name and rating of the worst ratted apple phone  
-- Sort phones alphabetically and then on the basis of rating in desc order
-- Sort phones alphabetically and then on the basis of price in asc order