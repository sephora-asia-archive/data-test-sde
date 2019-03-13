SELECT
    v.product_id AS productId,
    v.id AS skuId,
    p.purchase_prices AS purchasePrices,
    i.urls AS urls,
    inv.inventory_count AS inventoryCount
FROM `raw.variants` v
  LEFT JOIN `tmp.item_purchase_prices` p ON p.sku_id = v.id
  LEFT JOIN `tmp.variant_images` i ON i.sku_id = v.id
  LEFT JOIN `tmp.inventory_items` inv ON inv.sku_id = v.id