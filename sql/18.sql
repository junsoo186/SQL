create database mydb2;
use mydb2;

create table tb_student(
	student_id int auto_increment primary key,
    student_name varchar(100) not null
);

create table tb_class(
	class_id int auto_increment,
    class_name varchar(100) not null,
    teacher varchar(20) not null,
    primary key(class_id)
);

-- 학생과 수업 테이블 N:M 관계가 형성된다.
-- 중간 테이블 설계 (수강 등록 테이블)

create table tb_registration(
	student_id int,
    class_id int,
    registration_date date,
    -- 복합 primary key
    primary key(student_id, class_id),
    foreign key(student_id) references tb_student(student_id),
    foreign key(class_id) references tb_class(class_id)
);

desc tb_registration;

insert into tb_student(student_name)
values ('박태현'),
	   ('박태할'),
       ('박태횽'),
       ('박태훙');
       
insert into tb_class(class_name,teacher)
values ('화작','김민정'),
	   ('언매','유현주'),
       ('미적','하주성'),
       ('음악','이슬기');

insert into tb_registration(student_id, class_id, registration_date)
values ('1', '1','2024-05-03');

insert into tb_registration(student_id, class_id, registration_date)
values ('3', '2','2019-03-21');

select * from tb_registration;
select * from tb_student;
select * from tb_class;

