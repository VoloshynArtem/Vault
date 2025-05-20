use projektarbeit if EXISTS;

-- back week
-- reduziere den Preis um 5% bis 10% mit einer Wahrscheinlichkeit von 50%
UPDATE Produkt
    SET Preis = Preis - Preis * (RAND() * 0.05 + 0.05) * ROUND(RAND()) 
;


