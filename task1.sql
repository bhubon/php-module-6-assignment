SELECT customers.*,COUNT(orders.order_id) AS total_orders
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name, customers.email, customers.phone_number
ORDER BY total_orders DESC;