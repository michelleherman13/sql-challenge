--for each employee, list: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries 
ON employees.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date)=1986;

--List the manager of each dept with: dept #, dept name, the manager's emp#, last&first name
SELECT a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_managers AS a
JOIN departments AS b
ON a.dept_no=b.dept_no
JOIN employees AS c
ON a.emp_no=c.emp_no;

--List the dept of each emp with the following info: emp#, last name, first name, and dept name
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name 
FROM employees as a
LEFT JOIN dept_employees as b
ON a.emp_no=b.emp_no
LEFT JOIN departments c
ON b.dept_no=c.dept_no; 

--List first name, last name, and sex for emp whose first name is "Hercules" and last names begin with "B"
SELECT first_name, last_name, sex 
from employees 
where first_name ='Hercules'
and last_name LIKE 'B%'

--List all emp in the Sales dept, including their employee number, last name, first name, and dept name
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees AS a
LEFT JOIN dept_employees AS b
ON a.emp_no=b.emp_no
LEFT JOIN departments AS c 
ON b.dept_no=c.dept_no
WHERE c.dept_name='Sales';

--List all emp in the Sales and Development dept, including their emp#, last name, first name, and dept name
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees AS a
LEFT JOIN dept_employees AS b
ON a.emp_no=b.emp_no
LEFT JOIN departments AS c 
ON b.dept_no=c.dept_no
WHERE c.dept_name='Sales'
OR c.dept_name='Development';

--In descending order, list the frequency count of emp last names, i.e., how many emp share each last name
SELECT last_name, count(*)
AS "frequency_of_last_names"
FROM employees
GROUP BY last_name
ORDER BY "frequency_of_last_names" DESC;