create table exam_info_2 (
      StudentID int AUTO_INCREMENT PRIMARY KEY,
      FirstName varchar(50),
      LastName varchar(50),
      Scores Float
);

select * from exam_info_2;
INSERT INTO exam_info_2 (FirstName, LastName, Scores) VALUES
('John', 'Doe', 80.345544),
('Alice', 'Smith',  75.6355),
('Bob', 'Johnson',  78.5364565),
('Emily', 'Brown',  60.3565),
('Michael', 'Davis', 86.5353656),
('Sarah', 'Wilson', 90.535464),
('David', 'Lee', 75.567765),
('Jessica', 'Taylor', 75.34242),
('Chris', 'Evans',  55.09098),
('Emma', 'Thompson',  67.34535);

select * from exam_info_2;


Alter table exam_info_2 ADD Column transformed_Scores DECIMAL(15,2);
select Scores, sqrt(Scores) AS transformed_Scores from exam_info_2;

UPDATE exam_info_2
SET transformed_Scores = SQRT(Scores) where StudentID;

select * from exam_info_2;
