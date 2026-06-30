
-- Alle ids, Vornamen und Familienstandsbezeichnungen der Personen,
-- bei denen als Familienstandsbezeichnung (fbez) geschieden eingetragen wurde.

select * from menschlein;
select * from familienstand;

select m.id, m.vname, f.fbez
from menschlein m
join familienstand f on f.fid = m.fid
where f.fbez = 'geschieden'

';

where vname like ' _.
-- where vname like 'Li_a';
-- where vname like '%i%';

select vname Vorname, fbez "Familienstand des Mitarbeiters" from menschlein
join familienstand on menschlein.fid = familienstand.fid
-- Vorname hat 4 Symbolen
-- Lisa oder Lina: 1 Symbol dazwischen
-- Name enthalt "i"

-- % = belibig viele Symbolen
-- genau 1 Symbol



-- Alle ids, Vornamen und Familienstandsbezeichnungen der Personen,
-- die nicht ledig sind

select * from menschlein;
select * from familienstand;

select m.id, m.vname, f.fbez
from menschlein m
join familienstand f on f.fid = m.fid 
where f.fbez <> 'geschieden';

-- Alle ids, Vornamen und Familienstandsbezeichnungen der Personen,
-- bei denen die Familenstand-ID (fid) gleich 1 ist.

select * from menschlein;
select * from familienstand; 

select m.id, m.vname, f.fbez
from menschlein m
join familienstand f on f.fid = m.fid 
where f.fid = 1;

-- Alle ids, Vornamen und Familienstandsbezeichnungen der Personen,
-- bei denen die Familenstand-ID (fid) nicht gleich 1 ist.

select * from menschlein;
select * from familienstand; 

select m.id, m.vname, f.fbez
from menschlein m
join familienstand f on f.fid = m.fid 
where f.fid != 1;


-- Alle ids, Vornamen und Familienstandsbezeichnungen der Personen,
-- bei denen die Familenstand-ID (fid) kleiner oder gleich 3 ist.


select * from menschlein;
select * from familienstand; 

select m.id, m.vname, f.fbez
from menschlein m
join familienstand f on f.fid = m.fid 
where f.fid <= 3;


