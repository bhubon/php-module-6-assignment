-- Active: 1694088580904@@127.0.0.1@3306@php_assignment
SELECT
customers.customer_name,
SUM(products.price * order_items.quantity ) as total_purchase
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN order_items ON order_items.order_id = orders.order_id
JOIN products ON products.product_id = order_items.product_id
GROUP BY customers.customer_name
ORDER BY total_purchase DESC
LIMIT 5