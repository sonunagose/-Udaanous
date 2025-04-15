Select * from student_information;
select * from Courses;
select * from enrollments;

#### CREATE INDEX:=
select * from User;
Create index Age On user(Age);
Create index id on user(id);

#### CREATE UNIQUE INDEX:=
Select * from student;
Create Unique Index email On student(id);
Create Unique Index Age On student(Age);

#### DROP iNDEX:=
select * from Courses;
Create Index Credits on courses(Credits);
Alter Table courses Drop Index Credits;
Select * from Student;
Create Index id on Student(id);
Alter Table Student Drop Index id;


