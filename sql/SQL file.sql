select * from student;

INSERT INTO student (student_id, name, grade, major)
VALUES
  (2, '박영희', 2, '경영학과'),
  (3, '이민수', 4, '전자공학과'),
  (4, '홍길동', 1, '디자인학과'),
  (5, '임성민', 3, '컴퓨터공학과'),
  (6, '한지원', 2, '경영학과'),
  (7, '박준형', 4, '전자공학과'),
  (8, '김민지', 1, '디자인학과'),
  (9, '이현수', 3, '컴퓨터공학과'),
  (10, '정미경', 2, '경영학과'),
  (11, '김성진', 4, '전자공학과'),
  (12, '임승환', 1, '디자인학과');
  
delete from student where student_id = '4';

 -- 오타 방지와 꼼꼼함을 위해 예약어를 치고 목적어를 친 후, 줄바꿈하기
select student_id, name
from student 
where major = '컴퓨터공학과';

select *
from student
where grade = '3';

select * from student where name = '홍길동';

-- 김성진 임승환 제외 검색 됨
select * from student where student_id between 1 and 10;

-- 결과가 없음
select * from student where major = '컴퓨터공학과' and grade ='2';

-- 박영희 임성민 한지원 이현수 정미경
select * from student where major = '컴퓨터공학과' or grade = '2';

-- 홍길동 제외 전원 검색
select * from student where name != '홍길동';

--  박영희 한지원 이민수 임성민 박준형 이현수 김성진
select * from student where grade >= '2';

-- 홍길동 김민지 임승환
select * from student where grade < '2';

-- 이민수 홍길동 임성민 박준형 김민지 이현수 김성민 임승\환
select * from student where grade in ('1','3','4');
-- select * from student where grade != '2'; 


