drop database db_card_auction;
create database db_card_auction;
use db_card_auction;

create table user(
    name varchar(50) primary key,
    password varchar(50),
    nickname varchar(50),
    point int
);

create table card(
    id int auto_increment primary key,
    url varchar(100),
    name varchar(50),
    price int
);

create table auction(
    id int auto_increment primary key,
    name varchar(50),
    card_id int,
    bid_price int,
    start_date date,
    end_date date,
    foreign key(name) references user(name),
    foreign key(card_id) references card(id)
);

create table inventory(
    name varchar(50),
    card_id int,
    foreign key(name) references user(name),
    foreign key(card_id) references card(id)
);

desc auction;
select * from user;
select * from card;
select * from auction;
select * from inventory ;

insert into inventory(name, card_id) values (11, 10);

insert into card(url, name,price) values ('image/card1.png', '나오하', 10000),
('image/card2.png', '찬란한 개굴닌자', 20000),
('image/card3.jpg', '피카츄', 50000),
('image/card4.webp', '레쿠쟈', 100000),
('image/card5.jpg', '리자몽', 80000),
('image/card6.png', '루카리오', 150000),
('image/card7.jpg', '레시라무', 200000),
('image/card8.jpg', '마자용', 15000),
('image/card9.png', '파이리', 70000),
('image/card10.jpg', '빠모', 30000);


SELECT name,AVG(price)
from card
where name = '마자용'
group by name = '마자용' ;