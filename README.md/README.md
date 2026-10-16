# 🛒 E-Commerce Sales Analysis

A MySQL-based E-Commerce Sales Analysis project focused on analyzing customer behavior, product performance, sales, revenue, orders, and payment activity using practical SQL queries.

The project uses a relational e-commerce database and applies SQL techniques to answer both **business-oriented questions** and **analytical problems**.

---

## 📌 Project Overview

This project was built to practice and demonstrate how SQL can be used to work with relational business data and generate meaningful analytical results.

The database contains information about:

* Customers
* Products
* Categories
* Orders
* Order Items
* Payments
* Employees

The analysis connects these tables using relationships and SQL queries to explore customer purchasing behavior, product and category performance, revenue, orders, and other business metrics.

---

## 🎯 Project Objectives

The main objectives of this project are to:

* Analyze customer purchasing behavior
* Identify high-value customers
* Analyze product and category performance
* Calculate sales and revenue metrics
* Analyze city-wise business performance
* Examine payment activity
* Practice advanced SQL techniques
* Convert business questions into SQL queries
* Generate business-oriented insights from query results

---

## 🔍 Key Analysis Areas

### 👥 Customer Analysis

* Customer order frequency
* Total customer spending
* Average order value
* High-value customers
* Customer purchase behavior
* Customer segmentation

### 📦 Product Analysis

* Product sales
* Product revenue
* Best-performing products
* Product purchase frequency
* Products with low or no sales activity

### 🏷️ Category Analysis

* Category-wise revenue
* Category performance
* Customer purchases across multiple categories

### 💰 Sales & Revenue Analysis

* Total revenue
* City-wise revenue
* Category revenue
* Product revenue
* Monthly sales analysis
* Order-level sales analysis

### 💳 Payment Analysis

* Payment methods
* Payment statuses
* Payment amounts
* Paid, pending, and failed payments


---

## 🧠 SQL Concepts Used

This project covers a wide range of SQL concepts, including:

* `SELECT`
* `WHERE`
* `ORDER BY`
* `LIMIT`
* Aggregate Functions
* `GROUP BY`
* `HAVING`
* `CASE`
* Aliases
* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* `UNION`
* `UNION ALL`
* Subqueries
* Single-row Subqueries
* Multiple-row Subqueries
* `IN`
* `EXISTS`
* Views
* Indexes
* Composite Indexes
* `EXPLAIN`
* Business-oriented SQL analysis

---

## 🗂️ Project Structure

```text
Ecommerce-Sales-Analysis/
│
├── database/
│   └── ecommerce_database.sql
│
├── sql/
│   ├── main_business_analysis.sql
│   └── README.md
│
├── practice/
│   └── sql_practice_200_plus_questions.sql
│
├── insights/
│   └── key_insights.md
│
├── screenshots/
│
└── README.md
```

### 📁 `database/`

Contains the database schema, table definitions, relationships, constraints, and inserted dataset.

### 📁 `sql/`

Contains the selected SQL queries used for the main portfolio and business analysis.

### 📁 `practice/`

Contains the complete **200+ SQL question-and-query practice work** completed during the project.

### 📁 `insights/`

Contains business insights derived from the actual SQL analysis results.

### 📁 `screenshots/`

Contains selected screenshots of SQL query results and analysis outputs.

---

## 🛠️ Tools & Technologies

| Technology          | Purpose                                   |
| ------------------- | ----------------------------------------- |
| **MySQL**           | Database management and SQL analysis      |
| **SQL**             | Data querying and business analysis       |
| **MySQL Workbench** | Query development and database management |

---

## 📊 Database Design

The project follows a relational database structure where customers place orders, orders contain products through order items, and orders are associated with payment records.

```text
Customers
    │
    └── Orders
          │
          ├── Order_Items ─── Products ─── Categories
          │
          └── Payments

Employees
```

---

## 💡 Business-Focused Approach

Instead of focusing only on SQL syntax, the project uses SQL to answer practical questions such as:

* Who are the highest-spending customers?
* Which products generate the most revenue?
* Which categories perform the best?
* Which cities generate the highest revenue?
* How many orders does each customer place?
* What is the average order value?
* Which payment methods are being used?
* Which customers purchase products from multiple categories?

The goal is to demonstrate how SQL can be applied to **real-world business analysis scenarios**.

---

## 📚 SQL Practice Work

Alongside the main business analysis, the project contains a separate collection of **200+ SQL questions and solutions**.

The practice collection covers SQL from fundamental concepts through more advanced topics such as joins, aggregations, views, indexes, subqueries, and business problems.

The complete practice work is preserved separately so that the main portfolio analysis remains clean and easy to review.

---

## 🚀 Project Status

**Completed**

The database, SQL analysis, advanced SQL practice, business analysis queries, and project documentation have been organized as part of the project.

Further improvements can include additional datasets, visual dashboards, and deeper time-based analysis as more transactional data becomes available.

---

## 👤 Author

**Krishan**

BCA Graduate | Aspiring Data Analyst

Interested in **SQL, Excel, Power BI, Data Analytics, and AI/ML**.
