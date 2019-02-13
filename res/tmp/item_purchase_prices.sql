SELECT
    l.sku_id AS sku_id,
    i.batch_id,
    ARRAY_AGG(
        STRUCT(
            i.purchase_price,
            i.currency
        )
    ) AS purchase_prices
FROM
    `raw.purchase_line_items` l
    INNER JOIN `raw.purchase_items` i ON l.batch_purchase_id = i.batch_id
GROUP BY 1, 2