CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    profit DECIMAL(10,2)
);

SELECT ROUND(SUM(sales),2) AS total_sales FROM sales;

SELECT ROUND(SUM(profit),2) AS total_profit FROM sales;

SELECT region, ROUND(SUM(sales),2) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;
