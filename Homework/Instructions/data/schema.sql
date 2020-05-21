create table departments
(
    dept_no     VARCHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE   	(dept_name)
);

create table employees
(
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex	 varchar not null,
	hire_date date not null,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
      );
CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title_id)
);
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

create table dept_emp
(emp_no int not null,
 dept_no varchar not null,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
 PRIMARY KEY (emp_no,dept_no)
 );
 
 create table salaries
 (
 emp_no int not null,
 salary int not null,
 PRIMARY KEY (emp_no),
 FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);	
