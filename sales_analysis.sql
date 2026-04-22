Create Table
CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INTEGER
);


 Insert Data
INSERT INTO online_sales VALUES
(1, '2024-01-05', 250.00, 101),
(2, '2024-01-15', 300.00, 102),
(3, '2024-02-10', 150.00, 103),
(4, '2024-02-18', 400.00, 101),
(5, '2024-03-02', 500.00, 104),
(6, '2024-03-10', 200.00, 102),
(7, '2024-03-15', 350.00, 103);


 Monthly Revenue & Order Volume
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY year, month
ORDER BY year, month;


 Top 3 Months by Revenue
SELECT 
    strftime('%Y-%m', order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY month
ORDER BY revenue DESC
LIMIT 3;