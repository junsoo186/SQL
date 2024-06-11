-- 데이터 입력하기      입니다!
/*
INSERT INTO userTBL(userName, birthYear, addr, mobile) values ('이승기','1987','서울','011-111-1111');

INSERT INTO userTBL(userName, birthYear, addr, mobile) values ('김경호','1971','전남','019-333-3333');
*/
INSERT INTO userTBL(userName, birthYear, addr, mobile) 
values('이승기','1987','서울','011-111-1111'),
('김경호','1971','경남','019-333-333'),
('윤종신','1969','경남',''),
('임재범','1963','경기','011-111-1111'),
('은지원','1978','전북','011-111-1111'),
('조관우','1965','경북','011-111-1111'),
('김범수','1988','충남','011-111-1111'),
('조용필','1987','충북','011-111-1111'),
('바비킴','1987','서울','011-111-1111'),
('성시경','1987','부산', null);
                                                             


desc userTBL;

select * from userTBL;

-- 테이블 삭제
-- drop table userTBL;  테이블 통으로 날리기
-- delete from userTBL'; 테이블의 데이터 날리기
-- error code 3730 == 한 테이블을 참조하고 있는 테이블(FK)가 존재하여 삭제 불가
-- 굳이 삭제하고 싶다면 참조 테이블을 먼저 삭제해야 함.

-- delete 데이터를 삭제하는 명령어

-- 테이블 컬럼 선택 조회
select * from userTBL where userName = '이승기';
select * from userTBL where userName = '성시경';
select * from userTBL where mobile = '011-111-1111';
select * from userTBL where addr = '서울';

insert into buytbl(userName, prodName, price, amount)
values  ('김범수', '운동화', 30, 2),
	      ('김범수', '노트북', 1000, 1),
        ('조용필', '모니터', 200, 1),
        ('바비킴', '모니터', 200, 5),
        ('김범수', '청바지', 50, 3),
        ('바비킴', '메모리', 80, 10),
        ('성시경', '책', 15, 5),
        ('은지원', '책', 15, 2),
        ('은지원', '청바지', 50, 1),
        ('바비킴', '운동화', 30, 2),
        ('은지원', '책', 15, 1),
        ('바비킴', '운동화', 30, 2);

select * from buyTBL;

insert into buyTBL(userName, prodName, price, amount)
values ('박효신','마이크', 30, 2);
-- error code 1452 == buyTBL 참조 데이터('박효신')가 없어서 buyTBL row 값으로 못 들어옴(제약 때문에)	

-- 특정 데이터를 조회화고 싶다면 필터를 건다 (WHERE)

select * from buyTBL where prodName = '모니터';

select * from buyTBL where userName = '김범수';
-- 공백도 하나의 데이터로 인식함 
