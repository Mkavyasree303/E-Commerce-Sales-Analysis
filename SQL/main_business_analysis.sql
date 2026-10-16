USE EcommerceDB;

-- ============================================================
-- E-COMMERCE SALES ANALYSIS | PORTFOLIO QUERIES
-- ============================================================

-- 01. Customer overview
SELECT
    customer_id,
    CONCAT(first_name, ' ', last_name) AS customer_name,
    city,
    state,
    signup_date
FROM Customers;

-- 02. Order status distribution
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY order_status
ORDER BY total_orders DESC;

-- 03. Total quantity sold by product
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC;

-- 04. Product revenue
SELECT
    p.product_id,
    p.product_name,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;

-- 05. Category revenue
SELECT
    c.category_id,
    c.category_name,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name
ORDER BY total_revenue DESC;

-- 06. City-wise revenue
SELECT
    c.city,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC;

-- 07. Highest-revenue product
SELECT
    p.product_id,
    p.product_name,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
LIMIT 1;

-- 08. Highest-revenue category
SELECT
    c.category_id,
    c.category_name,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name
ORDER BY total_revenue DESC
LIMIT 1;

-- 09. Highest-revenue city
SELECT
    c.city,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.city
ORDER BY total_revenue DESC
LIMIT 1;

-- 10. Customer order count and recorded payment amount
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    COALESCE(SUM(py.amount), 0) AS total_payment_amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
LEFT JOIN Payments py ON o.order_id = py.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_payment_amount DESC;

-- 11. Highest customer payment amount
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(py.amount) AS total_payment_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments py ON o.order_id = py.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_payment_amount DESC
LIMIT 1;

-- 12. Paid spending by customer (more meaningful than summing failed/pending payments)
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0) AS paid_spending
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
LEFT JOIN Payments py ON o.order_id = py.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY paid_spending DESC;

-- 13. Average order value using order-level payment totals
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0)
        / NULLIF(COUNT(DISTINCT o.order_id), 0), 2
    ) AS average_order_value
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
LEFT JOIN Payments py ON o.order_id = py.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY average_order_value DESC;

-- 14. Payment method performance
SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_amount
FROM Payments
GROUP BY payment_method
ORDER BY total_amount DESC;

-- 15. Successful payment performance by method
SELECT
    payment_method,
    COUNT(*) AS paid_transactions,
    SUM(amount) AS paid_amount
FROM Payments
WHERE payment_status = 'Paid'
GROUP BY payment_method
ORDER BY paid_amount DESC;

-- 16. Customers with more than one order
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;

-- 17. Customers who purchased from more than one category
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT p.category_id) AS categories_purchased
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT p.category_id) > 1
ORDER BY categories_purchased DESC;

-- 18. Products that have never been ordered
SELECT
    p.product_id,
    p.product_name,
    p.price
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- 19. Customers who have never placed an order
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 20. Products priced above the average product price
SELECT
    product_id,
    product_name,
    price
FROM Products
WHERE price > (SELECT AVG(price) FROM Products)
ORDER BY price DESC;

-- 21. Customers who purchased the most expensive product
SELECT DISTINCT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE p.price = (SELECT MAX(price) FROM Products);

-- 22. Customers with at least one successful payment using EXISTS
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    JOIN Payments py ON o.order_id = py.order_id
    WHERE o.customer_id = c.customer_id
      AND py.payment_status = 'Paid'
);

-- 23. Products that appear in any order using EXISTS
SELECT
    p.product_id,
    p.product_name
FROM Products p
WHERE EXISTS (
    SELECT 1
    FROM Order_Items oi
    WHERE oi.product_id = p.product_id
);

-- 24. Monthly sales summary
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    SUM(p.price * oi.quantity) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY sales_month;

-- 25. Executive sales view
CREATE OR REPLACE VIEW Executive_Sales_View AS
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0) AS total_spending,
    ROUND(
        COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0)
        / NULLIF(COUNT(DISTINCT o.order_id), 0), 2
    ) AS average_order_value,
    CASE
        WHEN COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0) >= 50000 THEN 'Platinum'
        WHEN COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0) >= 25000 THEN 'Gold'
        WHEN COALESCE(SUM(CASE WHEN py.payment_status = 'Paid' THEN py.amount ELSE 0 END), 0) >= 10000 THEN 'Silver'
        ELSE 'Bronze'
    END AS customer_category
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
LEFT JOIN Payments py ON o.order_id = py.order_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.city;

-- 26. Retrieve Gold and Platinum customers
SELECT *
FROM Executive_Sales_View
WHERE customer_category IN ('Gold', 'Platinum')
ORDER BY total_spending DESC;

-- 27. Category revenue contribution
SELECT
    c.category_name,
    SUM(p.price * oi.quantity) AS category_revenue,
    ROUND(
        SUM(p.price * oi.quantity) * 100.0 /
        (SELECT SUM(p2.price * oi2.quantity)
         FROM Products p2
         JOIN Order_Items oi2 ON p2.product_id = oi2.product_id), 2
    ) AS revenue_percentage
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name
ORDER BY category_revenue DESC;

-- 28. Order status with payment status overview
SELECT
    o.order_status,
    py.payment_status,
    COUNT(*) AS total_orders
FROM Orders o
JOIN Payments py ON o.order_id = py.order_id
GROUP BY o.order_status, py.payment_status
ORDER BY total_orders DESC;

-- 29. Shipping delivery status summary
SELECT
    delivery_status,
    COUNT(*) AS total_shipments
FROM Shipping
GROUP BY delivery_status
ORDER BY total_shipments DESC;

-- 30. Revenue by customer state
SELECT
    c.state,
    SUM(p.price * oi.quantity) AS total_revenue
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.state
ORDER BY total_revenue DESC;
