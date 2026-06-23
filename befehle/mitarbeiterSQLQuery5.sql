drop table abteilung;
drop table arbeitszeitmodell;
drop table familienstand;
drop table mitarbeiter;

Create table abteilung (
abt_id INT IDENTITY (1,1) PRIMARY KEY,
abtnr VARCHAR(100)
);

CREATE TABLE arbeitszeitmodell (
modell_code char(2) PRIMARY KEY,
az_bez VARCHAR(50)
);

create table familienstand (
f_id INT IDENTITY(1,1) Primary key,
fam_bez Varchar(50)
);

create table mitarbeiter (
ma_id INT IDENTITY(1,1),
nname VARCHAR(100),
vname VARCHAR(100),
str_hsnr VARCHAR(100),
plz VARCHAR(5),
ort VARCHAR(50),
gebdatum DATE,
f_id INT, 
azm_id CHAR(2),
abt_nr INT,
CONSTRAINT PK_mitarbeiter PRIMARY KEY (ma_id),
CONSTRAINT FK_ma_fam_f_id FOREIGN KEY (f_id) REFERENCES familienstand(f_id),
CONSTRAINT FK_ma_azm_azm_f_id FOREIGN KEY (azm_id) REFERENCES arbeitszeitmodell(modell_code),
CONSTRAINT FK_ma_abt_abt_id FOREIGN KEY (abt_id) REFERENCES abteilung(abtnr)
);



insert into abteilung VALUES
(1	Personal
(2	Vertrieb
(3	Marketing
(4	Buchhaltung
(5	IT
(6	Entwicklung
(7	Produktion
(8	Einkauf
(9	Logistik
(10	Verwaltung