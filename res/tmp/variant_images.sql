SELECT
    v.id AS sku_id,
    ARRAY_AGG(
        p.url
    ) AS urls
FROM `raw.variants` v
LEFT JOIN `raw.pictures` p ON (v.id, 'variant') = (p.external_id, p.type)
GROUP BY 1