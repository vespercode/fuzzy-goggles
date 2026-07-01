-- select
--sum(gehalt),
--avg(gehalt), -- Der Durchschnitt uber alle Gehalter wird ermittelt
--min(gehalt), -- Das niedrigste Gehalt
--Das hochste Gehalt
---- Anzahl Zeilen in der Tabelle (alle, auch die mit null)

---- Alle Eintrage bei gehalt werden aufsummiert

--max(gehalt),
--count(*)
---- from personal;

use ma_familien

select * from menschlein;
select count(*) Menschen from menschlein;

select count(vname) from menschlein;
select count(fid) Familienstand from menschlein;


select count(vname) from menschlein where fid is null;

select vname, count(fid) Familienstand from menschlein 
group by vname;


use mitarbeiter_ub1

-- Count zahlt Datensatze.
-- Count(*) zahlt alle Datensätze,
-- count(geschlecht) zahlt alle Datensatze, welche bei geschlecht einen Eintrag haben

-- Grüppchenbildung mittels group by

select count(abt.abtbez)
from mitarbeiter ma 
join abteilung abt on ma.abt_nr = abt.abtnr;

select ma.nname, abt.abtbez
from mitarbeiter ma 
join abteilung abt on ma.abt_nr = abt.abtnr;

INSERT INTO mitarbeiter VALUES
('Wagner', 'Robert', 'Bachstr. 7', '90768', 'Fuerth', '1975-12-04', NULL, NULL, NULL)


select count(abt.abtbez)
from mitarbeiter ma
left join abteilung abt on ma.abt_nr = abt.abtnr;

select count(*)
from mitarbeiter ma
left join abteilung abt on ma.abt_nr = abt.abtnr;


select count(abt.abtbez)
from mitarbeiter ma
left join abteilung abt on ma.abt_nr = abt.abtnr;

select *
from mitarbeiter ma
left join abteilung abt on ma.abt_nr = abt.abtnr;

select *
from mitarbeiter ma
 join abteilung abt on ma.abt_nr = abt.abtnr;

select count(*)
from mitarbeiter ma
left join abteilung abt on ma.abt_nr = abt.abtnr;

select abt.abtbez, count(*)
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez;

select abt.abtnr, abt.abtbez, count(*) 
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez


select abt.abtnr, abt.abtbez, count(*) 'MA in der Abteilung'
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez, abt.abtnr;

select ma.nname, abt.abtnr, abt.abtbez, count(*) 'MA in der Abteilung'
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez, abt.abtnr, ma.nname;


select ma.nname, abt.abtnr, abt.abtbez, count(*) 'MA in der Abteilung'
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez, abt.abtnr, ma.nname;


select *
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr;


select ma.nname, abt.
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr;

select abt.abtbez, count(*) 'MA in der Abteilung'
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez;

select ma.nname, abt.abtbez
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr;

select abt.abtbez, count(*) 'MA in der Abteilung'
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
group by abt.abtbez;

select * from mitarbeiter;
select * from familienstand;
abteilung

select fid.fam_bez, count(ma.f_id) 'MA Familienstand'
from mitarbeiter ma
join familienstand fid on ma.f_id = fid.f_id
group by fid.fam_bez;


select abt.abtnr, abtbez, count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt.abtnr, abtbez;

-- HAVING 
-- Abteilungen mit mehr als 3 Mitarbeiter:

select abt.abtnr, abtbez, count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt.abtnr, abtbez
HAVING count(*) > 3;


select * from mitarbeiter;
select * from familienstand;

select f.f_id, count(*) 'Familienstand'
from mitarbeiter ma
join familienstand f on f.f_id = ma.f_id
group by f.f_id;

select f.fam_bez, count(*) 'Anzahl Mitarbeiter'
from mitarbeiter ma
join familienstand f on f.f_id = ma.f_id
group by f.fam_bez;

select f.fam_bez, count(*) 'Anzahl Mitarbeiter'
from mitarbeiter ma
join familienstand f on f.f_id = ma.f_id
group by f.fam_bez
having count(*) >= 8;

select f. fam_bez
from mitarbeiter ma
join familienstand f on f.f_id = ma.f_id
group by f. fam_bez
having count(*) >= 8;

-- Hipr wollten wir nur die Anzahl der Mitarbeiter aus den Abteilungen IT und Logistik.|

select abt.abtbez,  count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
where abt.abtbez in ('IT', 'Logistik')
group by abt.abtbez



having a.abtbez 'IT' 


-- Hier wollten wir nur die Anzahl der Mitarbeiter aus den Abteilungen IT und Logistik.
select abt.abtbez, count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
where abt.abtbez in ('IT', 'Logistik')
group by abt. abtbez;

select abt.abtbez, count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt. abtbez
having abt.abtbez in ('IT', 'Logistik')

select * from mitarbeiter;
select * from familienstand;
select * from abteilung;

select abt.abtnr, abt.abtbez, count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
where 
group by abt.abtbez
having count(*) >= 3;

select abt.abtnr, abt.abtbez, count(*)
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt.abtnr, abt.abtbez
having count(*) > 3
order by abt.abtbez

-- Anzahl der MA pro Abteilung (AbtNr und Bezeichnung) fur die Abteilungen mit mehr als 3 MA.
-- Absteigend nach Anzahl der MA sortieren (Zuerst Abteilungen mit der großten Anzahl der MA)|

select abt.abtnr, abt.abtbez, count(*) Anzahl
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt.abtnr, abt.abtbez
having count(*) > 3
order by Anzahl DESC;


select abt.abtnr, abt.abtbez, count(*) Anzahl
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt.abtnr, abt.abtbez
having count(*) > 3
order by count(*) DESC;


use test_db1;

create table aggregat_test(zahl integer);

insert into aggregat_test values
(12),
(127),
(287),
(2),
(100),
(null);

select * from aggregat_test;

select count(*) from aggregat_test;
select count(zahl) from aggregat_test;
select avg(zahl) from aggregat_test;
select min(zahl) from aggregat_test;
select max(zahl) from aggregat_test;
select SUM(zahl) from aggregat_test;

select sum(zahl)/count(zahl) from aggregat_test;

select max(temp.Anzahl) 'Max Anzahl pro Fam. Stand'
from
(
select f.fam_bez, count(*) as Anzahl
from mitarbeiter ma
join familienstand f on f.f_id = ma.f_id
group by f.fam_bez
) as temp;


-- use test_db1;

select * from aggregat_test;



select top 3 zahl from aggregat_test
where zahl is not null
order by zahl;


select * from aggregat_test;

select top 3 zahl from aggregat_test
order by zahl;

select top 3 with ties zahl from aggregat_test
order by zahl;

-- 3 kleinste Werte:
select top 3 zahl from aggregat_test
where zahl is not null
order by zahl ;

insert into aggregat_test values (12);

select * from aggregat_test;


insert into aggregat_test values (100);

select top 3 zahl from aggregat_test
order by zahl desc;

select top 3 with ties zahl from aggregat_test
order by zahl desc;

select * from aggregat_test

insert into aggregat_test values (287);



