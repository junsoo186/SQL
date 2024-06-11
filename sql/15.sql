create database db_movie;

create table movie(
	id int primary key auto_increment,
	title varchar(50) not null,
    director varchar(50) not null,
    release_date date not null,
    genre varchar(20) not null,
    rating double not null
);

insert into movie(title, director, release_date, genre, rating)
values ('괴물', '봉준호', '2006-07-27', '드라마', '8.28'),
	   ('극한직업', '이병헌', '2019-01-23', '코미디', '9.20'),
       ('명량', '김한민', '2014-07-30', '사극', '9.17'),
       ('신과함께-죄와 벌', '김용화', '2017-12-20', '판타지', '7.56'),
       ('밀양', '임권택', '2016-09-07', '드라마', '7.76'),
       ('반도', '연상호', '2020-07-15', '액션', '6.61'),
       ('베테랑', '류승완', '2015-08-05', '액션', '8.49'),
       ('변호인', '양우석', '2013-12-18', '드라마', '8.41'),
       ('군함도', '류승완', '2017-07-26', '사극', '8.01'),
       ('암살', '최동훈', '2015-07-22', '액션', '8.37');

alter table movie add  unique key unique_key (title);
alter table movie modify column director varchar(50);

select * from movie;
desc movie;

-- 영화 '괴물' 의 평점을 4.1 로 수정하세요
update movie set rating = '4.1' where title ='괴물';
-- '변호인'의 장르를 '정치'로 수정하세요
update movie set genre = '정치' where title = '변호인';
-- '군함도' 의 장르를 '액션'으로 수정하세요
update movie set genre = '액션' where title = '군함도';

-- '임권택' 감독의 미성년자 강제 전라 노출 및 사전 합의 없는 노출신 촬영으로 인해 영광스러운 이 데이터베이스에 이름을 올릴 수 없게 되었다.
-- 이름을 삭제하시오.
delete from movie where director ='임권택';
-- '암살' 의 장르를 '시대극'으로 수정하세요
update movie set genre = '시대극' where title = '암살';
-- '베테랑' 의 이름을 '군함도'로 수정을 시도해보고 안되는 이유를 서술하시오
update movie set title = '군함도' where title = '베테랑';
-- 안되는 이유
-- : title 은 unique key 로 지정되었기 때문에, 중복된 값을 허용하지 않는다.
