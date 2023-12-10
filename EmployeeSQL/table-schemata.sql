-- Create a new table titles
CREATE TABLE titles (
	emp_title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_title_id)
);

-- View the table data
SELECT *
FROM titles;

-- Create a new table departments
CREATE TABLE departments (
  dept_no VARCHAR(30) NULL,
  dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

-- View the table data
SELECT *
FROM departments;


-- Create a new table employees
CREATE TABLE employees (
	emp_no VARCHAR(30) NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) references titles (emp_title_id)
);

-- View the table data
SELECT *
FROM employees;

-- Create a new table dept_emp
CREATE TABLE dept_emp (
	id SERIAL,
  emp_no VARCHAR(30),
  dept_no VARCHAR(30),
	PRIMARY KEY (id),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- View the table data
SELECT *
FROM dept_emp;

-- Create a new table depart_manager
CREATE TABLE depart_manager (
	id SERIAL,
  dept_no VARCHAR(30) NULL,
  emp_no VARCHAR(30) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)	
);

-- View the table data
SELECT *
FROM depart_manager;

-- Create a new table salaries
CREATE TABLE salaries (
	emp_no VARCHAR(30) NOT NULL,
	salary INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- View the table data
SELECT *
FROM salaries;
