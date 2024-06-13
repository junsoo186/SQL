-- 사전 데이터 확인

select * 
from dept_manager
where  to_date = '9999-01-01';



select * 
from employees
where emp_no in (select emp_no
				from dept_manager
				where to_date = '9999-01-01');
                              
-- 직원 테이블에서 매니저인 사원을 출력 하자

select *
from employees
where emp_no;

select *
from employees
where emp_no in (select emp_no
					from dept_manager
                where to_date = '9999-01-01');
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                