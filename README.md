# 🏦 Bank Loan Analysis — SQL Project

## Overview
End-to-end SQL analysis on a banking dataset using MySQL. 
Built a 3-table relational database from scratch and wrote 
18 queries ranging from basic SELECT to correlated subqueries.

## Database Structure
| Table | Rows | Description |
|---|---|---|
| customers | 300 | Demographics, income, credit score |
| loans | 393 | Loan type, amount, status, EMI |
| payments | 500 | Payment history, on-time vs late |

## SQL Concepts Covered
- SELECT, WHERE, ORDER BY, LIMIT
- GROUP BY with COUNT, SUM, AVG
- HAVING clause
- INNER JOIN across multiple tables
- Subqueries & Correlated Subqueries

## Key Business Insights
- 🏠 Home Loans have highest avg ticket size (₹32L)
- ⚠️ Freelancers & Self-Employed default most frequently
- ✅ Salaried-Private customers are lowest default risk
- 📍 Active loans (213) outnumber Defaulted (37) — 9.4% default rate

## Tools Used
- MySQL 8.0
- MySQL Workbench
