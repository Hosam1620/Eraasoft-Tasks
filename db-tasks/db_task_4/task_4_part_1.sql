create table Emp_test
(
    name varchar2(50) unique
);

insert into Emp_test
values ('   hossam mohamed     ');

select trim(both ' ' from name) trimed
from Emp_test;

select ltrim(name)
from Emp_test;

select rtrim(name)
from Emp_test;

select trim(both'#'from name)
from Emp_test;
