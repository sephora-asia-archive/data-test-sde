CREATE OR REPLACE TABLE `raw.pictures`
(
  id INT64,
  external_id INT64,
  type STRING,
  url STRING
) AS 
SELECT 1, 5, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 2, 12, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 3, 11, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 4, 15, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 5, 23, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 6, 54, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 7, 6, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'
UNION ALL SELECT 8, 7, 'sample', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg'