USE bank_practice;

SELECT full_name, city, annual_income 
FROM customers 
LIMIT 10;
USE bank_practice;

SELECT full_name, occupation, credit_score 
FROM customers 
LIMIT 8;
SELECT full_name, city, credit_score
FROM customers
WHERE credit_score > 750;
SELECT full_name, city, annual_income
FROM customers
WHERE city = "Mumbai";
SELECT full_name, city, annual_income
FROM customers
ORDER BY annual_income DESC
LIMIT 10;
SELECT full_name, city, credit_score
FROM customers
WHERE city = "Pune"
ORDER BY credit_score DESC
LIMIT 11;
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;
SELECT loan_type, COUNT(*) AS total_loans
FROM loans
GROUP BY loan_type
ORDER BY total_loans DESC;
SELECT loan_type, 
       COUNT(*) AS total_loans,
       SUM(loan_amount) AS total_amount_disbursed
FROM loans
GROUP BY loan_type
ORDER BY total_amount_disbursed DESC;
SELECT status, COUNT(*) AS total_loans
FROM loans
GROUP BY status
ORDER BY total_loans DESC;
SELECT c.full_name, c.city, l.loan_type, l.loan_amount, l.status
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
LIMIT 10;
SELECT c.full_name, c.city, l.loan_type, l.loan_amount, l.status
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE l.status = 'Defaulted'
LIMIT 10;
SELECT c.city, COUNT(l.loan_id) AS total_loans, 
       SUM(l.loan_amount) AS total_amount
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY c.city
ORDER BY total_loans DESC;
SELECT c.occupation, COUNT(*) AS default_count
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE l.status = 'defaulted'
GROUP BY c.occupation
ORDER BY default_count DESC;
SELECT c.city, COUNT(l.loan_id) AS total_loans
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
GROUP BY c.city
HAVING total_loans > 30
ORDER BY total_loans DESC;
SELECT loan_type, AVG(loan_amount) AS avg_amount
FROM loans
GROUP BY loan_type
HAVING avg_amount > 500000;
SELECT full_name, city, credit_score
FROM customers
WHERE credit_score > (SELECT AVG(credit_score) FROM customers)
ORDER BY credit_score DESC;
SELECT c1.full_name, c1.city, c1.annual_income
FROM customers c1
WHERE c1.annual_income > (
    SELECT AVG(c2.annual_income)
    FROM customers c2
    WHERE c2.city = c1.city
)
ORDER BY c1.city, c1.annual_income DESC;

