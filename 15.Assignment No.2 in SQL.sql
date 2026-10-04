DROP TABLE IF EXISTS products;
CREATE TABLE products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price NUMERIC(10,2),
Quantity INT,
added_date DATE,
discount_rate NUMERIC(5,2)
);
INSERT INTO products (product_name,category,price,Quantity, added_date, discount_rate) VALUES
('Laptop','Electronics',75000.50,10,'2024-01-15',10.00),
('Smartphone','Electronics',45000.50,25,'2025-03-15',5.00),
('Headphones','Accessories',7500.50,15,'2023-10-23',15.00),
('Office Chair','Furniture',5500.50,5,'2026-05-05',20.00),
('Desk','Furniture',5000.50,12,'2022-01-15',12.00),
('Monitor','Electronics',12000.50,6,'2025-03-15',5.00),
('Printer','Accessories',50500.50,4,'2013-10-23',15.00),
('Mouse','Accessories',500.50,8,'2023-11-23',35.00)

SELECT * FROM products;

-- Q.1 Classify if product quantity is 10 or more {IN STOCK} , if between 5 to 9 {LIMITED STOCK} and if less than = 4 {OUT OF STOCK}

SELECT product_name,quantity,
   CASE 
  WHEN quantity >= 10 THEN 'IN STOCK'
  WHEN quantity >= 5 AND quantity <= 9 THEN 'LIMITED STOCK'
  Else 'OUT OF STOCK'
  END AS stock_status
FROM products;

--Q.2 Classify if product categoryis Electronics as{Electronic Item}, if Accessories as {Accessories Item} and 
      --Furniture as {Furniture item} 
	  
SELECT product_name,category,
   CASE 
  WHEN category LIKE '%Electronics' THEN 'Electronic Item'
  WHEN category LIKE '%Accessories' THEN 'Accessories Item'
  Else 'Furniture Item'
  END AS category_type
FROM products;
