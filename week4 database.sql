CREATE DATABASE payment;
USE payment;
CREATE TABLE payments (payment_id INT PRIMARY KEY AUTO_INCREMENT, paymentDate DATE, amount DECIMAL(10,2) ); 
SHOW TABLES;
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount_paid
FROM payments
GROUP BY checkNumber;
