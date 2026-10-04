# SQL Assignment 2 - PostgreSQL & Conditional Logic

This repository contains my second practical assignment focusing on **PostgreSQL** database management and advanced querying using pgAdmin 4.

## 🚀 What's Covered
* **Table Creation & Schema Design:** Built a `products` table featuring a `SERIAL PRIMARY KEY`, `VARCHAR`, `NUMERIC` data types for precise pricing/discounts, and `DATE` fields.
* **Data Insertion:** Populated the table with realistic sample records across various product categories (Electronics, Accessories, Furniture).
* **Conditional Logic (`CASE` Statements):** 
  * **Stock Status Classification:** Categorized inventory levels dynamically into `IN STOCK`, `LIMITED STOCK`, and `OUT OF STOCK` based on product quantity thresholds.
  * **Category Formatting:** Transformed raw database category strings into cleaner display labels using pattern matching (`LIKE`) and conditional cases.

## 📂 File Structure
* `assignment-02.sql` - The complete PostgreSQL script containing the `CREATE TABLE`, `INSERT`, and `SELECT` queries.

## 🛠️ Tools Used
* PostgreSQL 18
* pgAdmin 4
* Visual Studio Code / GitHub
