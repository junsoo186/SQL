select*from dept_emp;
select*from employees;
select*from departments;
select*from salaries;

-- last_name Hofting 인 직원들 급여와 부서를 찾으시요


select em.last_name as 이름, d.dept_name as 부서,s.salary as 급여
from employees em 
join dept_emp de on em.emp_no = de.emp_no
left join departments d on de.dept_no = d.dept_no
join salaries s on em.emp_no = s.emp_no
where last_name = 'Hofting'
