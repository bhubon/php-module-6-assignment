SELECT categories.category_name,
SUM(products.price * oi.quantity) as total_revenue
FROM products
JOIN order_items as oi ON oi.product_id = products.product_id
JOIN categories ON categories.category_id = products.category_id
GROUP BY categories.category_name
ORDER BY total_revenue DESC;