USE e_commerce;

DROP TABLE IF EXISTS bestellung; 
DROP TABLE IF EXISTS produkt;
DROP TABLE IF EXISTS kunde;
DROP TABLE IF EXISTS lieferant;
DROP TABLE IF EXISTS kategorie;

CREATE TABLE kategorie (
ka_id CHAR(2),
bezeichnung VARCHAR(30),
CONSTRAINT pk_ka PRIMARY KEY (ka_id)
);

CREATE TABLE lieferant (
li_id INT IDENTITY(1, 1),
bezeichnung VARCHAR(30),
adresse VARCHAR(50),
plz CHAR(5) check (LEN(plz) = 5),
ort VARCHAR(50),
CONSTRAINT pk_li PRIMARY KEY (li_id)
);

CREATE TABLE kunde (
ku_id INT IDENTITY(1, 1),
vorname VARCHAR(30),
nachname VARCHAR(30),
adresse VARCHAR(50),
plz CHAR(5) check (LEN(plz) = 5),
ort VARCHAR(50),
CONSTRAINT pk_ku PRIMARY KEY (ku_id)
);

CREATE TABLE produkt (
pr_id INT IDENTITY(1, 1),
bezeichnung VARCHAR(30),
ka_id CHAR(2),
li_id INT,
preis DECIMAL(8,2),
CONSTRAINT fk_pr_ka FOREIGN KEY (ka_id) REFERENCES kategorie(ka_id),
CONSTRAINT fk_pr_li FOREIGN KEY (li_id) REFERENCES lieferant(li_id),
CONSTRAINT pk_pr PRIMARY KEY (pr_id)
);

CREATE TABLE bestellung (
pr_id INT,
ku_id INT,
datum DATE,
menge INT,
CONSTRAINT fk_be_pr FOREIGN KEY (pr_id) REFERENCES produkt(pr_id),
CONSTRAINT fk_be_ku FOREIGN KEY (ku_id) REFERENCES kunde(ku_id),
CONSTRAINT pk_be PRIMARY KEY (pr_id, ku_id, datum)
);