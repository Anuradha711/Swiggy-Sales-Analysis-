# 🍔 Swiggy Restaurant Analytics — Advanced SQL Case Study

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=flat-square&logo=mysql)
![Level](https://img.shields.io/badge/Level-Advanced-orange?style=flat-square)
![Focus](https://img.shields.io/badge/Focus-Business%20Insights-success?style=flat-square)

## 📌 Overview

This project analyzes Swiggy’s restaurant ecosystem across India using advanced SQL to uncover **revenue drivers, market leaders, and competitive positioning**.

It is designed as a **real-world analytics case study**, demonstrating how data analysts translate business questions into actionable insights using structured query logic.

---

## 🎯 Problem Statement

Food delivery platforms operate across multiple cities, cuisines, and pricing tiers.  
The key challenge is to identify:

- Which restaurants and cities drive the most revenue  
- How pricing impacts demand  
- Which cuisines dominate premium vs mass markets  
- Whether large chains outperform independent restaurants  

---

## 🗃️ Dataset

- ~61K+ restaurant records  
- Multi-city coverage across India  
- Includes ratings, pricing, cuisine, and demand indicators  

**Key Metric Used:**
```
Revenue = cost × rating_count
```

---

## 🧠 Approach

The analysis is divided into two layers:

### 1. Exploratory + Business Analysis
- Aggregations and filtering
- Subqueries for dynamic comparisons
- Revenue estimation and ranking

### 2. Advanced Competitive Analysis
- Window functions (`RANK`, `DENSE_RANK`, `ROW_NUMBER`)
- Partitioning by city and cuisine
- Market-relative comparisons instead of global averages

---

## 📊 Key Insights

- Revenue is driven by **price × demand**, not ratings alone  
- A small number of cities contribute disproportionately to total revenue  
- Premium pricing works only when supported by strong demand  
- Some independent restaurants outperform large chains  
- Cuisine pricing varies significantly across markets  

---

## 🛠️ SQL Concepts Used

- Subqueries (correlated + nested)
- Window Functions
- Aggregations (`SUM`, `AVG`, `COUNT`, `MAX`)
- GROUP BY & HAVING
- Derived metrics and dynamic filtering

---

## 📁 Project Structure

```
swiggy-sql-analysis/
├── restaurants.csv
├── SubQueries_in_SQL.sql
├── Windows_Function_in_SQL.sql
└── README.md
```

---

## ⚙️ How to Run

```sql
CREATE DATABASE Swiggy;
USE Swiggy;
```

```sql
LOAD DATA INFILE 'path/to/restaurants.csv'
INTO TABLE restaurants
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

Run:
```
SubQueries_in_SQL.sql
Windows_Function_in_SQL.sql
```

---

## 🚀 What This Project Demonstrates

- Strong SQL fundamentals + advanced analytics
- Ability to connect data with business decisions
- Structured thinking similar to real product/data teams
- Clean, scalable query writing

---

## 👩‍💻 Author

**Anuradha Vishwakarma**  
Data Analyst | SQL | Python | Excel  

---

## ⭐ If you find this useful

Star ⭐ the repo and feel free to fork or build on top of it.
