-- die Datenbank neu aufbauen wenn diese bereits existiert
DROP DATABASE IF EXISTS projektarbeit;
CREATE DATABASE IF NOT EXISTS projektarbeit;
USE projektarbeit;

-- Erstellt die Tabelle 'Kunde' zur Speicherung von Kundendaten
CREATE TABLE IF NOT EXISTS Kunde(
    KundenID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Vorname varchar(20) CHARACTER SET utf8 NOT NULL,
    Nachname varchar(20) CHARACTER SET utf8 NOT NULL,
    Email varchar(50) CHARACTER SET utf8 NOT NULL,
    Adresse varchar(50) CHARACTER SET utf8 NOT NULL
);

-- Erstellt die Tabelle 'Bestellung' zur Speicherung von Bestellungen
CREATE TABLE IF NOT EXISTS Bestellung(
    BestellungID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    KundenID INT UNSIGNED NOT NULL,
    Bestelldatum DATE NOT NULL,
    FOREIGN KEY (KundenID) REFERENCES Kunde(KundenID)
);

-- Erstellt die Tabelle 'Hersteller' zur Verwaltung der Herstellerinformationen
CREATE TABLE IF NOT EXISTS Hersteller(
    HerstellerID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name varchar(50) CHARACTER SET utf8 NOT NULL,
    Hauptsitz varchar(50) CHARACTER SET utf8 NOT NULL
);

-- Erstellt die Tabelle 'Kategorie' zur Kategorisierung von Produkten
CREATE TABLE IF NOT EXISTS Kategorie(
    KategorieID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Bezeichnung varchar(50) CHARACTER SET utf8 NOT NULL
);

-- Erstellt die Tabelle 'Produkt' zur Speicherung von Produktdaten
CREATE TABLE IF NOT EXISTS Produkt(
    ProduktID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    HerstellerID INT UNSIGNED NOT NULL,
    Name varchar(50) CHARACTER SET utf8 NOT NULL,
    Beschreibung TEXT CHARACTER SET utf8 NOT NULL,
    Preis DECIMAL(10,2) NOT NULL,
    Lagerbestand INT UNSIGNED NOT NULL,
    FOREIGN KEY (HerstellerID) REFERENCES Hersteller(HerstellerID)
);

-- Erstellt die Tabelle 'Bestellposition' für die einzelnen Positionen einer Bestellung
CREATE TABLE IF NOT EXISTS Bestellposition(
    positionsID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BestellungID INT UNSIGNED NOT NULL,
    ProduktID INT UNSIGNED NOT NULL,
    Menge INT UNSIGNED NOT NULL,
    FOREIGN KEY (BestellungID) REFERENCES Bestellung(BestellungID) ON DELETE CASCADE,
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID) ON DELETE CASCADE
);

-- Erstellt die Tabelle 'ProduktKategorie' zur Verknüpfung von Produkten mit Kategorien (Viele-zu-Viele-Beziehung)
CREATE TABLE IF NOT EXISTS ProduktKategorie(
    ProduktID INT UNSIGNED NOT NULL,
    KategorieID INT UNSIGNED NOT NULL,
    PRIMARY KEY (ProduktID, KategorieID),
    FOREIGN KEY (ProduktID) REFERENCES Produkt(ProduktID) ON DELETE CASCADE,
    FOREIGN KEY (KategorieID) REFERENCES Kategorie(KategorieID)
);