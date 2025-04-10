Select * From courses;
Select * from enrollments;
Select * From Student_information;

#### Drop Table :=
 DROP Table courses;
Create Table Student(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    Age int
);

Select * from Student;

#### Insert Query:=
Insert into Student (id,first_name, last_name, email, Age) 
Values (101,'Sonu','Suth','sonusuth@gmail.com', 40);

Insert into Student (id,first_name, last_name, email, Age) 
Values (102,'Mahi','Dhoni','mahidhoni@gmail.com', 45);

Insert into Student (id,first_name, last_name, email, Age) 
Values (103,'Rohit','Sharma','rahulsharma@gmail.com', 35);

Insert into Student (id,first_name, last_name, email, Age) 
Values (104,'Hardik','Pande','hardikpande@gmail.com', 30);

Insert into Student (id,first_name, last_name, email, Age) 
Values (105,'Gautam','Gabhir','sonusuth@gmail.com', 50);

#### Delete Query:=
Delete from Student where id = 105;

#### Truncate Query:=
TRUNCATE TABLE Student;

#### Update query:=
Update Student set email = 'sonusharma@gmail.com' where id = 103;

#### Check Query:
select first_name from Student where Age > 30;

Select * from Student;

#### Not NuLL & Unique:=
CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) Not Null,
    last_name VARCHAR(10) Not Null,
    email VARCHAR(100) UNIQUE,
    Age int
);
Select * From User;

insert into User (id,first_name,last_name,email,Age) values (111,'Sachin','Tendulkar','sachintendulkar@gmail.com',50);
insert into User (id,first_name,last_name,email,Age) values (112,'Sunita','Varma','sunitavarma@gmail.com',60);

ALTER TABLE users
ADD CONSTRAINT unique_first_name UNIQUE (Rohit);




