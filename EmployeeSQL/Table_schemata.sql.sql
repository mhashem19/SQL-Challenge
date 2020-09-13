
--creat tables to import data from original files. 
DROP TABLE IF EXISTS departments CASCADE;

CREATE TABLE departments (
	dept_no VARCHAR(15),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments

-- Creat employee table

DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE employees (
	emp_no VARCHAR(15) NOT NULL,
	emp_title VARCHAR(25) NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(2),
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * FROM employees

-- Create dept_emp table

DROP TABLE IF EXISTS dept_emp CASCADE;

CREATE TABLE dept_emp(
	emp_no VARCHAR(15) NOT NULL,
	dept_no VARCHAR(15) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
PRIMARY KEY (dept_no, emp_no)
);
SELECT * FROM dept_emp

-- Creat dept_managers table
DROP TABLE IF EXISTS dept_manager CASCADE;

CREATE TABLE dept_manager(
	dept_no VARCHAR (15),
	emp_no VARCHAR(20) NOT NULL,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager

-- Create salary table
DROP TABLE IF EXISTS salaries CASCADE;

CREATE TABLE salaries (
	emp_no VARCHAR(20) NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaris


-- Creat table title

DROP TABLE IF EXISTS titles CASCADE; 

CREATE TABLE titles(
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR(25) NOT NULL,
	PRIMARY KEY (title_id)
);
SELECT * FROM titles

