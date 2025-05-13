use stadtbaeume;
-- Select all records from the giessungen table as test 
select * from giessungen;

--1 Select distinct tree species (baumart) from the giessungen table
select distinct baumart from giessungen;

--2 selbe wie 1 
select distinct bezirk from giessungen;

--3 
select distinct strassenname from giessungen;

--4


select count(*) as "h", nr from giessungen
where year(zeitpunkt_der_bewaesserung) = 2020
group by nr
order by h desc;


--5 ganz funny mit subselect 
select sum(subquery_alias.bewaesserungsmenge_in_liter) as "total_bewaesserungsmenge_in_liter"
from 
    (select * from giessungen where nr = "_2zk8qshnu") as subquery_alias;


-- 6 

select * from giessungen
order by pflanzjahr
limit 10;

--der rest bracuht nicht kommentiert zu werden


