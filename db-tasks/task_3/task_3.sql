select *
from EMPLOYEES
where EMPLOYEE_ID between 100 and 105;

select *
from EMPLOYEES
where EMPLOYEE_ID in (151, 152, 153, 154, 155);

select *
from EMPLOYEES
where FIRST_NAME like 'p%'
   or FIRST_NAME like 'P%';

select *
from EMPLOYEES
where FIRST_NAME like '%a'
   or FIRST_NAME like '%A';

select *
from EMPLOYEES
where FIRST_NAME like '%a%'
   or FIRST_NAME like '%A%';

select *
from EMPLOYEES
where FIRST_NAME like '__e%'
   or FIRST_NAME like '__E%';

select *
from EMPLOYEES
where MANAGER_ID is null;

select *
from EMPLOYEES
where MANAGER_ID is not null;

insert into EMPLOYEES
values (207, 'hossam', 'mohamed', 'hosammohemd1620', 01017926395, sysdate, 'IT_PROG', 12000, .25, null, 70);

select *
from EMPLOYEES
where JOB_ID IN ('IT_PROG', 'AD_VP');

select *
FROM EMPLOYEES
order by LAST_NAME;

select *
from EMPLOYEES
order by HIRE_DATE desc;

select *
from EMPLOYEES
order by DEPARTMENT_ID, SALARY desc;

select FIRST_NAME,
       lower(LAST_NAME) lname,
       SALARY,
       MANAGER_ID,
       HIRE_DATE,
       JOB_ID,
       DEPARTMENT_ID
from EMPLOYEES;

select upper(FIRST_NAME) FName
from EMPLOYEES;

select initcap(FIRST_NAME),
       initcap(LAST_NAME)
from EMPLOYEES;

select *
from EMPLOYEES
where lower(LAST_NAME)='smith';
