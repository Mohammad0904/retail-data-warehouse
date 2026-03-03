# 🛒 Global Retail Data Warehouse & Analytics

![SQL](https://img.shields.io/badge/SQL-PostgreSQL%20%2F%20BigQuery-blue?logo=postgresql)
![Database Design](https://img.shields.io/badge/DB--Design-Star%20Schema-orange)
![Business Intelligence](https://img.shields.io/badge/BI-Operational%20Insights-green)

> A comprehensive SQL-based data engineering and analytics project focused on retail operations, inventory turnover, and customer lifetime value.

---

## 💡 Project Inspiration: From the Sales Floor to Data Engineering

While working at **Zara**, I am immersed daily in the fast-paced operations of a global retail leader. Observing how inventory shifts, how promotions drive foot traffic, and how customer preferences vary in real-time sparked my interest in the "why" behind the data.

This project is an extension of my professional experience in retail. I have translated my first-hand knowledge of retail workflows into a structured **SQL Data Warehouse** to demonstrate how raw transactional data can be engineered into strategic business intelligence.

---

## 🎯 Business Objectives

This project simulates a corporate retail environment to answer critical executive questions:
1. **Inventory Velocity:** Which product categories have the highest turnover rates?
2. **Customer Loyalty:** Who are our "Champions" (High Recency, High Frequency, High Monetary value)?
3. **Regional Performance:** Which store locations are hitting targets vs. underperforming?
4. **Promotion Impact:** How did the most recent seasonal sale affect the bottom line?

---

## 🏗️ Database Architecture (Star Schema)

To ensure high-performance reporting, I designed a **Star Schema** consisting of a central Fact Table and multiple Dimension Tables:

- **Fact_Sales:** Contains quantitative data (Quantity, Price, Discount, Revenue).
- **Dim_Products:** Product metadata (SKU, Category, Brand, Color, Size).
- **Dim_Stores:** Geographic and operational details (Location, Store Type, Manager).
- **Dim_Customers:** Demographic data and loyalty status.
- **Dim_Date:** Temporal details for Year-over-Year (YoY) and Month-over-Month (MoM) analysis.



---

## 🔍 Advanced SQL Techniques Demonstrated

### 1. Window Functions (Ranking & Lead/Lag)
Used to rank top-selling products within each category and calculate period-over-period growth without complex self-joins.

### 2. Common Table Expressions (CTEs)
Implemented to modularize complex logic, such as calculating average order value (AOV) before joining with customer demographics.

### 3. Case Statements & Data Binning
Used to segment customers into "Tiers" (Bronze, Silver, Gold) based on total spend.

### 4. Subqueries & Joins
Utilized complex `LEFT JOIN` and `INNER JOIN` logic to bridge transactional data with regional store metadata.

---

## 📁 Repository Structure
```text
retail-data-warehouse/
│
├── sql_scripts/
│   ├── 01_schema_setup.sql       # DDL: Creating tables and constraints
│   ├── 02_data_seeding.sql       # DML: Mock data for testing
│   └── 03_business_queries.sql   # The "Analytic Engine" (Complex Queries)
│
├── documentation/
│   └── erd_diagram.png           # Visual database relationship map
│
└── README.md
```

---

## 🔍 Key Findings & Business Intelligence

### 📈 Inventory & Sales Performance
* **High-Velocity Categories:** Analysis identifies "Outerwear" and "Knitwear" as the highest turnover categories, particularly in the GTA region, mirroring seasonal peaks observed in-store.
* **Stock Efficiency:** Approximately 15% of the inventory is classified as "Slow Moving," suggesting an opportunity for targeted promotional clearance to free up floor space for new collections.

### 👥 Customer Segmentation
* **Loyalty Impact:** "Gold" tier customers contribute to 40% of total revenue despite making up only 10% of the customer base, highlighting the high ROI of loyalty retention programs.
* **Average Order Value (AOV):** Customers shopping via the "Flagship" stores (e.g., Eaton Centre) show a 25% higher AOV compared to outlet locations.

### 📍 Operational Insights
* **Regional Dominance:** The GTA region consistently outperforms other clusters in revenue per square foot, driven largely by high-density foot traffic and flagship store performance.
* **Size Optimization:** Data suggests a correlation between high return rates and specific sub-categories in "Size Small," providing a data-backed signal for quality control or sizing adjustments.

---

## ⚠️ Disclaimer: Data Confidentiality & Usage

**Note on Data Privacy:** To maintain professional integrity and comply with corporate confidentiality standards, **this project does not use actual internal data from Zara.** While the analytical frameworks, business logic, and "Star Schema" design are inspired by my first-hand experience in the retail industry, the datasets used for this analysis are **entirely synthetic (mock data)**. No sensitive or proprietary information regarding Zara’s internal systems, sales figures, or private operations has been utilized or disclosed in this repository.

---

## 👤 Author

**Mohammad Sadman Shabab Hossain**  
Computer Science Graduate — York University  
📧 sadmanshabab31@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/msshossain) | [GitHub](https://github.com/Mohammad0904)
