/* ==========================================================
   TOP SQL INTERVIEW QUESTIONS
-------------------------------------------------------------
This file contains commonly asked SQL interview problems
with example solutions.

Author: Parin Patil
Purpose: SQL practice and interview preparation
========================================================== */

/* ==========================================================
   QUESTION 1
   Find the second highest salary
========================================================== */

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

/* ==========================================================
   QUESTION 2
   Find duplicate records in a table
========================================================== */

SELECT name, COUNT(*) AS duplicate_count
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;

/* ==========================================================
   QUESTION 3
   Find employees earning more than the average salary
========================================================== */

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

/* ==========================================================
   QUESTION 4
   Find the highest salary in each department
========================================================== */

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

/* ==========================================================
   QUESTION 5
   Find employees who joined in the last 30 days
========================================================== */

SELECT *
FROM employees
WHERE join_date >= DATEADD(DAY, -30, GETDATE());
