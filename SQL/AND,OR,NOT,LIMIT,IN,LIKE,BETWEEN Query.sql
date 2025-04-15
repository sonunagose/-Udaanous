select * from Courses;
select * from enrollments;
select * from student_information;
select * from cricketer;
select * from student;
select * from user;

#### OR Query:=
select * from student_information;
select * from student_information where Department = "Science" OR age > 20;

#### AND Query:=
select * from Student_information where Gender = "Male" AND age > 21;

#### BETWEEN Query:=
Select * from  student_information where Age Between 20 AND 30;
Select * from  student_information where GPA Between 2 AND 3;

#### LIMIT Query:=
select * from cricketer;
Select * from cricketer Limit 3;

#### IN Query:=
select * from student_information;
select * from student_information where Department IN ("Science","Business");

#### LIKE Query:=
select * from user;
select * from user where first_name LIKE '_1%';
select * from student_information;
select * from student_information where Department LIKE 'Medicine';

#### NOT Query:=
select * from enrollments;
select * from enrollments where Grade != 'A';

