USE e_commerce;
 
 
-- Alte Daten löschen

DELETE FROM bestellung;
DELETE FROM produkt;
DELETE FROM kunde;
DELETE FROM lieferant;
DELETE FROM kategorie;
 
 
-- Identity zurücksetzen

DBCC CHECKIDENT ('lieferant', RESEED, 0);
DBCC CHECKIDENT ('kunde', RESEED, 0);
DBCC CHECKIDENT ('produkt', RESEED, 0);
 
 
-- Kategorien

INSERT INTO kategorie VALUES
('EL', 'Elektronik'),
('BU', 'Bürobedarf'),
('HA', 'Haushalt'),
('KL', 'Kleidung'),
('SP', 'Sport'),
('LE', 'Lebensmittel');
 
 
-- Lieferanten
 
INSERT INTO lieferant VALUES
('TechSupply GmbH', 'Hauptstrasse 10', '90402', 'Nuernberg'),
('OfficePro AG', 'Bahnhofstrasse 5', '90403', 'Nuernberg'),
('HomeGoods KG', 'Ringstrasse 22', '90429', 'Nuernberg'),
('FashionTrade GmbH', 'Marktplatz 7', '90411', 'Nuernberg'),
('SportMax GmbH', 'Sportallee 12', '90762', 'Fuerth'),
('FoodLine GmbH', 'Industriestrasse 18', '91052', 'Erlangen');
 
SET IDENTITY_INSERT lieferant OFF;
 
 
-- Kunden
 
INSERT INTO kunde VALUES
('Max', 'Mueller', 'Gartenstrasse 1', '90402', 'Nuernberg'),
('Anna', 'Schmidt', 'Friedrichstrasse 8', '90403', 'Nuernberg'),
('Lukas', 'Weber', 'Koenigstrasse 12', '90409', 'Nuernberg'),
('Maria', 'Fischer', 'Parkweg 4', '90419', 'Nuernberg'),
('Tim', 'Wagner', 'Seestrasse 15', '90425', 'Nuernberg'),
('Laura', 'Becker', 'Waldweg 9', '90762', 'Fuerth'),
('Jonas', 'Hoffmann', 'Bergstrasse 3', '91052', 'Erlangen'),
('Sofia', 'Klein', 'Lindenweg 6', '90431', 'Nuernberg');
  
 
-- Produkte

INSERT INTO produkt VALUES
('Laptop', 'EL', 1),
('Monitor', 'EL', 1),
('Tastatur', 'BU', 2),
('Maus', 'BU', 2),
('Druckerpapier', 'BU', 2),
('Staubsauger', 'HA', 3),
('Kaffeemaschine', 'HA', 3),
('T-Shirt', 'KL', 4),
('Jacke', 'KL', 4),
('Sneaker', 'SP', 5),
('Fussball', 'SP', 5),
('Fitnessmatte', 'SP', 5),
('Kaffee', 'LE', 6),
('Tee', 'LE', 6),
('Schokolade', 'LE', 6);
  
 
-- Bestellungen

INSERT INTO bestellung VALUES
(1, 1, '2026-07-01', 1),
(2, 1, '2026-07-01', 2),
(3, 2, '2026-07-02', 1),
(4, 2, '2026-07-02', 2),
(5, 3, '2026-07-03', 5),
(6, 4, '2026-07-04', 1),
(7, 4, '2026-07-04', 1),
(8, 5, '2026-07-05', 3),
(9, 5, '2026-07-06', 1),
(10, 6, '2026-07-06', 1),
(11, 6, '2026-07-07', 2),
(12, 7, '2026-07-07', 1),
(13, 8, '2026-07-08', 4),
(14, 8, '2026-07-08', 2),
(15, 3, '2026-07-09', 6),
(1, 2, '2026-07-10', 1),
(3, 1, '2026-07-10', 2),
(6, 5, '2026-07-11', 1),
(10, 7, '2026-07-12', 1),
(13, 4, '2026-07-12', 3);

 


SELECT 
    p.pr_id,
    p.bezeichnung AS produkt,
    k.bezeichnung AS kategorie,
    l.bezeichnung AS lieferant
FROM produkt p
JOIN kategorie k ON p.ka_id = k.ka_id
JOIN lieferant l ON p.li_id = l.li_id;


SELECT
    b.datum,
    ku.vorname,
    ku.nachname,
    p.bezeichnung AS produkt,
    b.menge
FROM bestellung b
JOIN kunde ku ON b.ku_id = ku.ku_id
JOIN produkt p ON b.pr_id = p.pr_id
ORDER BY b.datum;



