use database2;

create table exam_info (
      StudentID int AUTO_INCREMENT PRIMARY KEY,
      FirstName varchar(50),
      LastName varchar(50),
      Scores integer
);
select * from exam_info;
 INSERT INTO exam_info (FirstName, LastName, Scores) VALUES
('John', 'Doe',  80),
('Alice', 'Smith',  75),
('Bob', 'Johnson',  78),
('Emily', 'Brown',  60),
('Michael', 'Davis', 86),
('Sarah', 'Wilson', 90),
('David', 'Lee', 75),
('Jessica', 'Taylor', 75),
('Chris', 'Evans',  55),
('Emma', 'Thompson',  67);
select * from exam_info;
ALTER TABLE exam_info ADD COLUMN cubescores DECIMAL(15, 2);

select Scores,Power(Scores,3) AS CubeScores from exam_info;

