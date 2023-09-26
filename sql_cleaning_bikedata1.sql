/*

Cleaning Data in SQL Queries

*/
-- Create a new table bike_buyers1 with distinct values from bike_buyers$

create table dbo.bike_buyers1(
 [ID] float ,
[Marital Status] Varchar(30),
[Gender] Varchar(30),
[Income] Varchar(30),
[Children] float ,
[Education] Varchar(30),
[Occupation] Varchar(30),
[Cars] float,
[Commute Distance] Varchar(30),
[Region] Varchar(30),
[Age] float,
[Purchased Bike]Varchar(30),
[Age Brackets] Varchar(30),)

insert into ..bike_buyers1
select distinct *
from .bike_buyers$;
-- Drop the old table bike_buyers$
Drop table ..bike_buyers$;

-- Update 'M' to 'Married'

Update ..bike_buyers1_FilterDatabase
Set [Marital Status]='Married'
WHERE [Marital Status]='M';

-- Update 'S' to 'Single'

Update ..bike_buyers1_FilterDatabase
Set [Marital Status]='Single'
WHERE [Marital Status]='S';


Select [Marital Status]
From ..bike_buyers1_FilterDatabase ;

-- Update 'F' to 'Female ' and 'M' to 'Male' 

Update ..bike_buyers_FilterDatabase
Set [Gender]=Case
 WHEN [Gender]='F' THEN 'Female'
 Else 'Male'
  end 
--Verify The result
  Select *
From ..bike_buyers1_FilterDatabase ;
-- add the new column to contains Age Brackets
ALTER TABLE ..bike_buyers1
ADD [Age Brackets] VARCHAR(50);


UPDATE ..bike_buyers1
SET [Age Brackets] = CASE
    WHEN Age <= 30 THEN 'Adolescent'
    WHEN Age <= 50 THEN 'Middle Age'
    ELSE 'Old'
END;
-- Alter the column data type and update it 

alter table ..bike_buyers1
alter column [Income] Varchar(50);

UPDATE ..bike_buyers1
SET Income = CONCAT(REPLACE(REPLACE(Income, ' ', ''), ',', ''), ' €');
