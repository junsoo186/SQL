select*
from employees
limit 30,10;

-- 가장 최근 입사한 여직원과 남직원 찾으시오
select first_name , max(hire_date)
from employees
group  by gender;



select e.first_name,e.emp_no , max(s.salary) 
from employees as e
 left join salaries as s
on  e.emp_no  = s.emp_no
group  by gender;

-- 1조 
-- 재직중인 사원들 중 평균 연봉이 가장 큰 3명의 first_name, 평균 연봉(소숫점 제거),부서, 근무 년수 을 추출하시오.

select em.first_name, round((sa.salary)) as '평균 연봉', dep.dept_name, de.from_date, year(now()) - year(sa.from_date) + 1 as '근무 년수'
from dept_emp as de
join salaries as sa
on de.emp_no = sa.emp_no
join employees as em
on de.emp_no = em.emp_no
join departments as dep
on de.dept_no = dep.dept_no
where de.to_date = '9999-01-01'
group by dep.dept_no
order by round((sa.salary)) desc
limit 3;

-- 전직원에게 생일 상여금 지급 하기로 하였다. 월별 지급해야할 인원수를 구하세요(퇴사자 제외 || 출력예시 월, 인원수)
select  month(birth_date) as m, count(*)
from employees as em
join dept_emp as dem
on em.emp_no = dem.emp_no
where dem.to_date != '9999-01-01'
group by month(birth_date)
order by m asc;

select *from  employees;
select *from  salaries;
select *from dept_emp;
select *from  departments;
select *from titles;



-- 2조 문제
-- 각 직원의 정보를 확인하기 (직원번호, 생년월일, 이름, 성,부서번호, 부서명, 직업명)
select t.dept_name, e.birth_date, e.first_name,e.last_name, tt.title 
from employees as e
join salaries as s
on e.emp_no = s.emp_no
join  dept_emp as de
on e.emp_no = de.emp_no
join deprtments as t
on de.dept_no = t.dept_no
join titles as tt
on e.emp_no = tt.emp_no;




-- 1990년 이상 입사자 이름과 급여 부서 직책



-- 3조
-- 문제 1. 직원들 개인의 입사 이후 현재까지의 평균 연봉을 구해서 80000이 넘는 사람들만 출력하라. (내림차순으로 상위 100명만)
-- 출력 예시 (emp_no, last_name, avg)

select e.emp_no,e.first_name,avg(s.salary)
from employees as e
left join salaries as s
on e.emp_no=s.emp_no
where s.salary>80000
group by e.emp_no
order by s.salary desc;


select 
e.emp_no, -- 직원 번호
e.birth_date,  -- 생년월일
e.first_name,  -- 성
e.last_name,   -- 이름
e.gender, -- 성별
d.dept_no, -- 부서 번호
dp.dept_name, -- 부서 이름
t.title
from employees as e     -- employees 참고
right join dept_emp as d  -- dept_emp department에 대한 직원 번호
on e.emp_no = d.emp_no    -- employees 의 직원번호 == d_emp 의 직원번호
right join departments as dp -- 부서 이름 정보
on d.dept_no = dp.dept_no
right join titles as t
on e.emp_no = t.emp_no;


