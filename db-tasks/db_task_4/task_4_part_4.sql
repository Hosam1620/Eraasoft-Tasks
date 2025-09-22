-- Q1. Create a table STUDENTS with columns: name, marks.
-- Q2. Insert 5 sample students with marks.
-- Q3. Use CASE to assign grades:
--     >=90 => 'A', 80–89 => 'B', 70–79 => 'C', else => 'F'
create table Student
(
    name  varchar2(40) not null,
    marks number(5, 2) not null
);
insert into Student
values ('Hossam', 77.2),
       ('Mohamed', 80.1),
       ('Heba', 88.9),
       ('Sabrin', 90),
       ('sama', 78);

select name
     , marks
     , case
           when marks >= 90 then 'A'
           when marks <= 89 and marks >= 80 then 'B'
           when marks <= 79 and marks >= 70 then 'c'
           else 'F'
    end Degree
from student;
