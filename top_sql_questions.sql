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

/* ==========================================================
   QUESTION 6
   Find total number of employees in each department
========================================================== */

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;


/* ==========================================================
   QUESTION 7
   Find employees whose names start with 'A'
========================================================== */

SELECT *
FROM employees
WHERE name LIKE 'A%';


/* ==========================================================
   QUESTION 8
   Find the top 3 highest salaries
========================================================== */

SELECT TOP 3 *
FROM employees
ORDER BY salary DESC;


/* ==========================================================
   QUESTION 9
   Find departments having more than 5 employees
========================================================== */

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;


/* ==========================================================
   QUESTION 10
   Rank employees based on salary
========================================================== */

SELECT 
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
