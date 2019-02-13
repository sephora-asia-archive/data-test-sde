WITH product_variants AS (
    SELECT
        p.productId,
        p.categories,
        p.urls AS images
        STRUCT(
            v.skuId,
            v.purchasePrices,
            v.urls AS images,
            v.inventoryCount
        ) AS variant
    FROM `tmp.products` AS p
    LEFT JOIN `tmp.variants` v ON p.productId = v.variantId
)

SELECT
    productId,
    categories,
    images,
    ARRAY_AGG(
        variant
    ) AS variants
FROM 
    product_variants
GROUP BY 1, 2, 3