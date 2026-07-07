use test_db1;

select * from kermit;

alter table kermit add nachname varchar(10);

create table mitarbeiter2 (
id int,
nachname varchar(20)
);


insert into mitarbeiter2 values
(1, 'Müller'),
(2, 'Wagner'),
(3, 'Murphy')


select * from mitarbeiter2;

alter table mitarbeiter2 add vname varchar(15);

select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'mitarbeiter2';

alter table mitarbeiter2 alter column vname varchar(30);

sp_rename 'mitarbeiter2.vname', 'vorname';

sp_rename 'mitarbeiter2', 'mitarbeiter3';

select * from mitarbeiter3;


alter database mitarbeiter_ub1
modify name = mitarbeiter;


select * from mitarbeiter3;

alter table mitarbeiter3 drop column vorname;

alter table mitarbeiter3 
add vorname varchar(30) default 'Johnny';

insert into mitarbeiter3 values
(4, 'Doe', null);

insert into mitarbeiter3 (id, nachname) values
(5, 'Doe');

create table spieler (
spielernr int primary key,
nickname varchar(50) not null,
nachname varchar(50) not null,
e_mail varchar(100) unique,
alter_jahre int check (alter_jahre between 12 and 80),
registriert_am date default cast(getdate() as date)
);


select * from spieler;

drop table kauf;


create table kauf (
	kaufnr int primary key,
	spieler_fk int not null,
	artikel_name varchar(50) not null,
	preis decimal(8,2) check (preis > 0),
	rabatt_prozent int check (rabatt_prozent between 0 and 90),
	kaufdatum date default cast (getdate() as date)
	foreign key (spieler_fk) references spieler(spielernr)
);

select * from kauf;

create table datum2 (
datum_date date,
datum_char varchar(50)
);

insert into datum2 (datum_char) values
(getdate());

select * from datum2;

select * from datum2
where datum_char <= GETDATE();

select * from datum2
where datum_date <= GETDATE();

insert into datum2 (datum_date) values
(getdate());

insert into datum2 (datum_date) values
(getdate());


insert into spieler (spielernr, nickname, nachname, e_mail, alter_jahre) values
(1, 'DragonSlayer', 'Meyer', 'dragon@example.de', 16),
(2, 'PixelPro', 'Schulz', 'schulz@example.de', 18);


insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent, kaufdatum) values
(100, 1, 'Skin Feuerdrache', 9.99, 10, '2025-11-20');


insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent, kaufdatum) values
(101, 2, 'XP-Booster 7 Tage', 4.49, 0, '2025-11-20');




select * from spieler;
select * from kauf;


select * from spieler;
select * from kauf;


insert into spieler (spielernr, nickname, nachname, e_mail, alter_jahre) values
(3, 'NoobMaster', 'Maier', 'dragon@examüle.de', 17);


insert into spieler (spielernr, nickname, nachname, e_mail, alter_jahre) values
(4, NULL, 'Berger', 'berger@example.de', 19);

insert into spieler (spielernr, nickname, nachname, e_mail, alter_jahre) values
(5, 'MiniGamer', 'Klein', 'mini@example.de', 82);


insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent, kaufdatum) values
(102, 99, 'Legendary Schwert', 19.99, 5);


insert into spieler (spielernr, nickname, nachname, e_mail, alter_jahre) values
(5, 'MiniGamer', 'Klein', 'mini@example.de', 82);

insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(102, 99 , 'Legendares Schwert', 19.99, 5);

select * from spieler;

insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(103, 1 , 'Legendares Schwert', 19.99, 5);


delete from kauf where kaufnr


insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(102, 99 , 'Legendäres Schwert', 19.99, 5);

select * from spieler;

insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(103, 1 , 'Goldpaket', 14.99, 60);

insert into kauf (kaufnr, spieler_fk, artikel_name, rabatt_prozent) values
(104, 1, 'Testartikel', 10);


select * from kauf;


alter table;


alter table kauf alter column preis decimal(8,2) check (preis > 0) T

insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(103, 1, 'Goldpaket', 14.99, 60);

insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(104, 1, 'Testartikel', 0.00, 10);

insert into kauf (kaufnr, spieler_fk, artikel_name, rabatt_prozent) values
(104, 1, 'Testartikel', 10);

delete from kauf where preis is null;

select * from kauf;

alter table kauf alter column preis decimal(10,2) not null;

alter table kauf add constraint kauf_check check (preis > 0);


insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(104, 1, 'Testartikel', 0.00, 10);


select * from kauf;

alter table kauf alter column preis decimal(10,2) not null;
-- alter table kauf add constraint kauf_check check (preis > 0);

insert into kauf (kaufnr, spieler_fk, artikel_name, preis, rabatt_prozent) values
(104, 1, 'Testartikel', 0.00, 10);

select * from mitarbeiter3;

alter table mitarbeiter3


select * from mitarbeiter3;

alter table mitarbeiter3 alter column id int not null;

I

alter table mitarbeiter3
add constraint pk_mitarbeiter3 primary key(id);

-- Meldung 8111, Ebene 16, Status 1, Zeile 137
-- Eine PRIMARY KEY-Einschrankung kann fur eine Spalte in der mitarbeiter3-Tabelle, die NULL zulässt,
-- Meldung 1750, Ebene 16, Status 0, Zeile 137
-- Die Einschrankung oder der Index konnte nicht erstellt werden. Siehe vorherige Fehler.


alter table mitarbeiter3
add constraint pk_mitarbeiter3 primary key(id);

-- Meldung 8111, Ebene 16, Status 1, Zeile 137
-- Eine PRIMARY KEY-Einschrankung kann für eine Spalte in der mitarbeiter3-Tabelle, die NULL zulässt,
-- Meldung 1750, Ebene 16, Status 0, Zeile 137
-- Die Einschrankung oder der Index konnte nicht erstellt werden. Siehe vorherige Fehler.

alter table mitarbeiter3 alter column id int not null;
-- und dann:
alter table mitarbeiter3
add constraint pk_mitarbeiter3 primary key(id);


alter table mitarbeiter3 add aktiv int;

alter table mitarbeiter3 add default 1 for aktiv;

select * from mitarbeiter3;

insert into mitarbeiter3 (id, nachname, vorname) values
(6, 'Presley', 'Elvis');


select * from mitarbeiter3;

update aktiv 


insert into mitarbeiter3 (id, nachname, vorname) values
(6, 'Presley', 'Elvis');

select * from mitarbeiter3;

update mitarbeiter3 set aktiv=0
where aktiv is null;

alter table mitarbeiter3
alter column aktiv int not null;

 
alter table mitarbeiter3
add constraint check_aktiv_ma3
check (aktiv in (0, 1));

insert into mitarbeiter3 (id, nachname, vorname, aktiv) values
(7, 'Turner', 'Tina', 1);

select * from mitarbeiter3;

alter table mitarbeiter3 drop constraint check_aktiv_ma3;

insert into mitarbeiter3 (id, nachname, vorname, aktiv) values
(8, 'Berry', 'Chuck', 5);


delete from mitarbeiter3 where id=4;


I

insert into mitarbeiter3 (id, nachname, vorname, aktiv) values
(8, 'Berry', 'Chuck', 5);

delete from mitarbeiter3 where id = 4;

alter table mitarbeiter3
add constraint unique_nachname_ma3 unique(nachname);

insert into mitarbeiter3 (id, nachname, vorname, aktiv) values
(9, 'Berry', 'Chuck', 5);



create table spieler (
spielernr int primary key,
nickname varchar(50) not null,
nachname varchar(50) not null,
e_mail varchar(100) unique,
alter_jahre int check (alter_jahre between 12 and 80),
registriert_am date default cast(getdate() as date)
);


alter table mitarbeiter3
add constraint check_aktiv_ma3
check (aktiv in (0, 1));



create table zahlen2 (
zahl int);

alter table zahlen2 
add constraint zahlPruef 
check (zahlPruef between 1 and 200);


ALTER TABLE zahlen2
ADD CONSTRAINT zahlPruef
CHECK (zahl BETWEEN 1 AND 200);

insert into zahlen2 values (300);   
insert into zahlen2 values (111);

create table zahlen3 (
zahl int, CONSTRAINT zahlPruef
CHECK (zahl BETWEEN 1 AND 200); 

CREATE TABLE zahlen3 (
  zahl INT,
  CONSTRAINT zahlPruef3 CHECK (zahl BETWEEN 1 AND 200)
);



drop table zahlen3;

insert into zahlen3 values (300);   
insert into zahlen3 values (111);


create table Land (


USE mitarbeiter_ub1;


USE mitarbeiter_ub1;
GO

-- Falls Tabellen schon existieren
DROP TABLE IF EXISTS land;
DROP TABLE IF EXISTS zeitzone;
GO

-- 1. Tabelle Land erstellen
CREATE TABLE land (
  landnr INT PRIMARY KEY,
  landbez VARCHAR(100) NOT NULL
);
GO

-- 2. Tabelle Zeitzone erstellen
CREATE TABLE zeitzone (
  zonennr INT PRIMARY KEY,
  zonenbez VARCHAR(100) NOT NULL,
  utc_offset VARCHAR(10) NOT NULL
);
GO

-- 3. Länder einfügen
INSERT INTO land (landnr, landbez) VALUES
(1, 'Deutschland'),
(2, 'Brasilien'),
(3, 'Indien'),
(4, 'China'),
(5, 'Australien'),
(6, 'Kanada'),
(7, 'USA'),
(8, 'Japan'),
(9, 'Südafrika');
GO

-- 4. Zeitzonen einfügen
INSERT INTO zeitzone (zonennr, zonenbez, utc_offset) VALUES
(1, 'mitteleuropäische zeit (mez)', '+1'),
(2, 'brasilia-zeit', '-3'),
(3, 'indische standardzeit', '+5,30'),
(4, 'chinesische standardzeit', '+8'),
(5, 'australische ostzeit (aest)', '+10'),
(6, 'pazifische zeit (z. b. vancouver)', '-8'),
(7, 'eastern standard time (z. b. new york)', '-5'),
(8, 'japanische standardzeit', '+9'),
(9, 'südafrikanische standardzeit', '+2');
GO

-- 5. Mitarbeitertabelle erweitern
ALTER TABLE mitarbeiter
ADD mlaendernr INT NULL,
    mzonennr INT NULL;
GO

-- 6. Fremdschlüssel hinzufügen
ALTER TABLE mitarbeiter
ADD CONSTRAINT fk_mitarbeiter_land
FOREIGN KEY (mlaendernr)
REFERENCES land(landnr);
GO

ALTER TABLE mitarbeiter
ADD CONSTRAINT fk_mitarbeiter_zeitzone
FOREIGN KEY (mzonennr)
REFERENCES zeitzone(zonennr);
GO


SELECT *
FROM land;

SELECT *
FROM zeitzone;

SELECT
  ma.ma_id,
  ma.nname,
  ma.vname,
  l.landbez AS Land,
  z.zonenbez AS Zeitzone,
  z.utc_offset AS UTC
FROM mitarbeiter ma
LEFT JOIN land l
  ON ma.mlaendernr = l.landnr
LEFT JOIN zeitzone z
  ON ma.mzonennr = z.zonennr;

SELECT
  ma.ma_id,
  ma.nname,
  ma.vname,
  l.landbez AS Land,
  z.zonenbez AS Zeitzone,
  z.utc_offset AS UTC
FROM mitarbeiter ma
LEFT JOIN land l
  ON ma.mlaendernr = l.landnr
LEFT JOIN zeitzone z
  ON ma.mzonennr = z.zonennr;

USE mitarbeiter_ub1;
GO

-- Erst alle nach Deutschland setzen
UPDATE mitarbeiter
SET mlaendernr = 1,
    mzonennr = 1;
GO

-- ma_id 6 und 7: Brasilien
UPDATE mitarbeiter
SET mlaendernr = 2,
    mzonennr = 2
WHERE ma_id IN (6, 7);
GO

-- ma_id 16, 23, 37 und 12: Australien
UPDATE mitarbeiter
SET mlaendernr = 5,
    mzonennr = 5
WHERE ma_id IN (16, 23, 37, 12);
GO

-- ma_id 11 und 33: Südafrika
UPDATE mitarbeiter
SET mlaendernr = 9,
    mzonennr = 9
WHERE ma_id IN (11, 33);
GO


WHERE ma_id IN (11, 13);


SELECT
  ma.ma_id AS [MA-ID],
  ma.nname AS Nachname,
  ma.vname AS Vorname,
  l.landbez AS Land,
  z.zonenbez AS Zonenbezeichnung,
  z.utc_offset AS [UTC-Offset]
FROM mitarbeiter ma
JOIN land l
  ON ma.mlaendernr = l.landnr
JOIN zeitzone z
  ON ma.mzonennr = z.zonennr
WHERE l.landbez <> 'Deutschland'
ORDER BY
  ma.ma_id;


