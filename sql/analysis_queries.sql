-- Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM retail_transactions;

-- Revenue by Country
SELECT country, SUM(revenue) AS total_revenue
FROM retail_transactions
GROUP BY country
ORDER BY total_revenue DESC;

-- Top 10 Customers
SELECT customerid, SUM(revenue) AS total_spent
FROM retail_transactions
GROUP BY customerid
ORDER BY total_spent DESC
LIMIT 10;

-- Monthly Revenue Trend
SELECT DATE_TRUNC('month', invoicedate) AS month,
       SUM(revenue) AS revenue
FROM retail_transactions
GROUP BY month
ORDER BY month;
