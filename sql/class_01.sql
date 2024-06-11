-- Create databases

CREATE DATABASE shopdb;

-- DataBase 사용 선언
USE shopdb;
/*
기본 사용법
locate : c\employees\employees.sql;
create database (Name) <= Databases 생성
*/

create table tb_member(
	memberIO char(8) not null primary key,
    memberName char(5) not null,
    memberAddress char(20)
);
-- 테이블 수정
-- drop, update, delete 명령어 주석 처리 습관

-- 컬럼 이름 변경
alter table tb_member change memberIO memberID char;
alter table tb_member change memberIO memberID char(8);
-- 기본값 default 변경

alter table tb_member alter column memberID set default 8;

-- 컬럼 삭제
-- studentalter table tb_member drop memberID;

-- 테이블 맨앞에 컬럼 추가
alter table tb_member add column memberID char(8) not null first;

-- 테이블 맨뒤에 컬럼 추가
-- alter table tb_member add column memberID char(8) not null after (앞 컬럼명)

-- 테이블 구조 확인 명령어
desc tb_member;

-- 테이블 조회 명령어(DML - Data Manipulation Language) : 데이터 조작 언어
select * from tb_member;
select memberIO, memberName from tb_member;

-- C R U deallocate prepare
-- 데이터를 입력하는 SQL (insert)
-- insert into tb_member() values (); 기본 형태
insert into tb_member(memberID, memberName, memberAddress) values ('M000001', '박태현','경상남도김해시능동로118');

