create database mydb;

use mydb;

-- create Table
create table student(
	student_id int,
    name varchar(50) not null, -- varchar(x) : 값에 따라 동적으로 줄었다 늘었다 하는 효율적인 친구
    grade int not null,
    major varchar(50) not null
);

select * from student;

desc student; -- 제약 사항을 확인 

-- 과목 테이블 생성

create table subject(
	subject_id int,
    subject_name varchar(50) not null,
    credit int not null,
    department varchar(5),
    professor char(50) not null
    
);

select * from subject;

desc subject;

-- 이미 생성된 테이블에 primary key 추가하기.
alter table student add primary key(student_id);
desc student;

-- 사전 기반 지식 (데이터가 들어가 있는 상태에서 빈 값이 포함되어 있다면 기본키를 추가할 수 없다.) 즉 null 이 되어선 안됨.

alter table subject add primary key(subject_id);
desc subject;

-- order
-- row => id : pk
-- 고객 주문 내용 - 문자
-- 상품 이름
-- 상품 가격
-- 상품 수량

-- 예약어는 기본적으로 테이블 이름으로 지정 불가, but ''을 사용하여 강제적으로 테이블 이름이라고 명시할 수 있다.

create table order_list(
	id int primary key,
    price bigint,
    customer_order varchar(50),
    product_name varchar(20),
    quantity int not null,
    order_date date not null
);
desc order_list;
insert into order_list(id, price, customer_order, product_name, quantity, order_date)
values ('1' ,'50000', '박태현', '장갑', '3', '2024-05-30'),
	   ('3', '33300', '수수수', '이런이런', '45' , '2024-05-29');

select * from order_list;

create table customer(
	id int primary key not null,
    name varchar(20) not null,
    addr varchar(30) not null
    
);
desc customer;

alter table customer add column email varchar(20) not null;

insert into customer(id, name, addr, email)
values (1, '박태현', '경상남도 김해시','qkrakdth@gmail.com'),
	   (34, '이이이', '서울', 'qrer@gmail.com');
select * from customer;

