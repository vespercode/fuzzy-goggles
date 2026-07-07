USE e_commerce;
  
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
('Laptop', 'EL', 1, 690.00),
('Monitor', 'EL', 1, 150.00),
('Tastatur', 'BU', 2, 35.00),
('Maus', 'BU', 2, 32.50),
('Druckerpapier', 'BU', 2, 7.99),
('Staubsauger', 'HA', 3, 259.90),
('Kaffeemaschine', 'HA', 3, 439.90),
('T-Shirt', 'KL', 4, 29.90),
('Jacke', 'KL', 4, 68.90),
('Sneaker', 'SP', 5, 74.90),
('Fussball', 'SP', 5, 49.50),
('Fitnessmatte', 'SP', 5, 24.0),
('Kaffee', 'LE', 6, 12.90),
('Tee', 'LE', 6, 3.90),
('Schokolade', 'LE', 6, 1.29);
  
 
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

 