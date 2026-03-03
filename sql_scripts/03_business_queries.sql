-- 03_business_queries.sql

-- QUERY 1: Regional Revenue Performance (Window Function)
-- Ranks stores by their total revenue within each region
SELECT 
    region,
    store_name,
    total_store_revenue,
    RANK() OVER (PARTITION BY region ORDER BY total_store_revenue DESC) as region_rank
FROM (
    SELECT 
        st.region,
        st.store_name,
        SUM(s.total_revenue) as total_store_revenue
    FROM fact_sales s
    JOIN dim_stores st ON s.store_id = st.store_id
    GROUP BY st.region, st.store_name
) store_sums;

-- QUERY 2: Customer Loyalty Analysis (CTE)
-- Identifies high-value customers based on spending habits
WITH CustomerSpending AS (
    SELECT 
        c.customer_id,
        c.first_name || ' ' || c.last_name as full_name,
        SUM(s.total_revenue) as total_spent,
        COUNT(s.sale_id) as total_transactions
    FROM fact_sales s
    JOIN dim_customers c ON s.customer_id = c.customer_id
    GROUP BY c.customer_id, full_name
)
SELECT * FROM CustomerSpending 
WHERE total_spent > 150 
ORDER BY total_spent DESC;

-- QUERY 3: Category Turnover (Case Statements)
-- Segments products into "High Performance" vs "Low Performance"
SELECT 
    p.category,
    SUM(s.quantity) as items_sold,
    CASE 
        WHEN SUM(s.quantity) > 100 THEN 'High Velocity'
        WHEN SUM(s.quantity) BETWEEN 50 AND 100 THEN 'Stable'
        ELSE 'Slow Moving'
    END as stock_performance
FROM fact_sales s
JOIN dim_products p ON s.product_id = p.product_id
GROUP BY p.category;