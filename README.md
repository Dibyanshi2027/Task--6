# 📊 Sales Trend Analysis (Task 6)

## 🎯 Objective
Analyze monthly revenue and order volume using SQL aggregation.

## 🛠 Tools Used
- SQLite 

## 📁 Dataset
Table: online_sales

Columns:
- order_id
- order_date
- amount
- product_id

## 🔍 Approach
- Extracted year and month from order_date
- Used SUM() to calculate revenue
- Used COUNT(DISTINCT order_id) for order volume
- Grouped data using GROUP BY
- Sorted results using ORDER BY

## 📈 Results

| Year | Month | Revenue | Orders |
|------|------|--------|--------|
| 2024 | 01   | 550    | 2      |
| 2024 | 02   | 550    | 2      |
| 2024 | 03   | 1050   | 3      |

## 🏆 Top 3 Months by Sales
- 2024-03 → 1050
- 2024-01 → 550
- 2024-02 → 550

## 📚 Key Learnings
- Aggregate functions (SUM, COUNT)
- GROUP BY and ORDER BY
- Time-based data analysis
