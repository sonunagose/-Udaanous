CREATE TABLE purchases1 (
    CustomerID INT,
    PurchaseDate DATE,
    ReturnDate DATE
);
select * from purchases1;
INSERT INTO purchases1 (CustomerID, PurchaseDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-09'),
(2, '2024-01-02', '2024-01-16'),
(3, '2024-01-03', '2024-01-11'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-21'),
(8, '2024-01-08', '2024-01-29'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-24');

select * from purchases1;

#### Date Difference:=
select *, Datediff(PurchaseDate, ReturnDate) AS DateDifference from purchases1;

#### Extract Year:=
select *, extract(Year from ReturnDate) As Year_Date from purchases1;
select *, extract(Year from PurchaseDate) As Year_Date from purchases1;


     
    