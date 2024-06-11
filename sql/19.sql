create database mydb3;
use mydb3;
-- drop table playerinfo;
create table playerinfo(
nonumber int auto_increment,
id varchar(20),
`password` varchar(20), 
nickname varchar(10),
`name` varchar(10),
age int(2),
gender varchar(10),
primary key (nonumber)
);

desc playerinfo;

insert into playerinfo(id, `password`, nickname, `name`, age,gender)
 values
 ('tkdk45','dsafsa','전사호랑이','홍길동',12,'남');
select*from playerinfo;