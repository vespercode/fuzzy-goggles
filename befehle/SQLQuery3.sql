CREATE DATABASE Mitarbeiterverwaltung;
GO

USE Mitarbeiterverwaltung;
GO

CREATE TABLE Abteilung (
    AbteilungID INT IDENTITY(1,1) PRIMARY KEY,
    Abteilungsname VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Arbeitszeitmodell (
    ArbeitszeitmodellID INT IDENTITY(1,1) PRIMARY KEY,
    Modellname VARCHAR(100) NOT NULL UNIQUE,
    Wochenstunden DECIMAL(4,1) NULL
);

CREATE TABLE Mitarbeiter (
    MitarbeiterID INT IDENTITY(1,1) PRIMARY KEY,
    Vorname VARCHAR(50) NOT NULL,
    Nachname VARCHAR(50) NOT NULL,
    Geburtsdatum DATE NULL,
    Familienstand VARCHAR(30) NULL,

    AbteilungID INT NOT NULL,
    ArbeitszeitmodellID INT NOT NULL,

    CONSTRAINT FK_Mitarbeiter_Abteilung
        FOREIGN KEY (AbteilungID)
        REFERENCES Abteilung(AbteilungID),

    CONSTRAINT FK_Mitarbeiter_Arbeitszeitmodell
        FOREIGN KEY (ArbeitszeitmodellID)
        REFERENCES Arbeitszeitmodell(ArbeitszeitmodellID)
);