
create table worker(
    id int primary key auto_increment,
    name varchar(20) not null,
    hire_date date
);

drop table salary;
create table salary(
    id int primary key auto_increment,
    name varchar(20) not null,
    salary int not null
);

insert into worker values (1,'홍길동', '2024-01-01');
insert into worker values (2,'도우너', '2024-03-05');
insert into worker values (3,'둘리', '2022-07-11');
insert into worker values (4,'또치', '2020-01-31');
insert into worker values (5,'뿌까', '2019-05-06');

insert into salary values(1,'홍길동','2000000');
insert into salary values(2,'도우너','2200000');
insert into salary values(3,'둘리','3000000');
insert into salary values(4,'또치','3400000');
insert into salary values(5,'뿌까','3000000');


select*
from worker as w
left join salary as s
on w.id=s.id;




