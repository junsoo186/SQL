
-- 1 단계
select *
from tb_student as s
left join tb_grade as g
on s.grade = g.grade;

desc tb_student;

select *
from tb_grade as g
left join tb_student as s
on g.grade = s.grade;

select*
from tb_student as s
right join tb_grade as g
on s.grade = g.grade;

-- employees
-- 의미 있는 결과 집합을 만들자 (크로스 조인 사용 x )
-- 단, INNER JOIN, LEFT JOIN, RIGHT JOIN 사용해 쿼리문 만들기


select * from  employees;
select * from  salaries;
select * from  titles;

select*
from titles as t
right join salaries as s
on t.from_date = s.from_date;

