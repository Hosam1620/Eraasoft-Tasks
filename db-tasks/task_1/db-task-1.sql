create table manger (
    id number generated always as identity primary key ,
    name varchar2(40) default 'no name',
    age number(3) default 0,
    brith_data date default sysdate,
    address varchar2(80) default 'no address'
);

alter table manger drop column address;

alter table manger add (city_address varchar2(60) default 'no address',street varchar2(40) default 'no street');

alter table manger rename column name to full_name;

alter table manger read only;

create table owner (id number  primary key ,name varchar2(40) default 'no name',birth_data date default sysdate);

rename manger to master;

drop table master;
drop table owner;
