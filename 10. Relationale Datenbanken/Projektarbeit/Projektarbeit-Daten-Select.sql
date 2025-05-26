USE projektarbeit;


-- alle Produkte welche unter 100€ kosten

SELECT Name, Beschreibung, Preis FROM Produkt
WHERE Preis < 100
Order by Preis DESC
;



-- alle Produkte die nachbestellt werden müssen

SELECT 
    Name, ProduktID,
    Lagerbestand,
    Preis
FROM Produkt
WHERE Lagerbestand < 1000
GROUP BY SUBSTRING_INDEX(Name, ' ', 1);


-- alle regestrierten Kunden 
SELECT CONCAT(Nachname, " " , Vorname) AS "Name, Vorname",
    Email,
    Adresse

 FROM kunde;


-- Kunde der die Letzte Bestellung getätigt hat
SELECT CONCAT(Nachname, " " , Vorname) AS "Name, Vorname",
    Email,
    Adresse,
    Bestelldatum
    FROM Kunde
JOIN Bestellung USING(KundenID)
ORDER BY Bestelldatum DESC
LIMIT 1
;


-- 5 SELECT mit JOIN
-- Kunden mit ihren Bestellungen anzeigen, nach dem Datum sortieren
SELECT
    CONCAT(Vorname, " " , Nachname),
    Email,
    Adresse,
    Bestelldatum,
    BestellungID

 FROM Kunde
NATURAL JOIN Bestellung
ORDER BY Bestelldatum DESC
;


-- 6 
-- alle Produkte von Herstellern die "Tech" im Namen enthalten und von welchen mehr als 20 im Lager gibt nach Preis sortiert 

SELECT
    Hersteller.Name as Hersteller,
    CONCAT (Produkt.Name, " --- ", Beschreibung) as Produkt,
    CONCAT (Preis, "€") as Preis,
    Lagerbestand

FROM hersteller
JOIN produkt USING(HerstellerID)
WHERE hersteller.Name LIKE "%Tech%" AND Lagerbestand > 20
Order By Preis DESC

;



-- 7
-- Zeigt für jede Bestellposition den Kunden, das bestellte Produkt, den Preis und die Menge an
SELECT
    CONCAT (Vorname, " ", Nachname) as Kunde,
    CONCAT (Produkt.Name, " --- ", Beschreibung) as Produkt,
    CONCAT (Preis, "€") as Preis,
    Menge
FROM bestellposition
JOIN Produkt using(ProduktID)
JOIN Bestellung using(BestellungID)
LEFT JOIN Kunde using(KundenID)
ORDER BY BestellungID DESC
;



-- 8
-- 10 Teuersten Produkte die in der Kategorie Smartphones sind

SELECT p.Name, p.Beschreibung, Preis, k.Bezeichnung FROM produktkategorie pk
JOIN produkt p on pk.ProduktID = p.ProduktID
JOIN kategorie k on pk.KategorieID = k.KategorieID
where k.Bezeichnung = "Smartphones"
ORDER BY Preis DESC
LIMIT 10
;


