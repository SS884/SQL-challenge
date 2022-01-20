Create table Titles (
Title_ID VARCHAR (20) NOT NULL ,
Title VARCHAR(30) NOT NULL
Primary key (Title_ID)
);

Create table Employees (
Emp_no INT NOT NULL Primary key,
Emp_title VARCHAR (30) NOT NULL,
DOB DATE NOT NULL,
First_Name VARCHAR (30) NOT NULL,
Last_Name VARCHAR (30) NOT NULL,
Sex VARCHAR (30) NOT NULL,
Hire_date DATE NOT NULL,
Primary key (Emp_no),
Foreign Key(Emp_title) references Titles.Title_ID
); 

Create table Salaries (
Emp_no INT NOT NULL,
Salary INT NOT NULL,
Primary key (Emp_no),
Foreign Key (Emp_no) references Employees.Emp_no
);

Create table Dept_Emp (
Emp_no INT NOT NULL ,
Dept_no VARCHAR (30) NOT NULL,
Primary key (Emp_no,Dept_no),
Foreign key (Emp_no) references Employees.Emp_no,
Foreign key (Dept_no) references Departments.Dept_no
);

Create table Dept_manager (
Dept_no VARCHAR (30) NOT NULL ,
Emp_no INT NOT NULL ,
PRIMARY KEY (Dept_no,Emp_no),
Foreign key (Dept_no) references Departments.Dept_no,
foreign key (Emp_no) references Employees.Emp_no
);

Create table Departments (
Dept_no VARCHAR (30) NOT NULL,
Dept_Name VARCHAR (30) NOT NULL,
Primary key (Dept_no)
);