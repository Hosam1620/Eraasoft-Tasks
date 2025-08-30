create table employee_copy
(
    employee_id number primary key,
    First_name  varchar2(20) not null,
    last_name   varchar2(20) not null,
    department  varchar2(40),
    salary      number
);

insert into EMPLOYEE_COPY
values (101, 'John1', 'Doe1', 'HR', 20000);

insert into EMPLOYEE_COPY
values (102, 'John2', 'Doe2', 'IT', 50000);

insert into EMPLOYEE_COPY
values (103, 'John3', 'Doe3', 'CS', 40000);

insert into EMPLOYEE_COPY
values (104, 'John4', 'Doe4', 'IT', 10000);

insert into EMPLOYEE_COPY
values (105, 'John5', 'Doe5', 'ZX', 30000);

update EMPLOYEE_COPY
set salary=60000
where employee_id = 101;

commit;

delete
from EMPLOYEE_COPY
where department = 'HR';

select *
from EMPLOYEE_COPY
where department = 'IT';

select employee_id, FIRST_NAME || ' ' || LAST_NAME Full_Name, department, salary
from EMPLOYEE_COPY;

commit;
