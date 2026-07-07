USE EcommerceProjekt;
GO

-- Kategorien
INSERT INTO Kategorie (KatID, Bezeichnung) VALUES
(1, 'Elektronik'),
(2, 'Kleidung'),
(3, 'Bürobedarf'),
(4, 'Haushalt');

-- Lieferanten
INSERT INTO Lieferant (LiID, Bezeichnung, Adresse, PLZ, Ort) VALUES
(1, 'TechSupply GmbH', 'Hauptstraße 10', '90402', 'Nürnberg'),
(2, 'OfficeWorld AG', 'Bahnhofstraße 5', '90403', 'Nürnberg'),
(3, 'FashionTrade GmbH', 'Marktplatz 7', '90411', 'Nürnberg'),
(4, 'HomeGoods KG', 'Ringstraße 22', '90429', 'Nürnberg');

-- Kunden
INSERT INTO Kunde (KuID, Vorname, Nachname, Adresse, PLZ, Ort) VALUES
(1, 'Max', 'Müller', 'Gartenstraße 1', '90402', 'Nürnberg'),
(2, 'Anna', 'Schmidt', 'Friedrichstraße 8', '90403', 'Nürnberg'),
(3, 'Lukas', 'Weber', 'Königstraße 12', '90409', 'Nürnberg'),
(4, 'Maria', 'Fischer', 'Parkweg 4', '90419', 'Nürnberg');

-- Produkte
INSERT INTO Produkt (PrID, Bezeichnung, Kategorie, LiID) VALUES
(1, 'Laptop', 1, 1),
(2, 'Monitor', 1, 1),
(3, 'Tastatur', 3, 2),
(4, 'Maus', 3, 2),
(5, 'T-Shirt', 2, 3),
(6, 'Staubsauger', 4, 4);

-- Bestellungen
INSERT INTO Bestellung (PrID, KuID, Datum, Menge) VALUES
(1, 1, '2026-07-01', 1),
(2, 1, '2026-07-01', 2),
(3, 2, '2026-07-02', 1),
(5, 3, '2026-07-03', 3),
(6, 4, '2026-07-04', 1),
(4, 2, '2026-07-05', 2);
GO