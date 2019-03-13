SELECT
    p.id As productId,
    i.urls AS urls,
    c.categories AS categories
FROM `raw.products` p
    LEFT JOIN `tmp.product_images` i ON p.id = i.productId
    LEFT JOIN `tmp.product_categories` c ON p.id = c.productId
