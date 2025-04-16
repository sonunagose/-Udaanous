Create Table drop_idx_tab(
	StudentID int,
    StudentName varchar(255),
    Age int
);

select * from Drop_idx_tab;

insert into drop_idx_tab(StudentID, StudentName, Age) Values (1, "Alex", 27),(2, "Akash", 27),(3, "Ramisha", 21);

Create unique index unique_StudentID on drop_idx_tab(StudentID);

