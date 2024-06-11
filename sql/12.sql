-- member table
-- unique 제약 설정
create table member(
	id int primary key auto_increment,
    
    email varchar(50) unique,
    phone varchar(20),
    address varchar(100) not null
);

desc member;

INSERT INTO member (email, phone, address)
VALUES 
('hong@test.com', '010-1234-5678', '서울시 강남구'),
('kim@test.com', '010-2345-6789', '서울시 서초구'),
('lee@test.com', '010-3456-7890', '서울시 종로구'),
('park@test.com', '010-4567-8901', '서울시 마포구'),
('choi@test.com', '010-5678-9012', '서울시 강서구'),
('kang@test.com', '010-6789-0123', '서울시 송파구');

select * from member;

-- 2 회원의 전화 번호 010 2222 2222 로 수정
update member set phone = '010-2222-2222' where id = '2';
-- email 은 unique 코드라 미리 5번에 들어가있던 a@naver.com 과 중복되기 때문에 error code : 1062 가 뜬다

-- 5 회원의 이메일과 주소를 'a@naver.com', '부산시 진구'로 수정
update member set email = 'a@naver.com' , address = '부산시 진구' where id = '5';

-- 1 회원의 email 을 'a@naver.com' 으로 수정
update member set email = 'a@naver.com' where id = '1';

