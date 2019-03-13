CREATE OR REPLACE TABLE `raw.pictures`
(
  id INT64,
  external_id INT64,
  type STRING,
  url STRING
) AS 
SELECT 1, 5, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?h'
UNION ALL SELECT 2, 12, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?g'
UNION ALL SELECT 3, 11, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?f'
UNION ALL SELECT 4, 15, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?e'
UNION ALL SELECT 5, 23, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?d'
UNION ALL SELECT 6, 54, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?c'
UNION ALL SELECT 7, 23, 'product', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?b'
UNION ALL SELECT 8, 45, 'sample', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 2, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 3, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 4, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 5, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 6, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 7, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 8, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 9, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 10, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 10, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 11, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 13, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 14, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 15, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 16, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
UNION ALL SELECT 8, 17, 'variant', 'https://www.sephora.sg/assets/vue/assets/images/icons/sephora-logo-958a1bfa76916f5206453ee6eb3faafd.svg?a'
