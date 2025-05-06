use av;

show tables;


create TABLE verleihe(
    autoID int unsigned not null,
    Kundennummer int unsigned not null,


    FOREIGN KEY (autoID) REFERENCES automodelle (ID),
    FOREIGN KEY (Kundennummer) REFERENCES Kunden (KundenNr)
);

Alter TABLE verleihe
    ADD COLUMN VerleihID int unsigned not null AUTO_INCREMENT PRIMARY KEY,
    ADD COLUMN Verleihbeginn date not null,
    ADD COLUMN Verleihende date not null,
    ADD COLUMN Preis decimal(10,2) not null
    ;


alter table kunden
    drop foreign key autoFK,
    drop column autoFK;

show columns from kunden ;

select * from automodelle;

-- generate sample data for verleihe
insert into verleihe (autoID, Kundennummer, Verleihbeginn, Verleihende, Preis) values
(1, 1001, '2023-10-01', '2023-10-15', 300.00),
(2, 1002, '2023-10-05', '2023-10-20', 400.00),
(3, 1003, '2023-10-10', '2023-10-25', 500.00),
(2, 1004, '2023-10-15', '2023-10-30', 600.00),
(3, 1002, '2023-11-01', '2023-11-10', 450.00);



select * from verleihe;	
select * from kunden;


--select with join 
Select 
    Name, 
    Vorname, 
    Concat(Round( Preis ,0), " €") as Preis, 
    Hersteller, 
    Modell, 
    Concat (DATEDIFF(Verleihende, Verleihbeginn), " Tage") as Verleitage,
    eMail
from verleihe
Join kunden on kundenNummer = kunden.KundenNr
Join automodelle on autoID = automodelle.ID
Group by 
    Name, 
    Vorname, 
    Preis, 
    Hersteller, 
    Modell, 
    Verleihende, 
    Verleihbeginn;
