select * from employees; 
select * from  salaries;

select emp_no
from dept_emp as e
left join departments as d
on e.dept_no =d.dept_no
where e.from_date = '1991-10-10' and e.to_date = '9999-01-01' ;