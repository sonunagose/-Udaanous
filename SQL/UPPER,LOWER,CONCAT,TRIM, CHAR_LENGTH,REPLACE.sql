select * From student_information;

#### LOWER Query:=
select * from user;
select LOWER(" I LOVE MY INDIA");

#### CHARACTER LENGTH:=
select * from student_information;
select char_length("FirstName") AS LengthOfString from student_information;

#### UPPER QUERY:=
select UPPER( "i love my india");

#### TRIM FUNCTION:=
select * from student_information;
select TRIM(Gender) AS TrimmedCol from student_information;

#### REPLACE FUNCTION:=
select * from cricketer;
select REPLACE(age, 35, 50) AS CorrectedCol from cricketer;

#### CONCAT FUNCTION:=
select * from user;
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name FROM user;


