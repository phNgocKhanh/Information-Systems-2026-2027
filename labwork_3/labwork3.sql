
use employees;

-- Exercise 1: All info of all employees
select *
from employees;

-- ex2 : All info of all departments
select * 
from departments; 

-- ex3:  Full names of all employees
select concat(first_name,'',last_name) as full_name
from employees;

-- ex4 :  Names of all departments
select dept_name
from departments;

