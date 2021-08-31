CREATE TABLE departments (
  dept_no VARCHAR(5) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_employee (
  emp_no integer NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR (5) NOT NULL,
  emp_no integer NOT NULL
);

CREATE TABLE employees (
    emp_no integer NOT NULL, 
    emp_title_id VARCHAR (5) NOT NULL,
    birth_date DATE NOT NULL, 
	first_name character varying NOT NULL,
	last_name character varying NOT NULL,
	sex CHARACTER (1) NOT NULL,
	hire_date DATE
);

CREATE TABLE salaries (
emp_no integer NOT NULL, 
salary integer NOT NULL
);

CREATE TABLE titles (
title_id VARCHAR (5) NOT NULL,
title VARCHAR(20) NOT NULL
);