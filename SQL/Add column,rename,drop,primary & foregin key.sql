Select * from student;
#### Alter Query:=
Alter table student Drop column Gender;
Select * from student;

#### Rename Query:=
Alter Table Student Rename column User_name to First_name;
Select * from student;

#### Add Constraint :=
Create table Cricketer(
       id int,
       first_name varchar(100) Not Null,
       last_name varchar(100) Not Null,
       age int
	);
    insert into Cricketer(id, first_name, last_name, age) values (01, 'Rohit', 'Sharma',35);
	insert into Cricketer(id, first_name, last_name, age) values (02, 'Sachin', 'Tandular',45);
	insert into Cricketer(id, first_name, last_name, age) values (03, 'Mahi', 'Dhoni',40);
    insert into Cricketer(id, first_name, last_name, age) values (04, 'Hardik', 'Pande',35);
    
    Select * from Cricketer;
    
    Alter Table Cricketer Add Constraint PK_Cricketer primary key (id);
    
#### Add Column:=
Select * from courses;
Select * from enrollments;
select * from student_information;
ALTER TABLE  students ADD created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;
Alter Table student_information add Grade varchar(50);
select * from student_information;

Select * from students;

#### Primary Key & Foreign Key:=
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);
Select * from departments;
insert into departments (dept_id, dept_name) values (111,'Sales');
insert into departments (dept_id, dept_name) values (112,'Electric');
insert into departments (dept_id, dept_name) values (113,'HR');
select * from departments;

CREATE TABLE Student_Data1 (
    Stud_id INT PRIMARY KEY,
    Stud_name VARCHAR(100)
);

insert into Student_Data( Stud_id, Stud_name) values (111,'Shyam'),(112,'Ram');
ALTER TABLE departments
ADD CONSTRAINT PK_departments PRIMARY KEY (dept_id);

ALTER TABLE Student_Data1
ADD CONSTRAINT FK_Stud_id FOREIGN KEY (Stud_id)
REFERENCES departments(dept_id);

select * from departments;

#### Drop Column:=
Select * from student_information;
Alter table student_information 
Drop Column Grade;
Select * from student_information;

#### Drop Constraint:=
Create table Customer(
 cust_id int primary key,
 cust_name varchar(50),
 cust_age int
 );
 Alter table Customer Drop Primary Key;
 select * from Customer;