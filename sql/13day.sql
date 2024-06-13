-- 마케팅 부서에서 재직중이고, 태어난 년도의 일의자리가 1,2,3 이면 O 아니면 X로 표시하세요
-- 사번, 이름(성+이름), 생년월일, 체크 로 출력

select*from employees;
select*from departments;
select*from employees;

select em.last_name ,em.first_name,em.birth_date, case when mod(year(birth_date),10) in (1,2,3) then 'O' else 'x' end as 체크
from employees as em
join dept_emp as dep on em.emp_no = dep.emp_no
join departments as de on dep.dept_no = de.dept_no
where de.dept_name = 'Marketing'  and dep.to_date = '9999-01-01'


-- 평균 연봉이 가장 높은 부서의 재직중인 매니저의 emp_no, 부서명, 평균연봉, 이름을 출력하시오
-- 소숫점 2자리, first_name과 last_name은 결합하여 출력 




