create table shop(
s_name varchar2 (25 char) primary key,
s_price number (10) not null,
s_img varchar2 (30 char) not null,
s_info varchar2 (30 char) not null,
s_category varchar2 (10 char) not null,
s_con varchar2 (10 char) not null
);

drop table SHOP cascade constraint purge;

select * from SHOP;

