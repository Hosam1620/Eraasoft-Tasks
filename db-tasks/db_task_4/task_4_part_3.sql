-- Q1. Display current date in the format 'DD-MON-YYYY'.
-- Q2. Display current date in the format 'Month YYYY'.
-- Q3. Convert a number to character using TO_CHAR with formatting (e.g., 12345.67 as '12,345.67').
-- Q4. Show salary formatted with a currency symbol.

select to_char(sysdate, 'DD-MM-YYYY') current_date
from dual;

select to_char(sysdate, 'Month YYYY') current_date
from dual;

-- remember formatting models for date and numbers should be known them
select to_char(12345.67, '99,999.99') as coverted
from dual;

select to_char(SALARY, 'L99,999.99') Salary
from EMPLOYEES;
-- or
select to_char(SALARY, '$99,999.99') salary
from EMPLOYEES;
