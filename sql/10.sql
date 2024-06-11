drop table order_list;

CREATE TABLE order_list (
  id INT PRIMARY KEY,
  order_name VARCHAR(20) NOT NULL,
  product_name VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL
);


INSERT INTO order_list (id, order_name, product_name, quantity, order_date) 
VALUES
(1, '홍길동', '피자', 2, '2022-02-26'),
(2, '김영희', '치킨', 3, '2022-02-26'),
(3, '이철수', '햄버거', 1, '2022-02-27'),
(4, '박지민', '스테이크', 2, '2022-02-27'),
(5, '최영희', '짬뽕', 1, '2022-02-27'),
(6, '박서준', '초밥', 3, '2022-02-28'),
(7, '김민지', '파스타', 2, '2022-02-28'),
(8, '정재은', '토스트', 1, '2022-02-28'),
(9, '신은주', '감바스', 2, '2022-03-01'),
(10, '유지훈', '돈까스', 1, '2022-03-01');

select * from order_list;

-- update
-- 1. id 가  1인 주문의 상품 수량을 5개로 수정
update order_list set quantity = 5 where id = 1; -- update 테이블명 set 수정하고자 하는 데이터. where 컬럼
select * from order_list where id = 1;

-- 2. id 가 3인 사람의 메뉴를 감바스로 수정
update order_list set order_name = '감바스' where id = 3;
select * from order_list where id = 3;

-- 2 수정 update 를 잘못함
update order_list set order_name = '이철수' where order_date = '2022-02-27'; 
select * from order_list where order_name = '이철수';

update order_list set order_name = '박지민' where product_name = '스테이크';
select * from order_list where order_name = '박지민';

-- 3. id 가 5인 주문의 주문 일자를 20240531로 수정 - 최영희(id =5) order_date : 2022-02-27 =>  2024-05-31
update order_list set order_date = '2024-05-31' where id = 5;
select * from order_list where id = 5;

-- 주문 수량이 2개 이상이고, 상품명이 피자인 주문 수령인 이름을 김철수로 수정
update order_list set order_name = '김철수' where quantity >= 2 and product_name = '피자';
select * from order_list where order_name = '김철수';

-- 주문 날짜가 2022 02 28 이고 상품명이 초밥인 주문의 주문 ㅅ구량을 5개로 수정alter
update order_list set quantity = 5 where order_date = '2022-02-28' and product_name = '초밥';
select * from order_list where product_name = '초밥' and order_date = '2022-02-28';

-- 주문 수량이 1개 이하이고, 상품명이 감바스인 주문의 수령인 주소를 경기도 성남시로 수정

-- SQL
	-- DDL (Data Definition Language) : 테이블 구조를 변경할때 사용됨
	-- DML 
	-- DCL

alter table order_list add  column address varchar(100) after order_date;

select * from order_list;

-- insert into order_list(address) values '경기도 성남시';
update order_list set address = '부산진구' where quantity = 1 and product_name = '감바스';


