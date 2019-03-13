CREATE OR REPLACE TABLE `raw.variants`
(
id INT64,
name STRING,
product_id INT64
) AS 
SELECT 1, 'natural', 1
UNION ALL SELECT 2, 'soft', 1
UNION ALL SELECT 3, 'deep', 1
UNION ALL SELECT 4, 'default', 6
UNION ALL SELECT 5, 'default', 2
UNION ALL SELECT 6, 'focus_1', 7  
UNION ALL SELECT 7, 'focus_2', 7  
UNION ALL SELECT 8, 'focus_3', 7  
UNION ALL SELECT 9, 'focus_5', 7  
UNION ALL SELECT 10, 'focus_4', 7
UNION ALL SELECT 11, 'focus_1', 8  
UNION ALL SELECT 12, 'focus_2', 8  
UNION ALL SELECT 13, 'focus_3', 8  
UNION ALL SELECT 14, 'focus_5', 8  
UNION ALL SELECT 15, 'focus_4', 8
UNION ALL SELECT 16, 'default', 4
UNION ALL SELECT 17, 'default', 5