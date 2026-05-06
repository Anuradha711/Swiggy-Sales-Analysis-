# Swiggy Data Analysis Project (SQL)

## 📌 Project Overview
This project involves a comprehensive analysis of Swiggy's restaurant data across various Indian cities. Using **MySQL**, I explored dataset trends, restaurant performance, and consumer preferences. The project demonstrates the application of foundational SQL queries, complex subqueries, and advanced window functions to derive business insights.

## 📊 Key Insights Explored
* **Market Reach:** Analyzed the number of unique cities and restaurant chains operating on the platform.
* **Revenue Analysis:** Calculated revenue metrics (`cost * rating_count`) to identify top-performing restaurants and cities.
* **Customer Behavior:** Filtered restaurants based on ratings and popularity to find high-performing hubs.
* **Cuisine Trends:** Identified the most and least expensive cuisines and determined city-specific cuisine dominance (e.g., Biryani in specific regions).

## 🛠️ Tech Stack
* **Language:** SQL (Structured Query Language)
* **Database:** MySQL
* **Tools:** GitHub, Microsoft Excel (Data Preview)

## 📂 Project Structure
* `restaurants.csv`: The primary dataset containing restaurant names, cities, ratings, cuisines, and costs.
* `SubQueries in SQL.sql`: SQL script focused on data exploration, filtering, and aggregate subqueries.
* `Windows Function in SQL.sql`: SQL script utilizing advanced analytical functions like `RANK()`, `DENSE_RANK()`, and `PARTITION BY`.

## 🚀 Technical Highlights

### 1. Foundational Queries & Subqueries
* Identifying the **highest revenue-generating** restaurants in India.
* Finding restaurants in specific cities (like Delhi or Abohar) with unique performance metrics.
* Calculating the **average rating** and filtering "Best Rated" restaurants.

### 2. Advanced Window Functions
* **Ranking:** Ranked restaurants by cost and revenue both globally and within specific cities.
* **Partitioning:** Used `PARTITION BY city` and `PARTITION BY cuisine` to find the Top 5 restaurants in every category.
* **Row Numbering:** Assigned unique identifiers to records based on price hierarchy to analyze competition.

## 📖 How to Run
1. Clone this repository.
2. Create a database named `Swiggy` in your SQL environment.
3. Import the `restaurants.csv` file into a table named `restaurants`.
4. Execute the `.sql` scripts to see the analysis results.

---
**Author:** [Anuradha Vishwakarma]  
**Goal:** Data Analyst Portfolio Project
