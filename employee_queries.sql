-- ============================================================
--   ORACLE SQL  |  employees Table  |  17 Queries Solution
-- ============================================================


-- ============================================================
--  SECTION 1 : FILTERING ROWS
-- ============================================================

-- Q1. Find all employees where emp_id is within the range 100 and 105
SELECT *
FROM   employees
WHERE  emp_id BETWEEN 100 AND 105;


-- Q2. Find all employees that belong to a specific set of emp_id (151-155)
SELECT *
FROM   employees
WHERE  emp_id IN (151, 152, 153, 154, 155);


-- Q3. Retrieve all employees where first_name starts with 'P' or 'p'
SELECT *
FROM   employees
WHERE  UPPER(first_name) LIKE 'P%';


-- Q4. Retrieve all employees where first_name ends with 'A' or 'a'
SELECT *
FROM   employees
WHERE  UPPER(first_name) LIKE '%A';


-- Q5. Retrieve all employees where first_name contains 'A' or 'a'
SELECT *
FROM   employees
WHERE  UPPER(first_name) LIKE '%A%';


-- Q6. Retrieve all employees where the 3rd character of first_name is 'e' or 'E'
--     ( _ matches exactly one character )
SELECT *
FROM   employees
WHERE  UPPER(first_name) LIKE '__E%';


-- ============================================================
--  SECTION 2 : NULL HANDLING
-- ============================================================

-- Q7. Retrieve all employees who don't have a manager assigned (manager_id IS NULL)
SELECT *
FROM   employees
WHERE  manager_id IS NULL;


-- Q8. Find all employees who have a manager assigned (manager_id IS NOT NULL)
SELECT *
FROM   employees
WHERE  manager_id IS NOT NULL;


-- Q9. Insert a new employee without assigning a manager (NULL for manager_id)
INSERT INTO employees (
    emp_id, first_name, last_name, email,
    hire_date, job_id, salary, manager_id
)
VALUES (
    210, 'Sara', 'Hassan', 'sara.hassan@company.com',
    SYSDATE, 'IT_PROG', 7000, NULL
);

COMMIT;


-- ============================================================
--  SECTION 3 : MULTI-CONDITION FILTERING
-- ============================================================

-- Q10. Find all employees who work in 'AD_VP' OR 'IT_PROG' job
SELECT *
FROM   employees
WHERE  job_id IN ('AD_VP', 'IT_PROG');


-- ============================================================
--  SECTION 4 : SORTING  ( ORDER BY )
-- ============================================================

-- Q11. Retrieve all employees sorted by last_name in ascending order
SELECT *
FROM   employees
ORDER BY last_name ASC;


-- Q12. Retrieve all employees sorted by hire_date in descending order
SELECT *
FROM   employees
ORDER BY hire_date DESC;


-- Q13. Sort employees by department_id ASC, then by salary DESC within each department
SELECT *
FROM   employees
ORDER BY department_id ASC,
         salary        DESC;


-- ============================================================
--  SECTION 5 : STRING FUNCTIONS
-- ============================================================

-- Q14. Retrieve all employees with last_name in lowercase
SELECT emp_id,
       first_name,
       LOWER(last_name) AS last_name
FROM   employees;


-- Q15. Retrieve all employees with first_name in uppercase
SELECT emp_id,
       UPPER(first_name) AS first_name,
       last_name
FROM   employees;


-- Q16. Retrieve all employees with first_name and last_name in title case (INITCAP)
SELECT emp_id,
       INITCAP(first_name) AS first_name,
       INITCAP(last_name)  AS last_name
FROM   employees;


-- Q17. Find employees whose last_name is 'smith' regardless of case
SELECT *
FROM   employees
WHERE  UPPER(last_name) = 'SMITH';


-- ============================================================
--  END OF FILE
-- ============================================================
