-- Question 1 🧑‍💼
-- This query retrieves the first name, last name, email, and office code for all employees.
-- It uses an INNER JOIN to combine the employees and offices tables on the officeCode column,
-- ensuring only employees with a matching office are included in the result.
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2 🛍️
-- This query fetches the product name, vendor, and product line from the products table.
-- It uses a LEFT JOIN to include all products, even if there is no matching product line in the productlines table.
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3 📦
-- This query retrieves the order date, shipped date, status, and customer number for the first 10 orders.
-- It uses a RIGHT JOIN to include all orders, even if there is no matching customer in the customers table.
-- The LIMIT 10 clause restricts the output to the first 10 orders only.
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;
