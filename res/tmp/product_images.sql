SELECT
    pr.id As productId,
    ARRAY_AGG(
        p.url
    ) AS urls
FROM `raw.products` pr
LEFT JOIN `raw.pictures` p ON (p.id, 'product') = (p.external_id, p.type)
GROUP BY 1