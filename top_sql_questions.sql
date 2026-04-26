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
