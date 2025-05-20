drop DATABASE IF EXISTS kraftfahrzeuge;

create database kraftfahrzeuge;

use kraftfahrzeuge;



create table if not EXISTS kfz(
    FahrgestellNr int unsigned not null primary key AUTO_INCREMENT,
    Modell varchar(30) not null,
    Hersteller varchar(30) not null,
    Kennzeichen varchar(12),
    leistung int unsigned 

);

create table if not exists hersteller (
    Hersteller VARCHAR(50) NOT NULL PRIMARY KEY,
    Hauptsitz VARCHAR(50) NOT NULL
);


ALTER TABLE kfz
ADD CONSTRAINT fk_kfz_hersteller
FOREIGN KEY (Hersteller) REFERENCES hersteller(Hersteller);




