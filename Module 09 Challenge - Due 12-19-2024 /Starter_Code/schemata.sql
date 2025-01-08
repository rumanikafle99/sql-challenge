--Creating title table
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR 
);

--Creating employee table
CREATE TABLE employees(
	emp_no INT PRIMARY KEY, 
	emp_title_id VARCHAR REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex CHAR(1),
	hire_date DATE 
);
--Creating departments table
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY, 
	dept_name VARCHAR 
);

--Creating dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INTEGER, 
	PRIMARY KEY (dept_no,emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Creating dept_emp table
CREATE TABLE dept_emp(
	emp_no INTEGER, 
	dept_no VARCHAR,
	PRIMARY KEY (emp_no,dept_no), 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Creating salaries table
CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--making sure data has been imported 
SELECT * FROM titles;
SELECT * FROM employees; 
SELECT * FROM departments; 
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM salaries;