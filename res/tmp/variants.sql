SELECT
    f.product_id AS productId
    v.id AS skuId,
    p.purchase_prices AS purchasePrices,
    i.urls AS urls,
    inv.inventory_count AS inventoryCount
FROM `raw.variants` v
LEFT JOIN `tmp.item_purchase_prices` p
LEFT JOIN `tmp.variant_images` i
LEFT JOIN `tmp.inventory_items` inv