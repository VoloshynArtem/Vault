SHOW databases;

DROP DATABASE IF EXISTS projektarbeit;

CREATE DATABASE IF NOT EXISTS projektarbeit;

USE projektarbeit;


CREATE TABLE IF NOT EXISTS Kunde(
    KundenID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    Vorname varchar(20) CHARACTER SET utf8 not null,
    Nachname varchar(20) CHARACTER SET utf8 not null,
    Email varchar(50) CHARACTER SET utf8 not null,
    Adresse varchar(50) CHARACTER SET utf8 not null
);

CREATE TABLE IF NOT EXISTS Bestellung(
    BestellungID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    KundenID INT UNSIGNED NOT NULL,
    Bestelldatum DATE NOT NULL,
    FOREIGN KEY (KundenID) REFERENCES Kunde(KundenID)
);

CREATE TABLE IF NOT EXISTS Hersteller(
    HerstellerID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    Name varchar(50) CHARACTER SET utf8 not null,
    Hauptsitz varchar(50) CHARACTER SET utf8 not null
);

CREATE TABLE IF NOT EXISTS Kategorie(
    KategorieID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    Bezeichnung varchar(50) CHARACTER SET utf8 not null
);


CREATE TABLE IF NOT EXISTS Produkt(
    ProduktID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    HerstellerID INT UNSIGNED NOT NULL,
    Name varchar(50) CHARACTER SET utf8 not null,
    Beschreibung TEXT CHARACTER SET utf8 not null,
    Preis DECIMAL(10,2) NOT NULL,
    Lagerbestand INT UNSIGNED NOT NULL,
    FOREIGN KEY (HerstellerID) REFERENCES Hersteller(HerstellerID)

);

CREATE TABLE IF NOT EXISTS Bestellposition(
    positionsID INT UNSIGNED NOT NULL AUTO_INCREMENT primary Key,
    BestellungID INT UNSIGNED NOT NULL,
    ProduktID INT UNSIGNED NOT NULL,
    Menge INT UNSIGNED NOT NULL,
    FOREIGN KEY (BestellungID) REFERENCES Bestellung(BestellungID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID) 
);

CREATE TABLE IF NOT EXISTS ProduktKategorie(
    ProduktID INT UNSIGNED NOT NULL,
    KategorieID INT UNSIGNED NOT NULL,
    PRIMARY KEY (ProduktID, KategorieID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID),
    FOREIGN KEY (KategorieID) REFERENCES Kategorie(KategorieID)
);