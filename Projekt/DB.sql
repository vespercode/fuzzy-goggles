-- Datenbank erstellen
CREATE DATABASE EcommerceProjekt;
GO

USE EcommerceProjekt;
GO

-- Alte Tabellen löschen, falls sie existieren
DROP TABLE IF EXISTS Bestellung;
DROP TABLE IF EXISTS Produkt;
DROP TABLE IF EXISTS Kunde;
DROP TABLE IF EXISTS Lieferant;
DROP TABLE IF EXISTS Kategorie;
GO

-- 1. Tabelle Kategorie
CREATE TABLE Kategorie (
    KatID INT PRIMARY KEY,
    Bezeichnung VARCHAR(100) NOT NULL
);

-- 2. Tabelle Lieferant
CREATE TABLE Lieferant (
    LiID INT PRIMARY KEY,
    Bezeichnung VARCHAR(100) NOT NULL,
    Adresse VARCHAR(100) NOT NULL,
    PLZ VARCHAR(10) NOT NULL,
    Ort VARCHAR(100) NOT NULL
);

-- 3. Tabelle Kunde
CREATE TABLE Kunde (
    KuID INT PRIMARY KEY,
    Vorname VARCHAR(50) NOT NULL,
    Nachname VARCHAR(50) NOT NULL,
    Adresse VARCHAR(100) NOT NULL,
    PLZ VARCHAR(10) NOT NULL,
    Ort VARCHAR(100) NOT NULL
);

-- 4. Tabelle Produkt
CREATE TABLE Produkt (
    PrID INT PRIMARY KEY,
    Bezeichnung VARCHAR(100) NOT NULL,
    Kategorie INT NOT NULL,
    LiID INT NOT NULL,

    FOREIGN KEY (Kategorie) REFERENCES Kategorie(KatID),
    FOREIGN KEY (LiID) REFERENCES Lieferant(LiID)
);

-- 5. Tabelle Bestellung
CREATE TABLE Bestellung (
    PrID INT NOT NULL,
    KuID INT NOT NULL,
    Datum DATE NOT NULL,
    Menge INT NOT NULL,

    PRIMARY KEY (PrID, KuID, Datum),

    FOREIGN KEY (PrID) REFERENCES Produkt(PrID),
    FOREIGN KEY (KuID) REFERENCES Kunde(KuID),

    CHECK (Menge > 0)
);
GO