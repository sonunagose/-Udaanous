use database2;
CREATE TABLE Event (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);
select * from event;
INSERT INTO Event (event_name, start_date, end_date) VALUES 
  ('party1', '2025-04-01', '2025-04-20'),
  ('part2', '2025-05-01', '2025-05-30'),
  ('part3', '2025-04-15', '2025-06-1');
select * from event;
#### DATEDIFF QUERY:=
select DATEDIFF(start_date, end_date) from event;
select DATEDIFF(end_date, start_date) from event;

#### DAY QUERY:=
select DAY(start_date) from event;
select DAY(end_date) from event;

#### MONTH QUERY:=
select month(start_date) from event;
select month(end_date) from event;

#### YEAR QUERY:=
select year(start_date) from event;
select year(end_date) from event;

#### DATE FORMATE:=
select date_format(start_date,'%b') from event;
select date_format(start_date,'%c') from event;
select date_format(start_date,'%M') from event;
select date_format(start_date,'%y') from event;
select date_format(start_date,'%Y') from event;
select date_format(end_date,'%b') from event;
select date_format(end_date,'%Y') from event;
