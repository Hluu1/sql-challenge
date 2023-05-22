CREATE TABLE departments (
  dept_no CHAR(4) PRIMARY KEY,
  dept_name VARCHAR(40) NOT NULL
);

SELECT * FROM departments

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no CHAR(4) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
  dept_no CHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(10) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(14) NOT NULL,
  last_name VARCHAR(16) NOT NULL,
  sex VARCHAR(1) CHECK (sex IN ('M', 'F')) NOT NULL,
  hire_date DATE NOT NULL,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  PRIMARY KEY (emp_no)
);

SELECT * FROM salaries

CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY,
  title VARCHAR(50) NOT NULL
);

SELECT * FROM titles
