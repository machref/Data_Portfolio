Update ..bike_buyers$_FilterDatabase
Set [Marital Status]='Married'
WHERE [Marital Status]='M';


Update ..bike_buyers$_FilterDatabase
Set [Marital Status]='Single'
WHERE [Marital Status]='S';


Select [Marital Status]
From ..bike_buyers$_FilterDatabase ;


Update ..bike_buyers$_FilterDatabase
Set [Gender]=Case
 WHEN [Gender]='F' THEN 'Female'
 Else 'Male'
  end 

  Select *
From ..bike_buyers$_FilterDatabase ;
ALTER TABLE ..bike_buyers$
ADD [Age Brackets] VARCHAR(50);


UPDATE ..bike_buyers$
SET [Age Brackets] = CASE
    WHEN Age <= 30 THEN 'Adolescent'
    WHEN Age <= 50 THEN 'Middle Age'
    ELSE 'Old'
END;
alter table ..bike_buyers$
alter column [Income] Varchar(50);

UPDATE ..bike_buyers$
SET Income = CONCAT(REPLACE(REPLACE(Income, ' ', ''), ',', ''), ' €');