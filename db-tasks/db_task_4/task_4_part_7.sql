-- 1. AVG Function
-- Question:
-- Write an SQL query to calculate the average salary of all employees from the EMPLOYEES table.
select avg(nvl(SALARY, 0))
from EMPLOYEES;
-- 2. COUNT Function
-- Question:
-- Write an SQL query to count the total number of employees in the EMPLOYEES table.
select count(*)
from EMPLOYEES;
-- 3. MAX Function
-- Question:
-- Write an SQL query to find the maximum salary offered in the EMPLOYEES table.
select max(SALARY)
from EMPLOYEES;
-- 4. MIN Function
-- Question:
-- Write an SQL query to find the minimum salary offered in the EMPLOYEES table.
select min(nvl(salary, 0))
from EMPLOYEES;
-- 5. SUM Function
-- Question:
-- Write an SQL query to calculate the total salary that the company pays to all employees.
select sum(SALARY)
from EMPLOYEES;
-- 6. GROUP BY Clause (Part 1)
-- Question:
-- Write an SQL query to display the department ID and the average salary of employees grouped by department from the EMPLOYEES table.
select DEPARTMENT_ID,
       round(avg(SALARY), 2) as avarage_salarys
from EMPLOYEES
group by DEPARTMENT_ID;
-- 7. GROUP BY Clause (Part 2)
-- Question:
-- Write an SQL query to show job ID and the total number of employees for each job title in the EMPLOYEES table.
select JOB_ID, count(JOB_ID) number_of_emp
from EMPLOYEES
group by JOB_ID;
-- 8. HAVING Clause
-- Question:
-- Write an SQL query to display the department ID and the total salary of employees only for departments where the total salary exceeds 50,000.
-- (Hint: Use GROUP BY and HAVING together.)
select DEPARTMENT_ID, sum(SALARY) as total_salary
from EMPLOYEES
group by DEPARTMENT_ID
having sum(SALARY) >= 50000;
-- 9. AVG Function (Advanced)
-- Question:
-- Write a query to find the average commission (COMMISSION_PCT) given to employees who have a non-null commission in the EMPLOYEES table.
select avg(COMMISSION_PCT)
from EMPLOYEES;
-- 10. COUNT Function (Advanced)
-- Question:
-- Write a query to count how many employees have a salary greater than 10,000.
select count(*) num_of_emp
from EMPLOYEES
where SALARY > 10000;
-- 11. MAX and MIN Together
-- Question:
-- Write a query to find the maximum and minimum salary within each job ID using GROUP BY.
select JOB_ID, min(nvl(SALARY, 0)) minimum, max(SALARY) maximum
from EMPLOYEES
group by JOB_ID;
-- 12. SUM Function (Advanced)
-- Question:
-- Write a query to sum the salaries for each manager (MANAGER_ID) in the EMPLOYEES table.
select MANAGER_ID, sum(SALARY) total
from EMPLOYEES
group by MANAGER_ID;
-- 13. GROUP BY with Multiple Columns
-- Question:
-- Write a query to display department ID and job ID, and show the total salary for each group (department + job combination).
select DEPARTMENT_ID,
       JOB_ID,
       sum(SALARY) as Total
from EMPLOYEES
group by DEPARTMENT_ID, JOB_ID;
-- 14. HAVING with COUNT
-- Question:
-- Write a query to display job ID and count of employees for each job, only show jobs that have more than 5 employees.
select JOB_ID, count(JOB_ID)
from EMPLOYEES
group by JOB_ID
having count(JOB_ID) > 5;
-- 15. Using Aggregate Functions Together
-- Question:
-- Write a query to show each department ID with:
--
-- Total employees,
--
-- Average salary,
--
-- Maximum salary,
--
-- Minimum salary,
-- and group them by department ID.
select DEPARTMENT_ID,
       sum(SALARY)                   Total,
       round(avg(nvl(SALARY, 0)), 3) avarage,
       max(SALARY)                   maximum,
       min(nvl(SALARY, 0))           minimum
from EMPLOYEES
group by DEPARTMENT_ID;
-- 16. Complex HAVING
-- Question:
-- Write a query to find all departments where:
--
-- The average salary is more than 8000,
--
-- And the number of employees is less than 10.
select DEPARTMENT_ID
from EMPLOYEES
group by DEPARTMENT_ID
having avg(SALARY) > 8000
   and count(DEPARTMENT_ID) < 10;
-- 17. Nested Aggregation
-- Question:
-- Write a query to find the department that has the highest total salary among all departments.
-- (Hint: You can use GROUP BY + ORDER BY DESC + FETCH FIRST 1 ROW ONLY.)
select DEPARTMENT_ID, sum(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID
order by sum(salary) desc
    fetch first row only;
-- 18. Using Aliases with Aggregates
-- Question:
-- Write a query to show department ID, sum of salaries as Total_Salary, and average salary as Average_Salary, grouped by department ID.
select DEPARTMENT_ID,
       sum(SALARY)                   as Total_Salary,
       Round(avg(nvl(SALARY, 0)), 2) as Average_Salary
from EMPLOYEES
group by DEPARTMENT_ID;
