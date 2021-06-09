
-- Creating Table Schemas
-- Departments Table
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL

);

-- Titles Table
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);


-- Employee Table
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	emp_title VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,

    FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);



-- Departments & Employee Table
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,

	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- Salary Table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,

	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- Department Managers Table
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,

	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
