create table status_log
(
    status_code char not null
);

insert into status_log
values ('N'),
       ('I'),
       ('C');
select decode(status_code,
              'N', 'New',
              'I', 'IN Progress',
              'C', 'Completed') as status
from status_log;
-- new question
alter table PRODUCT
    add "product's quantity" number;

update PRODUCT
set "product's quantity"=0
where "product's quantity" is null;

alter table PRODUCT
    modify "product's quantity" default '0';

insert into PRODUCT("product's quantity")
values (50),
       (30),
       (0);

select decode("product's quantity", 0, 'Out of stock', "product's quantity") as status_of_stock
from PRODUCT;

-- new question
alter table EMP_TEST add department varchar2(20);
insert into EMP_TEST values ('basem','IT'),
                            ('hour','HR'),('wael','SALES');
select decode(department, 'IT', 1000,
              'HR', 500,
              'SALES', 1500, 300) AS BOUNS
FROM EMP_TEST;
