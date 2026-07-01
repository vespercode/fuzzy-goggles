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

select * from aggregat_test;

insert into aggregat_test values (287);


----- Yes

insert into aggregat_test values (2);

select top 3 with ties zahl from aggregat_test
order by zahl;

UPDATE aggregat_Test
SET zahl = 1
WHERE zahl IS NULL;


select * from aggregat_test;

select * from zahlen;

create table zahlen (zahl integer) 
insert into zahlen values (1),(2),(3),(3),(2),(5),(2),(4) 

select top 3 zahl 
from zahlen 

select top 3 zahl 
from zahlen 
order by zahl


select top 3 zahl 
from zahlen 
order by zahl desc

select top 3 with ties zahl 
from zahlen

select top 3 with ties zahl 
from zahlen 
order by zahl 

select top 3 with ties zahl 
from zahlen 
order by zahl desc


use musiker_db;

select * from genre;
select * from in_ver;
select * from interpret;
select * from titel;
select * from veranstaltungsort;


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


select abt.abtnr, abt.abtbez, count(*) Anzahl
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
group by abt.abtnr, abt.abtbez
having count(*) > 3
order by count(*) DESC;

--1
select g.genre, count(*) 
from titel t 
join genre g on g.g_id = t.genre_id
group by g.genre

select * from genre;
select * from in_ver;
select * from interpret;
select * from titel;
select * from veranstaltungsort;

--2
select i.name ,t.t_id, count(*)
from titel t 
join interpret i on t.interpret_id = i.i_id
group by t.t_id



select i.name, count(
from interpret i
join titel t on t.interpret_id = i.i_id


SELECT
  g.genre AS Genre,
  COUNT(t.titel) AS [Anzahl Songs]
FROM genre g
JOIN titel t
  ON t.genre_id = g.g_id
GROUP BY g.genre
ORDER BY g.genre;

SELECT
  i.name AS Interpret,
  COUNT(DISTINCT t.titel) AS [Anzahl Titel]
FROM interpret i
JOIN titel t
  ON t.interpret_id = i.i_id
GROUP BY i.name
ORDER BY i.name;

select * from genre;
select * from in_ver;
select * from interpret;
select * from titel;
select * from veranstaltungsort;

select i.name Interpret, count(t.titel) Anzahl
from interpret i
join titel t on t.interpret_id = i.i_id
group by i.name
order by i.name


select i.name Interpret, count(t.titel) Anzahl
from interpret i
join titel t on t.interpret_id = i.i_id
group by i.name
having count(*) > 6
order by i.name


---4

select * from in_ver;
select * from interpret;
select * from veranstaltungsort;


select i.name, iv.datum_von, v.ort_name
from interpret i
join in_ver iv on iv.i_nr = i.i_id
join veranstaltungsort v on v.v_id = iv.v_nr
group by i.name, iv.datum_von, v.ort_name
order by i.name

---5

use mitarbeiter_ub1;

select * from mitarbeiter;
select * from familienstand;
select * from abteilung;
select * from arbeitszeitmodell;


select fs.fam_bez, count(*)
from mitarbeiter ma
join familienstand fs on fs.f_id = ma.f_id
group by fs.fam_bez


--6

select * from mitarbeiter;
select * from familienstand;
select * from abteilung;
select * from arbeitszeitmodell;

select ma.ma_id, ma.nname, vname, gebdatum, az_bez, max(gebdatum)
from mitarbeiter ma
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
group by ma.ma_id, ma.nname, vname, gebdatum, az_bez
order by max(gebdatum)


select TOP 1 ma.ma_id, ma.nname, vname, gebdatum, az_bez
from mitarbeiter ma
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
group by ma.ma_id, ma.nname, vname, gebdatum, az_bez
ORDER BY ma.gebdatum DESC;


select a.abtbez, count(*)
from mitarbeiter ma 
join abteilung a on a.abtnr = ma.abt_nr
group by a.abtbez


select a.abtbez, count(ma.ma_id)
from mitarbeiter ma
join abteilung a on a.abtnr = ma.abt_nr
group by a.abtbez
having count(*) > 3
ORDER BY count(ma.ma_id) DESC;


--9

select * from mitarbeiter;
select * from familienstand;
select * from abteilung;
select * from arbeitszeitmodell;
select * from skills;
select * from  ma_skills;

select ma.nname, ma.vname, count(ms.s_id) Anzahl_Skills
from mitarbeiter ma
join ma_skills ms on ms.ma_id = ms.ma_id
group by ma.ma_id, ma.vname, ma.nname
having count(ms.s_id) > 2
order by ma.nname;


SELECT
  ma.nname,
  ma.vname,
  COUNT(ms.z_skillnr) AS Anzahl_Skills
FROM mitarbeiter ma
JOIN mitarbeiterskill ms
  ON ma.ma_id = ms.z_maid
GROUP BY
  ma.ma_id,
  ma.nname,
  ma.vname
HAVING COUNT(ms.z_skillnr) > 2
ORDER BY ma.nname;



SELECT
  ma.nname,
  ma.vname,
  COUNT(ms.s_id) AS Anzahl_Skills
FROM mitarbeiter ma
JOIN ma_skills ms
  ON ma.ma_id = ms.ma_id
GROUP BY
  ma.ma_id,
  ma.nname,
  ma.vname
HAVING COUNT(ms.s_id) > 2
ORDER BY ma.nname;


select TOP 1 WITH TIES s.s_bez, count(ms.s_id)
from mitarbeiter ma
join ma_skills ms on ms.ma_id = ma.ma_id
join skills s on s.s_id = ms.s_id
group by s.s_bez
order by count(ms.s_id) DESC

