CREATE OR REPLACE TABLE `raw.categories`
(
  id INT64,
  category_name STRING
) AS 
SELECT 1,'perfume'
UNION ALL SELECT 2, 'foundation'
UNION ALL SELECT 3, 'cream'
UNION ALL SELECT 4, 'lipstick'