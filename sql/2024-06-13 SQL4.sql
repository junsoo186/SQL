-- 특정 색상의 상품이 있는 모든 카테고리 조회
create database demo3;
use demo3;

-- 카테고리 테이블 (상위, 하위 개념 추가) 
create table tb_categories(
  category_id int auto_increment primary key, 
  parent_id int null,
  category_name  varchar(100), 
  foreign key(parent_id) references tb_categories(category_id)
);

insert into tb_categories(category_name) values('남성복');
insert into tb_categories(category_name) values('여성복');

-- 남성복에 하위 카테고리 
insert into tb_categories(category_name, parent_id)
			values('팬츠', 1);
insert into tb_categories(category_name, parent_id)
			values('셔츠', 1);

-- 여성복에 하위 카테고리 
insert into tb_categories(category_name, parent_id)
			values('팬츠', 2);
insert into tb_categories(category_name, parent_id)
			values('셔츠', 2);

-- 남성복 팬츠에 하위 카테고리 
insert into tb_categories(category_name, parent_id)
			values('면바지', 3);
insert into tb_categories(category_name, parent_id)
			values('슬랙스', 3);

-- 여성복 팬츠에 하위 카테고리 
insert into tb_categories(category_name, parent_id)
			values('면바지', 5);
insert into tb_categories(category_name, parent_id)
			values('슬랙스', 5);

select * from tb_categories;
create table tb_products(
	product_id int auto_increment primary key, 
    product_name varchar(255),
    category_id int, 
    price decimal(10,2),
    size varchar(10),
    color varchar(50),
    foreign key(category_id) references tb_categories(category_id)
);

-- 남성복 상품 입력 
insert into tb_products(product_name, category_id, price, size, color)
values('남성셔츠', 4, 49000, 'L', '퍼블'),
	  ('남성면바지', 7, 55000, 'M', '핑크'),
	  ('남성슬랙스', 8, 105000, 'XL', '샤인');
      
-- 여성복 상품 입력       
insert into tb_products(product_name, category_id, price, size, color)
values('여성셔츠', 6, 49000, 'L', '퍼블'),
	  ('여성면바지', 9, 55000, 'M', '핑크'),
	  ('여성슬랙스', 10, 105000, 'XL', '샤인');
      

select * from tb_products;


-- 특정 카테고리에 속하는 모든 상품 조회 
-- 1단계 (남성, 여성 팬츠에 속하는 상품을 조회)
select p.product_name, p.price, p.size, p.color
from tb_products as p 
join tb_categories as c on p.category_id = c.category_id
where c.category_name = '면바지';


-- 2단계 (만약 여성 면바지만 출력 해야 된다면)
-- 조인 --> 서브쿼리
select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p 
join tb_categories as c on p.category_id = c.category_id
where c.category_name = '면바지' and c.parent_id = 5;
-- -------------------------
select p.product_name, p.price, p.size, p.color, c.parent_id
from tb_products as p 
join tb_categories as c on p.category_id = c.category_id
where c.category_name = '면바지' 
						and c.parent_id = 
								(select category_id from tb_categories 
								 where category_name = '팬츠' and parent_id = 2);


select *, parent_id from tb_categories where category_name = '팬츠' ;
select  parent_id from tb_categories where category_name = '팬츠'  ;
select parent_id from tb_categories 
	where category_name = '팬츠' and parent_id = 2;

-- 문제 1 남성복 셔츠만 출력 하시오 
SELECT p.product_id, p.product_name, p.price, p.size, p.color
FROM tb_products p
JOIN tb_categories c ON p.category_id = c.category_id
WHERE c.category_name = '셔츠' AND c.parent_id = 1;

-- 문제 2 여성복 슬랙스만 출력 하시오
SELECT p.product_id, p.product_name, p.price, p.size, p.color
FROM tb_products p
JOIN tb_categories c ON p.category_id = c.category_id
WHERE c.category_name = '슬랙스' AND c.parent_id = 5;






select*from tb_products;
select*from tb_categories;

-- 1 단계 
-- 결과집합에서 중복 제거할떄 distinct
select distinct c.category_name
from tb_products as p 
join tb_categories as c on p.category_id = c.category_id
where p.color = '샤인';

select *, MAX(p.price)
