
select*from employees;
select*from dept_emp;
select*from departments;
select*from salaries;

-- 퇴사 인원중 가장 급여가 높았던 직원의 이름을 찾으시오

select e.first_name , e.last_name , d.dept_name, max(s.salary)
from employees as e
join  salaries as s
join  departments as d
where s.to_date !='9999-01-01' 
group by e.dept_no ;


