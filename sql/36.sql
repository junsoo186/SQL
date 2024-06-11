-- 각 부서별 인원을 체크 하고 재직 인원이 제일 적은 순서로 부서를 세개 출력하시오

select*from employees;
select*from dept_emp;
select*from departments;

select  de.dept_name, count(es.emp_no) as 부서인원수
from dept_emp  as em
join   departments   as de
on de.dept_no = em.dept_no
join employees as es
on es.emp_no = em.emp_no
group by  de.dept_no
order by 부서인원수 desc
limit 3;

