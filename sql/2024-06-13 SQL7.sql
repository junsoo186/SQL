use demo3;
drop table 수강정보;
drop table  student;
-- 복합키 생성 방법 확인 




create table 과목정보(
과목코드 varchar(10),
과목명 varchar(10),
담당교수 varchar(10),
primary key( 과목코드)
);

desc 수강정보;

create table 수강정보(
학생ID INT auto_increment primary key,
과목코드 varchar(10),
foreign key (과목코드 ) references 과목정보(과목코드)
);

select*from 과목정보;
select*from 수강정보;


create table 영화(
    영화ID int primary key,
    제목 varchar(20),
    감독 varchar(20),
    개봉년도 date,
    관객수 int,
    매출액 int
);

create table 배우(
    배우ID int primary key,
    이름 varchar(20),
    생년월일 date,
    키 double,
    몸무게 double
);

create table 출연(
    출연ID int primary key,
    영화ID int,
    배우ID int,
    foreign key(영화ID) references 영화(영화ID),
    foreign key(배우ID) references 배우(배우ID)
);



