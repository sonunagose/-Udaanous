
use database1;
select * from courses;
select * from enrollments;
select * from student_information;

# Equal to :=
select age, Department from student_information where age = 21;

# Greater Than:=
select age, Department from student_information where age  > 20;

# Less Than:=
select age, Department from student_information where age < 21;

# Greater Than Or Equal to:=
select age, Department from student_information where age >= 21;

# Less Than Or Equal to:=
select age, Department from student_information where age <= 20;

# Not Equal to:=
select age, Department from student_information where age != 21;

# Alise:=
Select GPA * 12 As GPA From student_information;

Select * from student_information;

Select Age As A from student_information;

# Distinct :=
Select distinct Department from student_information;

SELECT DISTINCT Department
FROM student_information
WHERE Age = 21;

# Select Query:=
Select * from courses;
Select * from enrollments;
Select * from student_information;

Select Age,Gender,Department from student_information;

SELECT Gender, GPA
FROM student_information
ORDER BY GPA DESC;
