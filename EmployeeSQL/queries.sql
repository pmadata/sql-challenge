
-------employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.first_name, e.last_name, e.sex,s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

--------first name, last name, and hire date for the employees who were hired in 1986
SELECT emp_no, first_name, last_name, hire_date
FROM employees
where hire_date LIKE '%1986';

-------list manager, depat_no, depart_name, employee_no, last name , first name
SELECT d.dept_name, m.dept_no,m.emp_no, e.first_name, e.last_name
FROM depart_manager as m
INNER JOIN departments as d ON
d.dept_no = m.dept_no
INNER JOIN employees as e ON
m.emp_no = e.emp_no;


------first_name, Last_name, sex, first_name=Hercules, last_B%
SELECT first_name, last_name, sex
FROM employees
where first_name = 'Hercules'
AND last_name LIKE 'B%';

-----Employees sales department, emp_no, last_name, first_name
SELECT d.dept_name, de.emp_no, e.first_name, e.last_name
FROM dept_emp as de
INNER JOIN departments as d ON
d.dept_no = de.dept_no
INNER JOIN employees as e ON
e.emp_no = de.emp_no
WHERE dept_name = 'Sales';

-----Dept Sales and Development, with emp_no,last_name,first_name,dept_name
SELECT d.dept_name, de.emp_no, e.first_name, e.last_name
FROM dept_emp as de
INNER JOIN departments as d ON
d.dept_no = de.dept_no
INNER JOIN employees as e ON
e.emp_no = de.emp_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

-----frequency counts, DESCENDING, last_name
SELECT last_name, COUNT (emp_no) AS "FREQUENCY"
FROM employees
GROUP BY last_name
ORDER BY "FREQUENCY" DESC;

