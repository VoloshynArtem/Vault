

use kraftfahrzeuge;



show columns from kfz;

ALTER TABLE kfz
    Add column if not exists Farbe char(7), -- als hex 3 bytes speichern mit einem vorgefügten# null wenn unpainted
    add column if not exists Baujahr year not null
;



show columns from hersteller;


ALTER TABLE hersteller
    add column if not exists Gruendungsjahr year not null
;




use filme;

SELECT TABLE_NAME, COLUMN_NAME, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE();


-- lol nichtmal realesiert dass das aufgabe 4 ist und einfah nach DRY gemacht

delimiter //

create procedure checkBewertung(val float) return float
begin 
    returns case
        When val > 5.0 then 5.0
        when val < 0.0 then 0.0
        Else val
    end;
end;
//



create trigger bewertungOnInsert 
before insert on filme
for each row
    begin
        set New.Bewertung = checkBewertung(New.Bewertung);
    end;
//

create trigger bewertungOnUpdate 
before update on filme
for each row
    begin
        set New.Bewertung = checkBewertung(New.Bewertung);
    end;
//



delimiter ;




DELIMITER //

CREATE PROCEDURE filmeGeordnetAusgeben()
BEGIN
    SELECT * FROM film
    ORDER BY Titel;
END;
//

CREATE PROCEDURE filmeNachGenreAusgeben(IN g VARCHAR(50))
BEGIN
    SELECT * FROM film
    JOIN genre ON film.Genre_ID = genre.id
    WHERE genre.Name = g
    ORDER BY Titel;
END;
//

DELIMITER ;
