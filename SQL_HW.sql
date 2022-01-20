Select employees.emp.no, 
employees.last_name, 
employees.first_name, 
employees.sex, 
salaries.salary
from employees, salaries
where employees.emp_no = salaries.emp_no;

select employees.first_name, 
employees.last_name, 
employees.Hire_date
from employees
where employees.hire_date between "01-01-1986" an "31-12-1986";

select departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name
from employees, Dept_manager, Departments
where employees.emp_no = Dept_manager.emp_no
and Dept_manager.dept_no = departments.dept_no;

select employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
from employees, dept_emp, Departments
where employees.emp_no = Dept_emp.emp_no
and dept_emp.dept_no = Departments.dept_no;

select employees.first_name,
employees.last_name, 
employees.sex
from employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

select employees.emp_no, 
employees.last_name,
employees.first_name, 
departments.dept_name
from employees, dept_emp, Departments
where departments.dept_name = 'Sales' 
and employees.emp_no = Dept_emp.emp_no
and dept_emp.dept_no = Departments.dept_no;

select employees.emp_no, 
employees.last_name,
employees.first_name, 
departments.dept_name
from employees, dept_emp, Departments
where departments.dept_name in('Sales','Development')
and employees.emp_no = Dept_emp.emp_no
and dept_emp.dept_no = Departments.dept_no;

select count(employees.last_name), employees.last_name
from employees
group by last_name;

