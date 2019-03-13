SELECT
    p.id As productId,
    ARRAY_AGG(
        STRUCT(
            c.category_name AS categoryName
        )
    ) AS categories
FROM `raw.products` p
    LEFT JOIN `raw.categories` c ON  p.category_id = c.id
GROUP BY 1