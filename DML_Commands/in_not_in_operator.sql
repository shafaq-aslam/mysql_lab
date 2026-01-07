SELECT * FROM mysqllab.smartphones
WHERE processor_brand = 'snapdragon'
OR processor_brand = 'bionic'
OR processor_brand = 'exynos';

-- IN / NOT IN OPERATOR
-- Find all phones having processor snapdragon or bionic, exynos.
SELECT * FROM mysqllab.smartphones
WHERE processor_brand IN ('snapdragon', 'bionic', 'exynos'); 

-- Find all phones which are not samsung or apple
SELECT * FROM mysqllab.smartphones
WHERE brand_name NOT IN ('apple', 'samsung');