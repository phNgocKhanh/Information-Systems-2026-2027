
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

-- ex 5 : Full names of employees working in “Sales” department
select concat(first_name,'',last_name) as full_name 
from employees as e 
join dept_emp as de_e on e.emp_no = de_e.emp_no
join departments as depart on de_e.dept_no = depart.dept_no
where depart.dept_name = 'Sales';

-- ex 6 :  Full names of male employees working in “Finance” department

select concat(first_name,' ',last_name) as full_name
from employees as e 
join dept_emp as d_e on e.emp_no = d_e.emp_no
join departments as depart on d_e.dept_no = depart.dept_no 
where depart.dept_name='Finance' and e.gender='M'

-- ex 7 : Salaries of female employees working in “Marketing” department 
select s.salary, e.emp_no 
from employees as e 
join salaries as s on s.emp_no = e.emp_no 
join dept_emp as d_e on d_e.emp_no = s.emp_no
join departments as d on d.dept_no = d_e.dept_no 
where e.gender='F' and d.dept_name='Marketing';

-- ex 8 : Full names of employees who have the same last name as their manager
select 









