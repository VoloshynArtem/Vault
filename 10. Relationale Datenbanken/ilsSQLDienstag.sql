use stadtbaeume;

show tables;

--1
--Alle Giessungen nach „zeitpunkt_der_bewaesserung“ aufsteigend sortiert.
select * from giessungen
order by zeitpunkt_der_bewaesserung ;

--2 
--Alle Giessungen im Bezirk Pankow
select * from giessungen where bezirk ="Pankow";

-- 3
--Alle Giessungen der Gattung Linde
select * from giessungen where gattung ="Linde";

--4 
--Alle Giessungen in der Apostel-Paulus-Straße, nach „zeitpunkt_der_bewaesserung“ absteigend sortiert.
select * from giessungen where strassenname ="Apostel-Paulus-Straße"

order by zeitpunkt_der_bewaesserung desc;


--5
-- Alle Giessungen in Straßen, die nicht bekannt ist.

select * from giessungen where strassenname = "undefined";



--6
--Alle Giessungen für Bäume, die über 100 Jahre alt sind, nach Pflanzjahr aufsteigend sortiert.
select 
    nr,
    gattung,
    concat(strassenname, bezirk) as "location",
    concat ( pflanzjahr, " - ", YEAR(CURRENT_DATE()) - pflanzjahr ) as "pflanzjahr - alter ",
    zeitpunkt_der_bewaesserung

    
FROM giessungen

where (YEAR(CURRENT_DATE()) - pflanzjahr >100) 
order by pflanzjahr

;


--7

-- Alle Giessungen, deren Bewässerungsmenge über 50 Liter ist, nach Bewässerungsmenge absteigend sortiert

select 
    nr,
    gattung,
    concat(strassenname, bezirk) as "location",
    bewaesserungsmenge_in_liter, 
    zeitpunkt_der_bewaesserung
 from giessungen
where bewaesserungsmenge_in_liter > 50
ORDER BY bewaesserungsmenge_in_liter
;


--8
--Alle Giessungen eines bestimmten Baumes (geographische Position latitude/longitude), nachzeitpunkt_der_bewaesserung“ absteigend sortiert


select
    concat (longitude, " , ", latitude) as "geographische position",
    zeitpunkt_der_bewaesserung as "nur zur kontrolle"

from giessungen
order by zeitpunkt_der_bewaesserung
;

--9 
--Alle Giessungen von „Ahornblättrige Platane“ in Mitte, nach Strassenname aufsteigend sortiert.

select * 
FROM giessungen

where gattung Like "%Ahornblättrige Platane%"-- i guess
and bezirk like "%Mitte%"

order by strassenname
; 


--optional

alter table giessungen
add primary key (nr, zeitpunkt_der_bewaesserung);


SELECT 
    TABLE_NAME, 
    COLUMN_NAME, 
    DATA_TYPE, 
    COLUMN_KEY 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'stadtbaeume';