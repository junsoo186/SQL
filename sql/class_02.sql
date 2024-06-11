-- 데이터 집합 생성
create database db_tenco_market;

use db_tenco_market;
-- Schemas 에 더블클릭 하는 것과 같음

-- 데이터 베이스 삭제 명령어
-- drop database db_tenco_market; (막 쓰면 안됨 절대)

-- 사전 기반 지식 : mysql 은 대수몬자를 구별하지 않는다! 알딱잘센
-- 단, 구분하는 RDBMS 도 존재한다.

-- Make UserTable 
create table userTBL(
	userName char(3) not null primary key,
    birthYear int not null,
    addr char(3) not null,
    mobile char(12)
    
);

show tables;
select * from userTBL;
desc userTBL;

-- Make BuyList
create table buyTBL(
	id int not null auto_increment,
    userName char(3) not null,
    prodName char(3) not null,
    price int not null,
    amount int,
    
    primary key(id),
    foreign Key(userName) references userTBL(userName)
); 

show tables;
select * from buyTBL;
desc buyTBL;

