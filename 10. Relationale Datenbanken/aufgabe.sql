-- show 
SELECT * from cd;


-- Block1
create TABLE cd  (
    cdID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    Titel varchar(20) CHARACTER SET utf8,
    Interpret varchar(20)CHARACTER SET utf8,
    Gesamtdauer TIME,
    ErscheinungsDatum date
)
;

-- Block 2 because im an idiot and forgot to set not null in the first place (not copilot making fun of me)
alter table cd
modify column Titel varchar(20) not null,
modify column Interpret varchar(20) not null,
modify column Gesamtdauer time not null;




-- delete sample data
DELETE FROM cd;
ALTER TABLE cd AUTO_INCREMENT = 1;


-- add sample data

INSERT into cd (Titel, Interpret, Gesamtdauer, ErscheinungsDatum) values
('Back in Black', 'AC/DC', '00:42:11', '1980-07-25'),
('The Dark Side of the Moon', 'Pink Floyd', '00:43:00', '1973-03-01'),
('Rumours', 'Fleetwood Mac', '00:39:43', '1977-02-04'),
('Hotel California', 'Eagles', '00:43:28', '1976-12-08');
--test if primary key works
Insert into cd values
(2 "Kingslayer", "Bring Me The Horizon", "00:03:30", "2020-10-30");


-- delete collumn 
alter table cd
drop column ErscheinungsDatum;
--nix i guess




-- aufgabe 2 (┬┬﹏┬┬)

--create database ヾ(⌐■_■)ノ♪
CREATE database hardware;
use hardware;

--create ttable
create Table festplatten (
    ID int UNSIGNED NOT NULL AUTO_INCREMENT primary key, -- weil modell kann gleich sein und sooo UWU
    Modell varchar(20) CHARACTER SET utf8 NOT NULL,
    Hersteller varchar(20) CHARACTER SET utf8 NOT NULL,
    Kapazität int UNSIGNED NOT NULL,
    Lesegeschwindigkeit int UNSIGNED NOT NULL,
    Schreibgeschwindigkeit int UNSIGNED NOT NULL
    
)

--some sample datafication ᓚᘏᗢ
Insert into festplatten (Modell, Hersteller, Kapazität, Lesegeschwindigkeit, Schreibgeschwindigkeit) values
    ('HDTB410EK3AA', 'Toshiba', 4000, 5000, 4800),
    ('STGX2000400', 'Seagate', 2000, 5400, 5200),
    ('WD10EZEX', 'Western Digital', 1000, 7200, 6800),
    ('MX500', 'Crucial', 500, 560, 510),
    ('870 QVO', 'Samsung', 1000, 550, 520),
    ('P300', 'Toshiba', 3000, 7200, 6800),
    ('Barracuda', 'Seagate', 4000, 5400, 5200),
    ('Blue SN570', 'Western Digital', 500, 3500, 3000),
    ('980 PRO', 'Samsung', 1000, 7000, 5000),
    ('IronWolf', 'Seagate', 8000, 7200, 6800);


-- and finally output all dat goodness 👈(ﾟヮﾟ👈)
SELECT * from festplatten;




--aufgabe 5
use hardware;
SELECT * from festplatten;

-- clear previous sampledata
delete from festplatten;

--create table Hersteller
create table IF NOT EXISTS Hersteller(
    ID int UNSIGNED not null AUTO_INCREMENT primary key,
    Bezeichnung varchar(20) CHARACTER SET utf8 not null,   
    Hauptsitz varchar(20) CHARACTER SET utf8
);

-- add foreign key 


alter table festplatten
    drop column Hersteller,
    add column HerstellerID int unsigned not null,
    add foreign key (HerstellerID) references Hersteller(ID);


-- add sample data to Hersteller table (╯°□°）╯︵ ┻━┻

insert into hersteller (Bezeichnung, Hauptsitz) values
('Toshiba', 'Tokyo'),
('Seagate', 'San Jose'),
('Western Digital', 'San Jose'),
('Crucial', 'Boise'),
('Samsung', 'Suwon'),
('Intel', 'Santa Clara'),
('Kingston', 'Fountain Valley'),
('Corsair', 'Fremont'),
('ADATA', 'Taipei City'),
('Transcend', 'Taipei City');

select * from hersteller;


-- add sample data to festplatten table boogie boogie bang bang -skynd

select * from festplatten;
insert into festplatten(Modell, Kapazität, Lesegeschwindigkeit, Schreibgeschwindigkeit, HerstellerID) values
('HDTB410EK3AA', 4000, 5000, 4800, 1),
('STGX2000400', 2000, 5400, 5200, 2),
('WD10EZEX', 1000, 7200, 6800, 3),
('MX500', 500, 560, 510, 4),
('870 QVO', 1000, 550, 520, 5),
('P300', 3000, 7200, 6800, 1),
('Barracuda', 4000, 5400, 5200, 2),
('Blue SN570', 500, 3500, 3000, 3),
('980 PRO', 1000, 7000, 5000,5),
('IronWolf',8000 ,7200 ,6800 ,2);



-- ausgabe mit join

SELECT * from festplatten;
Select * from hersteller;


use hardware;
Select Bezeichnung, 
    Modell, 
    Concat(Kapazität, " GB" ) as Kapazität,
    Concat(ROUND(Kapazität * 100.0 / SUM(Kapazität) OVER (), 2), " %") AS procentile,
    Hauptsitz
From festplatten
Join hersteller on festplatten.HerstellerID = hersteller.ID
Where Kapazität > 500
Order By Kapazität;

