-- 01_schema_setup.sql

-- Create Dimension: Products
CREATE TABLE dim_products (
    product_id INT PRIMARY KEY,
    sku VARCHAR(50) UNIQUE,
    product_name VARCHAR(100),
    category VARCHAR(50), -- e.g., Women, Men, Kids
    sub_category VARCHAR(50), -- e.g., Outerwear, Knitwear
    unit_price DECIMAL(10, 2),
    size VARCHAR(10),
    color VARCHAR(20)
);

-- Create Dimension: Stores
CREATE TABLE dim_stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    region VARCHAR(50), -- e.g., GTA, Quebec, BC
    store_type VARCHAR(20) -- e.g., Flagship, Outlet
);

-- Create Dimension: Customers
CREATE TABLE dim_customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    loyalty_tier VARCHAR(20) -- e.g., Bronze, Silver, Gold
);

-- Create Fact Table: Sales
CREATE TABLE fact_sales (
    sale_id SERIAL PRIMARY KEY,
    date DATE,
    product_id INT REFERENCES dim_products(product_id),
    store_id INT REFERENCES dim_stores(store_id),
    customer_id INT REFERENCES dim_customers(customer_id),
    quantity INT,
    unit_price_at_sale DECIMAL(10, 2),
    discount_amount DECIMAL(10, 2),
    total_revenue DECIMAL(10, 2)
);