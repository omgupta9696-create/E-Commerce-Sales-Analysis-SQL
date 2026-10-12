# E-Commerce Sales Data Analysis using SQL 🛒

## Project Overview
This project uses **MySQL** to analyze an e-commerce database and answer business questions about customers, products, orders, sales revenue, and customer spending.

It demonstrates how SQL can retrieve, filter, summarize, and connect data from multiple tables to support business decisions.

## Objectives
- Analyze customer and product information.
- Explore product prices and categories.
- Summarize quantities ordered.
- Calculate revenue from completed orders.
- Identify high-spending customers.
- Find products that have never been ordered.
- Analyze monthly revenue for 2025.
- Identify customers who have not placed a completed order.

## Tools Used
- **MySQL** – Database creation and querying
- **SQL** – Data retrieval, filtering, aggregation, and joins
- **GitHub** – Project hosting and documentation

## Database Structure
The database is named `ecom` and contains three tables.

### 1. `customers`
| Column | Description |
|---|---|
| `customer_id` | Unique customer ID and primary key |
| `customer_name` | Customer name |
| `city` | Customer's city |
| `signup_date` | Customer registration date |

### 2. `products`
| Column | Description |
|---|---|
| `product_id` | Unique product ID and primary key |
| `product_name` | Product name |
| `product_category` | Product category |
| `selling_price` | Product selling price |
| `cost_price` | Product cost price |

### 3. `orders`
| Column | Description |
|---|---|
| `order_id` | Unique order ID and primary key |
| `customer_id` | Customer who placed the order; foreign key |
| `product_id` | Product included in the order; foreign key |
| `order_date` | Date of the order |
| `quantity` | Number of units ordered; must be greater than zero |
| `status` | Order status: Completed, Pending, or Cancelled |

The tables are connected through `customer_id` and `product_id` foreign keys.

## SQL Concepts Used
- `SELECT` and `WHERE`
- `ORDER BY` and `LIMIT`
- Aggregate functions: `COUNT()`, `AVG()`, `MAX()`, `MIN()`, and `SUM()`
- `GROUP BY`
- `INNER JOIN` and `LEFT JOIN`
- Filtering by order status
- Date functions: `MONTH()`, `MONTHNAME()`, and `YEAR()`
- Primary keys and foreign keys
- `CREATE DATABASE`, `CREATE TABLE`, and `INSERT INTO`

## Business Questions Answered
1. Display all records from the customer table.
2. Find customers who live in Lucknow.
3. Find products with a selling price greater than 2,000.
4. Display products in descending order of selling price.
5. Find the five cheapest products.
6. Count the total number of customers.
7. Calculate the average selling price of products.
8. Find the maximum and minimum selling prices.
9. Count the products in each category.
10. Calculate the total quantity ordered for each product.
11. Calculate revenue by product category using completed orders, sorted from highest to lowest revenue.
12. Find the top five customers by spending on completed orders.
13. Find products that have never been ordered.
14. Calculate monthly revenue for each month of 2025 from completed orders.
15. Find customers who have never placed a completed order, including customers with no orders at all.

## Revenue Calculation
Revenue is calculated using the product selling price and the quantity ordered:

```sql
SUM(products.selling_price * orders.quantity)
```

For revenue analysis, only orders with status `Completed` are included.

## How to Run the Project
1. Install MySQL Server and a SQL editor such as MySQL Workbench.
2. Download or clone this repository.
3. Open `Project SQL.sql` in MySQL Workbench and execute it to create the `ecom` database, tables, and sample records.
4. Open `Problem Statement and their Solutions.sql` and execute the queries to answer the business questions.

> Run the setup script before the analysis queries because the queries depend on the `ecom` database and its tables.

## Project Files
```text
E-Commerce-Sales-Data-Analysis-SQL/
├── Project SQL.sql
├── Problem Statement and their Solutions.sql
└── README.md
```

## Skills Demonstrated
- SQL querying
- Data retrieval and filtering
- Data aggregation
- Joining multiple tables
- Revenue and customer-spending analysis
- Product category analysis
- Date-based analysis
- Relational database design
- Business problem-solving

## Conclusion
This project demonstrates how SQL can turn e-commerce customer, product, and order data into useful business information. It covers pricing analysis, category summaries, revenue calculation, customer spending, and order-status analysis.

## Author
**Om Gupta**

PGDM | Aspiring Data Analyst

- GitHub: Add your GitHub profile link
- LinkedIn: Add your LinkedIn profile link
