-- Q1. Use REPLACE to replace the letter 'a' with '@' in the word 'database'.
-- Q2. Use REPLACE to replace a full word in a string (e.g., "old" with "new").
-- Q3. Create a table PRODUCT with a product_name column, and insert 3 sample products.
-- Q4. Use LPAD to format product names to 15 characters by padding with '*' on the left.
-- Q5. Use RPAD to format product names to 15 characters by padding with '#' on the right.

select replace('database', 'a', '@') replaced
from dual;

select replace('old', 'old', 'new') replaced
from dual;

create table product
(
    product_name varchar2(50)
);
insert into product
values ('phone'),
       ('watch'),
       ('charger');
select lpad(product_name, 15, '*')
from product;

select rpad(product_name, 15, '#')
from product;
