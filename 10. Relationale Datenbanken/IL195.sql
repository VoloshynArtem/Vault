
create table Hersteller(
    HerstellerID int unsigned not null primary key,
    Name varchar(50) not null

);

SELECT
    CASE WHEN rezeptpflichtig THEN 'rezeptpflichtig' ELSE 'ffa' END AS status

FROM Arzneimittel
join Hersteller using (HerstellerID)
WHERE Bezeichnung = 'abc';


UPDATE Arzneimittel
JOIN Hersteller using(HerstellerID)
SET Arzneimittel.Preis = Arzneimittel.Preis * 1.05
WHERE h.Name = 'ccc';


SELECT

    Hersteller.Name,
    count(*)
FROM Arzneimittel
join Hersteller using (HerstellerID)
group by Hersteller.Name
having sum(rezeptpflichtig) < 50
;


