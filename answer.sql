-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations

-- Question 1
-- Show the total payment amount for each payment date.
-- Sort by the latest payment date and show only the top 5 dates.
SELECT paymentDate,
       SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
-- Show the average credit limit for each customer.
-- Group the results by customer name and country.
SELECT customerName,
       country,
       AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3
-- Show the product code, quantity ordered, and total price.
-- Group the results by product code and quantity ordered.
SELECT productCode,
       quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4
-- Show the highest payment amount for each check number.
-- Group the results by check number.
SELECT checkNumber,
       MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
