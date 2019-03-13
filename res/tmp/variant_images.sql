SELECT
    v.id AS sku_id,
    ARRAY_AGG(
        p.url
    ) AS urls
FROM `raw.variants` v
  LEFT JOIN `raw.pictures` p ON v.id = p.external_id
WHERE p.type = 'variant'
GROUP BY 1