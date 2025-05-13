use filme;

show tables;

--1, 2
select 
    film.Titel as filmname,
    filmgesellschaft.Name as filmgesellschaft,
    genre.Name as genre

from film 
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join genre on film.Genre_id = genre.id
where film.Titel  = "Gladiator"
;


--3 
select 
    film.Titel as filmname,
    genre.Name as genre,
    filmgesellschaft.Name as filmgesellschaft
from film 
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join genre on film.Genre_id = genre.id
where Filmgesellschaft.Name = "Universal Pictures"
;

-- 4 
select 
    film.Titel as filmname,
    film.Erscheinungsdatum,
    genre.Name as genre,
    filmgesellschaft.Name as filmgesellschaft

from film 
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join genre on film.Genre_id = genre.id
order by Erscheinungsdatum desc
limit 10

;

--5 

select 
    spielt.rolle,
    film.Titel as filmname,
    film.Erscheinungsdatum,
    genre.Name as genre,
    filmgesellschaft.Name as filmgesellschaft
from film 
join spielt on spielt.Film_id = film.id
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join genre on film.Genre_id = genre.id
where spielt.rolle Like "%Galadriel%"


; 

--6
select 
    concat (hauptdarsteller.Vorname, " ", hauptdarsteller.Name),
    spielt.rolle,
    film.Titel as filmname,
    film.Erscheinungsdatum,
    genre.Name as genre,
    filmgesellschaft.Name as filmgesellschaft
from film 
join spielt on spielt.Film_id = film.id
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join genre on film.Genre_id = genre.id
join hauptdarsteller on Hauptdarsteller.id = spielt.Hauptdarsteller_id
where hauptdarsteller.Name Like "%Willis%"
and hauptdarsteller.Vorname Like "%Bruce%"

; 

--7

select 
    concat (hauptdarsteller.Vorname, " ", hauptdarsteller.Name),
    spielt.rolle,
    film.Titel as filmname,
    filmgesellschaft.Name as filmgesellschaft
from film 
join spielt on spielt.Film_id = film.id
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join hauptdarsteller on Hauptdarsteller.id = spielt.Hauptdarsteller_id
where hauptdarsteller.Name Like "%Moss%"
and hauptdarsteller.Vorname Like "%Carrie-Anne%"


; 

--8 ja bro 3 mal die selbe aufgabe
select 
    concat (hauptdarsteller.Vorname, " ", hauptdarsteller.Name),
    spielt.rolle,
    film.Titel as filmname,
    filmgesellschaft.Name as filmgesellschaft,
    genre.Name

from film 
join spielt on spielt.Film_id = film.id
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
join genre on film.Genre_id = genre.id
join hauptdarsteller on Hauptdarsteller.id = spielt.Hauptdarsteller_id
where hauptdarsteller.Name Like "%McKellen%"
and hauptdarsteller.Vorname Like "%Ian%"

; 


select 
    *

from film 
natural join spielt
natural join filmgesellschaft 
where Titel = "True Lies"
;


use agentur;

select 
    *,
    avg(gehalt)
from mitarbeiter
where gehalt > (select avg(gehalt) from mitarbeiter)
GROUP BY name;