use filme;
show tables;

--Zeige alle Thriller-Filme mit Genre, Titel, Rolle und Hauptdarsteller. Sind keine Rollen zu einem Film
--gespeichert, werden NULL-Werte ausgegeben.
--1 + 2
select 
    genre.Name as Genre,
    film.Titel as Titel,
    spielt.Rolle as Rolle,
    concat (hauptdarsteller.Name, hauptdarsteller.Vorname)
from genre
left join film on film.genre_id = genre.id
join filmgesellschaft on film.Filmgesellschaft_id = filmgesellschaft.id
left join spielt on spielt.Film_id = film.id
left join hauptdarsteller on spielt.Hauptdarsteller_id = hauptdarsteller.id
where genre.Name = "Thriller";

--3 

select *
from film 
left join spielt on film_id = film.id
where spielt.rolle is NULL

;


--4 

select * from film
where DauerInMinuten > (select avg(DauerInMinuten) from film);


--7

select avg(DauerInMinuten) as dL, genre.Name from film

join genre on film.genre_id = genre.id
group by genre_id
order by dL desc
limit 1
;
