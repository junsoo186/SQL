-- From 절에 사용하는 인라인 뷰
-- 현재 다니고 있는 매니저들에 평균 연봉 구하기.

select*from dept_manager where to_date = '9999-01-01';
select*from salaries where emp_no = 10001;

-- 전체 직원에 평균 연봉, emp_no 그룹바이 처리
-- 한 직원에 평균 연봉, emp_no 그룹바이 처리

select emp_no, avg(salary)as 평균연봉
from salaries as s
group by emp_no;

-- 인라인뷰를 사용했던 개념

select emp_no,평균연봉
from(select emp_no, avg(salary)as 평균연봉
		from salaries as s
		group by emp_no) as avg_salary
where emp_no = '10001';

-- 인라인뷰, 중첩 서브쿼리를 동시에 사용

select emp_no,평균연봉
from(select emp_no, avg(salary)as 평균연봉
		from salaries as s
		group by emp_no) as avg_salary
where emp_no in (select emp_no
				from dept_manager
                where to_date = '9999-01-01');
                
                
-- 23847.66 비용 발생  

-- 위와 결과 집합을  INNERR JOIN 을 활용해서
select * from dept_manager;


select b.emp_no,avg(salary)as 평균연봉		
from salaries as a
join dept_manager as b on  a.emp_no = b.emp_no 
where b.to_date =  '9999-01-01'
group by b.emp_no ;

select s.emp_no, AVG(s.salary) as '평균연봉'
from salaries as s 
inner join dept_manager as d 
		on s.emp_no = d.emp_no and d.to_date = '9999-01-01' 
group by s.emp_no;

select emp_no as outer_emp_no,(select avg(salary)
								from salaries
								where emp_no = outer_emp_no) as 평균연봉
from employees;


-- 재직중인 매니저 성과 이름 명단을 뽑아주세요
select*from employees;
select em.first_name, em.last_name
from dept_manager as ma
join employees as em on ma.emp_no = em.emp_no
where ma.to_date = '9999-01-01'


