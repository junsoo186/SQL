-- 데이터 베이스 생성

create database quizdb;
use quizdb;


create table quiz(
	id int auto_increment primary key,
    question varchar(255) not null,
    answer varchar(500) not null
);

desc quiz;

-- 기본 샘플 데이터 입력
insert into quiz(question, answer) 
			values('천원 돌파 그렌라간 주인공은? ','시몬'),
				('데스노트 중 제 2의 키라 이름은','미사'),
                ('일곱개의대죄 중 폭식을 담당하고 있는 인물은?','멀린'),
                ('강철의연금술사에서 엘릭 형제의 목표는 무엇?','현자의돌'),
                ('진격의거인 속 미카사 와 리바이의 성은?','아커만'),
                ('데스노트속 라이토는 누구한테 죽는가?','류크'),
                ('류크가 좋아하는 과일은?','사과'),
                ('오버로드 속 최강의 수호자는?','샤르티아');
                

select*from quiz order by rand() limit 1;

