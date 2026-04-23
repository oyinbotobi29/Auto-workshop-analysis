SELECT * FROM auto;

SELECT COUNT(*) from auto;

SELECT distinct Service_Type
from auto;


select Customer_Name,Service_Status
from auto
where Service_Status = 'pending';

select Customer_Name,Service_Cost
from auto
where Service_Cost < 50000;


selecT Sum(Service_Cost )AS Total_revenue
from auto;

select Service_Cost as revenue,Service_Type
from auto;

select sum(Service_Cost) as revenue, Service_Type
from auto
group by Service_Type
order by revenue asc;

SELECT Technician_ID, count(*) as Total_jobs
FROM auto
GROUP BY Technician_ID
ORDER BY Total_jobs desc;

SELECT AVG(Service_Cost) AS AV_SC, Vehicle_Model
FROM auto
GROUP BY Vehicle_Model
ORDER BY AV_SC ASC;

SELECT MONTH(Service_Date) AS MONTH, SUM(Service_Cost) AS revenue from auto
group by Month(Service_Date)
order by month;

select day(Service_Date) as day, sum(Service_Cost) as Rev from auto
group by day(Service_Date)
order by day desc;

select year(Service_Date) as year, sum(Service_Cost) as rev 
from auto
group by year(Service_Date)
order by year desc;

select Service, count(*) as count_duplicates
from auto
group by Service
having count(*)<1;

SELECT * FROM auto
ORDER BY Service_Cost DESC
LIMIT 5;

SELECT * FROM auto
WHERE Service_Type LIKE 'Oil change%'
limit 5;

ALTER TABLE auto
RENAME COLUMN Service TO Service_ID;

SELECT * FROM auto
WHERE Service_Type LIKE '%brake%'
limit 5;

select (count(case when Service_Status ='completed' then 1 end)*100/count(*) ) as completed_percentage
from auto;

SELECT Payment_Method,Service_Cost AS rev
from auto
ORDER BY Payment_Method DESC;

SELECT * FROM auto
WHERE Service_Cost > ( SELECT AVG(Service_Cost)*3 FROM auto);



