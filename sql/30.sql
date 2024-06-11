

select*from dept_emp;

select *, count(emp_no)as'부서별 직원수'
from dept_emp
group by dept_no;

-- 문자열 함수 문제
-- 문제3 : 모든 직원에 이름을 대문자로 변환하고, 이름 앞에 'Mr/Ms' 를 추가하세요

select concat('Mr/Ms', upper(name)) as '이름' 
from employee;

-- 문제 4: 직원 이름에서  첫 2글자만 추출 하세요alter
select substring(name,1,2) as '이름' from employee;
-- 문제 5: 직원 이름에서 끝 2글 자만 추출 하세요 

select substring(name,2,2) as '이름' from employee;


-- first_name  에 끝 3글짜 까지만 결과집으로 출력 하세요
select* from employees;
select right(upper(first_name),2) as '이름' from employees;

-- 논리 및 조건 함수 문제
-- 문제 5: 각 직원에 대한 급여가 3백만원 이상이면 'High' , 'Low' 라고 표시하세요
 
select name,salary,
	case when salary >= 300000 
    then 'High' else 'Low' 
    end as '평가'
    from employee;
    
    -- 날짜 및 시간 함수 문제
    -- 문제 6: 오늘 날짜를 반환 하세요.
    select current_date as today;
    select ' 안녕 반가워' as a;
    
    -- 문제 7 : 각 지원이 고용된 날로부터 몇 년이 지났는지 계산하세요
    select * from employee;
    
    select name, hire_date, year(current_date) - year(hire_date) + 1 as '년차'
    from employee;

-- 문제 8 : 각 직원의 고용 월을 반환하세요.
select name, extract(month from hire_date) as hire_month
from employee;

-- 문제9: 각 직원에 급여를 문자열 형태로 표시하세요.
select name, cast(salary as char ) as salary_text
from employee;

-- 문제 10: 문자열로 저장된 날짜 '2024-06-07' 를 Date 타입으로 변환하세요
select cast('2025-06-07'as Date) as date;

select*from employees;


-- 40 년차 이상인 직원들 명예 퇴직을 위해 조회하시오
select first_name, hire_date,
 year(current_date) - year(hire_date) + 1 as '년차'
    from employees ;

-- 1번 문제 40 년차 이상인 직원들 명예 퇴직을 위해 조회하시오
select*from employees;
select*from salaries;
select first_name, hire_date,
    year(Current_date)-year(hire_date)+1 as '연차'
    from employees
    where (year(Current_date)-year(hire_date)+1)>39;

-- 2번 문제 급여가 1500000 이 넘늑 인원중 아직 재직중인 인원의 이름을 찾아내시오

select e.first_name, e.emp_no,s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no 
where salary > 150000 and to_date = '9999-1-01';

select * from employees;
select first_name, birth_date,
    year(Current_date)-year(birth_date) as '나이'
    from employees;




