-- Q1. Use DECODE to achieve the same result as the CASE example above.
-- Q2. Create a table ORDERS with a column status ('P', 'S', 'D').
-- Q3. Use DECODE to display full form of status:
--     'P' => 'Pending', 'S' => 'Shipped', 'D' => 'Delivered'
select name,
       MARKS,
       decode(floor(MARKS / 10), 10, 'A'
           , 9, 'A'
           , 8, 'B'
           , 7, 'C'
           , 'F') as degree
from STUDENT;
create table orders
(
    status char not null
);

insert into orders
values ('P')
     , ('S')
     , ('D');

select decode(status,
              'P', 'Pending',
              'S', 'Shipped',
              'D', 'Delivered') as status
from orders;
