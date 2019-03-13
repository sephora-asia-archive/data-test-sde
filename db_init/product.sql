CREATE OR REPLACE TABLE `raw.products`
(
  id INT64,
  name STRING,
  category_id INT64,
  external_id INT64,
  type STRING
) AS 
SELECT 1,'Power Play Foundation	', 1, 5, 'product'
UNION ALL SELECT 2, 'La Petite Robe Noire Eau de Parfum', 1, 12, 'product'
UNION ALL SELECT 3, 'Smoke & Mirrors Grayscale Mini Lip', 4, 11, 'product'
UNION ALL SELECT 4, 'Pore Tightening Bounce Cream', 3, 15, 'product'
UNION ALL SELECT 5, 'Firming & Lifting Contouring Eye Cream', 3, 23, 'product'
UNION ALL SELECT 6, 'Mon Jasmine Noir L Eau Exquise', 1, 54, 'product'
UNION ALL SELECT 7, 'Basic Five Problem Skin Type Starter Kit', 2, 6, 'product'
UNION ALL SELECT 8, 'Basic Five Problem Skin Type Starter Kit', 2, 7, 'sample'