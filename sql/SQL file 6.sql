-- 테이블 삭제
-- drop table student;

-- 테이블 생성 시, default 값을 제약 설정하는 방법

create table student(
	student_id int primary key,
    name varchar(50) not null,
    grade int not null,
    major varchar(50) default '미정' not null
);
desc student;

alter table student drop major;

alter table student add column major varchar(50) not null default '미정';

-- 기본 문구 모양
-- insert into 테이블명(column1, column2, column3 ...) values (1, 2, 3 ...);

insert into student(student_id, name, grade, major)
values(1, '문재인',3,'정치');

insert into student(student_id, name, grade, major)
values(2, '안철수', 1);

insert into student(student_id, name, grade, major)
values(3, '윤석열', 1, 'dd');

alter table student drop column user_type;

select * from student;

insert into student(student_id, name, grade, major)
values(4, '니달리',2,default);

-- delete from 구문을 사용할때에는 (실무) 반드시 필터를 걸자 
delete from student where name = '문재인';
delete from student where name = '윤석열';

insert into student(student_id, name, grade, major)
values(234, '아리',6 );

-- data 타입 형식을 사용할때 연습

drop table order_list;

create table order_list(
	id int primary key,
    price bigint,
    customer_order varchar(50),
    product_name varchar(20),
    quantity int not null,
    order_date date not null
);
insert into order_list values(1,9000,'가나다라마바사','칼',10,'2024-05-30');
insert into order_list values(2,3434,'abcdefg','방패',10,'20240530');

-- 오류가 발생하는 상황
-- insert into order_list values(3,93500,'date형식 안 맞추기','창',10,'2024530');
-- insert into order_list values(4,9000,'년도 잘못 입력(13월)','칼',10,'2024-13-30');

select * from order_list;



