create TABLE Doctor
(
    id      number generated always as identity primary key,
    name    varchar2(50) not null,
    salary  number(7, 2) not null,
    address varchar2(60) not null
);
insert into Doctor(name, salary, address)
values ('hossam', 1000, 'cairo');

insert into Doctor(name, salary, address)
values ('mohamed', 2000, 'fayoum');

insert into Doctor(name, salary, address)
values ('nada', 3000, 'cairo');

insert into Doctor(name, salary, address)
values ('Ali', 2000, 'Giza');

insert into Doctor(name, salary, address)
values ('Abdelrahman', 1000, 'cairo');

insert into Doctor(name, salary, address)
values ('Soso', 2000, 'cairo');

insert into Doctor(name, salary, address)
values ('mansour', 3000, 'Alex');

insert into Doctor(name, salary, address)
values ('hany', 2000, 'cairo');

insert into Doctor(name, salary, address)
values ('Yehia', 3000, 'cairo');

insert into Doctor(name, salary, address)
values ('Noga', 2000, 'cairo');

commit;

update Doctor
set salary=20000
where id = 3;

delete Doctor
where id = 9;

select name || ' take = ' || salary || ' monthly.' salary_for_each_employee
from Doctor;

select SALARY * 2 double_of_salary
from Doctor;

select *
from Doctor
where salary = 1000
   or salary = 2000
   or salary = 3000;

rename Doctor to PRD_DOCTOR;
