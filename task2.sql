SELECT 
    p.product_name,
    oi.quantity,
    oi.total_amount,
    oi.order_id
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
ORDER BY oi.order_id ASC;
