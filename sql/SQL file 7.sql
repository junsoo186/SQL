use employees;

show tables;

select * from departments;
desc departments;

select * from employees;

select * from employees where birth_date = '1961-05-02';
select * from employees where first_name = 'Georgi';
select * from employees where hire_date = '1986-06-26';
select * from salaries;

select * from departments where dept_no = 'd005';

select * from employees limit 10;

select * from titles;
