--for each employee, list: employee number, last name, first name, sex, and salary

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries 
ON employees.emp_no=salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986

--List the manager of each dept with: dept #, dept name, the manager's emp#, last&first name

--List the dept of each emp with the following info: emp#, last name, first name, and dept name

--List first name, last name, and sex for emp whose first name is "Hercules" and last names begin with "B.

--List all emp in the Sales dept, including their employee number, last name, first name, and dept name.

--List all emp in the Sales and Development dept, including their emp#, last name, first name, and dept name.

--In descending order, list the frequency count of emp last names, i.e., how many emp share each last name