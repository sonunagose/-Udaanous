use database2;
Create Table purchases (
	CustomerID int,
    PurchasesDate DATE,
    ReturnDate DATE 
);
Select * from purchases;
INSERT INTO purchases (CustomerID, PurchasesDate, ReturnDate) VALUES
(1, '2024-01-01', '2024-01-05'),
(2, '2024-01-02', '2024-01-06'),
(3, '2024-01-03', '2024-01-07'),
(4, '2024-01-04', '2024-01-08'),
(5, '2024-01-05', '2024-01-09'),
(6, '2024-01-06', '2024-01-10'),
(7, '2024-01-07', '2024-01-11'),
(8, '2024-01-08', '2024-01-12'),
(9, '2024-01-09', '2024-01-13'),
(10, '2024-01-10', '2024-01-14');
select * from purchases;

Alter Table purchases ADD column FormattedDate varchar(50);
select * from purchases;

SELECT 
    DATE_FORMAT(PurchasesDate, '%d-%m-%Y') AS FormattedDate
FROM purchases;

SELECT 
    DATE_FORMAT(PurchasesDate, '%d-%M-%Y') AS FormattedDate
FROM purchases;

SELECT *, 
    CONCAT(
        DAY(PurchasesDate), '-', 
        DATE_FORMAT(PurchasesDate, '%M'), '-', 
        DAY(PurchasesDate),
        CASE 
            WHEN DAY(PurchasesDate) IN (11,12,13) THEN 'th'
            WHEN DAY(PurchasesDate) % 10 = 1 THEN 'st'
            WHEN DAY(PurchasesDate) % 10 = 2 THEN 'nd'
            WHEN DAY(PurchasesDate) % 10 = 3 THEN 'rd'
            ELSE 'th'
        END
    ) AS FormattedDate
FROM purchases;
select * from purchases;




