Select * from ..['bank-additional-full$'];

Select distinct [job] from ..['bank-additional-full$'];

-- the number of rows in the table
select COUNT(*) AS num_rows
from ..['bank-additional-full$'];


--Found the max and min age of our clients

select max(age) as Maximum_age, min(age) as min_age
from ..['bank-additional-full$'];

-- Distinct job values

select distinct (job)
from ..['bank-additional-full$'];

--Count the number of successful outcomes for each job 

select job,count(*) as Count_success
from ..['bank-additional-full$']
where poutcome='success'
group by job;


SELECT
    [job],
    COUNT(CASE WHEN [housing] = 'yes' THEN 1 END) AS housing_count,
    COUNT(CASE WHEN [default] = 'yes' THEN 1 END) AS default_count,
    COUNT(CASE WHEN [loan] = 'yes' THEN 1 END) AS loan_count
FROM ..['bank-additional-full$']
GROUP BY
    [job];

	-- Finds the day of the week with the most successful outcomes in the previous marketing campaign.

	SELECT
    [day_of_week],
    COUNT(*) AS Success_count_byAge_Day_Month
FROM
    ..['bank-additional-full$']
WHERE
    [poutcome] = 'success'
GROUP BY
   [day_of_week]
   order by 2 desc;

