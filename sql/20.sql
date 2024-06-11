
-- drop table tb_student;
-- drop table tb_registration;
create table tb_student(
no int not null primary key ,
name varchar(20) not null,
gender enum('F','M') not null,
grade char(1),  
foreign key (grade) references tb_grade(grade)
);

desc tb_student;
create table tb_grade(
grade char(1) primary key,
score int 
);

-- 테이블은 정보에 최소 단위 이다.
insert into tb_grade value ('A' ,100);
insert into tb_grade value ('B' ,80);
insert into tb_grade value ('C' ,60);
insert into tb_grade value ('D' ,40);
insert into tb_grade value ('E' ,20);
insert into tb_grade value ('F' ,0);


-- 오류 발생 아래에서 스키마 추가
insert into tb_student(no,name,gender,grade,age) values('100','길동','F','B',25);
-- 스키마 구조 변경이 필요하다.
alter table tb_student add age int ;


insert into tb_student(no,name,gender,grade,age) 
values('200','둘리','M','A',25);
insert into tb_student(no,name,gender,grade,age) 
values('300','마이콜','F','C',25);
insert into tb_student(no,name,gender,grade,age) 
values('400','야스오','F','E',25);
insert into tb_student(no,name,gender,grade,age) 
values('500','티모','F','F',25);
insert into tb_student(no,name,gender,grade,age) 
values('100','길동','F','B',25);

-- ----------------------------------------------------------
-- ----------------------------------------------------------

-- JOIN 연산에 ON 절 사용 안해보기ㅏㅣ !!
select *from  tb_student ;
select *from  tb_grade;


select *
from tb_student
join tb_grade;

select *
from tb_grade
join tb_studen;

-- 조인연산은 가능한 ON 절과 함께 사용하자.
-- join --> inner join, outer join
-- innner join --> join

select *
from tb_student
join tb_grade on tb_student.grade = tb_grade.grade;


select s.no, s.name,s.grade,g.score
from tb_student as s
join tb_grade  as g
on s.grade = g.grade;

