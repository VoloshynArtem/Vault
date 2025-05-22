use projektarbeit ;

-- black week
-- reduziere den Preis um 5% bis 10% mit einer Wahrscheinlichkeit von 50%
UPDATE Produkt
    SET Preis = Preis - Preis * (RAND() * 0.05 + 0.05) * ROUND(RAND()) 
;


-- business goes out of business und alle produkte werden vernichtet
DELETE FROM Produkt
WHERE HerstellerID = (SELECT HerstellerID FROM Hersteller WHERE Name = 'FotoPlus');

DELETE FROM Hersteller
WHERE Name = 'FotoPlus';


-- kunde storniert eine Bestellung
DELETE FROM Bestellung
WHERE BestellungID = 3;


-- kunde will alle produkte doppelt bestellen welche an einem bestimmten Datum bestellt wurden
-- IN weil ein kunde mehere bestellungen an einem tag haben kann 
UPDATE bestellposition 
SET Menge = Menge * 2
WHERE BestellungID IN (SELECT BestellungID FROM Bestellung JOIN Kunde USING(KundenID) WHERE Kunde.Vorname = 'Max' AND Kunde.Nachname = 'Mustermann' AND Bestellung.Bestelldatum = '2025-05-05')
;

-- Kunde storniert alle Bestellungen die er getätigt hat
DELETE FROM bestellung
WHERE BestellungID IN (SELECT BestellungID FROM Bestellung JOIN Kunde USING(KundenID) WHERE Kunde.Vorname = 'Max' AND Kunde.Nachname = 'Mustermann')
;

