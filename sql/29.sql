-- 집계 함수 문제
-- 문제 1 : 모든 직원에 평균 급여를 계산하세요.

-- 단 주의 AVG() 평균게 합계와 다른 컴럼을 적는다면 관계가 없는
-- 데이터 결과 집합이다.
select AVG(salary)  from employee;
select  * from employee;

-- 각 부서별로 직원 수를 세고, 부서별 급여의 합을 계산하세요
-- 부서별, 부서별 직원수, 부서별 급여의 합계 금액
-- 그룹화 시켜야 된다
select department, count(*) as '직원수',sum(salary) as '급여'
from employee
group by department;

