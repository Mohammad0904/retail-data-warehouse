-- 02_data_seeding.sql

INSERT INTO dim_products VALUES 
(1, 'ZAR-101', 'Oversized Wool Coat', 'Women', 'Outerwear', 199.00, 'M', 'Camel'),
(2, 'ZAR-202', 'Slim Fit Linen Shirt', 'Men', 'Shirts', 59.90, 'L', 'White'),
(3, 'ZAR-303', 'High-Waist Jeans', 'Women', 'Denim', 49.90, 'S', 'Blue');

INSERT INTO dim_stores VALUES 
(1, 'Zara Eaton Centre', 'Toronto', 'GTA', 'Flagship'),
(2, 'Zara Yorkdale', 'Toronto', 'GTA', 'Flagship'),
(3, 'Zara Ste-Catherine', 'Montreal', 'Quebec', 'Flagship');

INSERT INTO dim_customers VALUES 
(1, 'Alice', 'Smith', 'alice@email.com', 'Gold'),
(2, 'Bob', 'Jones', 'bob@email.com', 'Bronze');

-- Mock Transactions
INSERT INTO fact_sales (date, product_id, store_id, customer_id, quantity, unit_price_at_sale, discount_amount, total_revenue) VALUES 
('2024-01-15', 1, 1, 1, 1, 199.00, 0.00, 199.00),
('2024-01-16', 2, 2, 2, 2, 59.90, 10.00, 109.80),
('2024-01-17', 3, 1, 1, 1, 49.90, 0.00, 49.90);