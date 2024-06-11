

select*from dept_emp;
select*from departments;

-- 퇴사한 기술부서 전체 인원을  출력해주세요

select e.dept_no,e.from_date,e.to_date
from dept_emp as e
left join departments as d
on e.dept_no =d.dept_no
where e.dept_no = 'd005' and e.to_date != '9999-01-01';


-- 현재  재직중인 사람중 입사일이 1991-10-10 인 사람의 부서를찾아주세요

select e.dept_no,e.from_date,e.to_date
from dept_emp as e
left join departments as d
on e.dept_no =d.dept_no
where e.from_date = '1991-10-10' and e.to_date = '9999-01-01' ;