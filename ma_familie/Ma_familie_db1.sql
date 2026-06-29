drop table if exists menschlein;
drop table if exists familienstand;


create table familienstand (
fid INT IDENTITY(1,1) PRIMARY KEY,
fbez VARCHAR(50)
);

create table menschlein (
id INT IDENTITY(1,1),
vname VARCHAR(50) not null,
fid INT,
CONSTRAINT PK_mensch PRIMARY KEY(id),
CONSTRAINT FK_menschlein_famstand_fid
FOREIGN KEY(fid) REFERENCES familienstand(fid)
);

insert INTO familienstand VALUES
('ledig'),
('verheiratet'),
('geschieden');

insert into menschlein VALUES
('Lisa', 3),
('Hanni', 1),
('Eddie', 2),
('Lorenz', 2);

insert into familienstand values
('Ledig'), ('Verheiratet'), ('Geschieden');

insert into menschlein values
('Lisa', 3),
('Hanni', 1),
('Eddi', 2),
('Lorenz', 2);

select * from menschlein

-- Kontrolle: beide Tabellen
SELECT * FROM familienstand;
SELECT * FROM menschlein;

-- Kontrolle mit JOIN
SELECT m.id, m.vname, f.fbez
FROM menschlein m
JOIN familienstand f ON m.fid = f.fid;

insert into menschlein values
('Lina', 1);

select vname Vorname, fbez "Familienstand des Mitarbeiters" from menschlein
join familienstand on menschlein.fid=familienstand.fid
where fbez like '%n';

select vname Vorname, fbez "Familienstand des Mitarbeiters" from menschlein
join familienstand on menschlein.fid=familienstand.fid
where vname like '%n%';

select vname Vorname, fbez "Familienstand des Mitarbeiters" from menschlein
join familienstand on menschlein.fid=familienstand.fid
where vname like '____';


select vname Vorname, fbez "Familienstand des Mitarbeiters" from menschlein
join familienstand on menschlein.fid=familienstand.fid
where vname like '%__n';


-- where vname like 'Li_a';
-- where vname like '%1%';

-- Varname hat 4 Symbolen
-- Lisa oder Lina: 1 Symbol dazwischen
-- Name enthalt "i"

-- % = belibig viele Symbolen
-- = genau 1 Symbol