use ma_familien;


select * from menschlein m
join familienstand f on f.fid = m.fid;

select fid from menschlein
where vname = 'Eddi';

select vname from menschlein
where fid=2;

select vname 
from menschlein m
where m.fid =
(
select fid from menschlein
where vname = 'Eddi'
)

select vname
from menschlein m
where m.fid =

select fid from menschlein
where vname = 'Eddi'
) and
-- vname = 'Eddi'
vname not like 'Eddi';


use musiker_db;

use musiker_db;
-- Wer bedient das gleiche Genre wie Coldplay?

select i.name
from interpret


-- 1). Welche Genre?
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Coldplay'

select i.name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id = 2;

 
 select i.name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id = 2;


select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Coldplay'
);



select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Coldplay'
);



select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Coldplay'
);


select  i. name
from interpret i


select t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id



select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Linkin Park'
);


-- Was ist mit Linkin Park?
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Linkin Park';


select * from genre;

-- Was ist mit Linkin Park?
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i. name = 'Linkin Park'


select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Linkin Park'
);




select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id in
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'Linkin Park'
);

select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i.name = 'bob marley junior'


use mitarbeiter_ub1;

use mitarbeiter_ub1;

-- 6. Wer ist unser jungster Mitarbeiter und in welchem Arbeitszeitmodell arbeitet der MA?

select max(m.gebdatum)
from mitarbeiter m

--2
select vname, nname, gebdatum
from mitarbeiter
where gebdatum = '1998-02-18'

-- 3 subselect

select vname, nname, gebdatum, azm.az_bez
from mitarbeiter ma
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
where gebdatum =
(
select max(m.gebdatum)
from mitarbeiter m
)

-- 17. Welches Interesse wurde am haufigsten genannt? (intnr, inttext, Anzahl Nennung)
use manwomanDB;

-- 1). 
select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;


select distinct i. name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id in
(
select distinct i.
from tl3_interessen i
join titel t on t.interpret_id = i.i_id
where i.name = 'Linkin Park'
);

SELECT TOP 1 with ties
  i.intnr,
  i.inttext,
  COUNT(mw.intnr) AS [Anzahl Nennungen]
FROM tl3_interessen i
JOIN tl3_mw_interessen mw
  ON i.intnr = mw.intnr
GROUP BY
  i.intnr,
  i.inttext
ORDER BY
  COUNT(mw.intnr) DESC,
  i.intnr ASC;



  -- 17. Welches Interesse wurde am haufigsten genannt? (intnr, inttext, Anzahl Nennung)
use manwoman;

-- 1). Gruppen mit Interessen
-- 2). Wie viel? Max()
-- 3). Welche Interesse?


select mwi .intnr, count(*) Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr 

select max(temp.Anzaht)
from
(
select mwi .intnr, count(*) Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr
) temp


select i.intnr, i.inttext, count(*)
from tl3_interessen i
join tl3_mw_interessen mwi on mwi.intnr = i.intnr


select i.intnr, i.inttext, count(*)
from  tl3_interessen
join tl3_mw_interessen mwi on mwi.intnr = i.intnr
group by i. intnr, i.inttext
having count(*) =
(
select max(temp. Anzahl) Maxx
from
C
select mwi .intnr, count(*) Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr
) temp



SELECT
  i.intnr,
  i.inttext,
  COUNT(*) AS [Anzahl Nennungen]
FROM tl3_mw_interessen mwi
JOIN tl3_interessen i
  ON i.intnr = mwi.intnr
GROUP BY
  i.intnr,
  i.inttext
HAVING COUNT(*) =
(
  SELECT
    MAX(temp.Anzahl)
  FROM
  (
    SELECT
      COUNT(*) AS Anzahl
    FROM tl3_mw_interessen
    GROUP BY intnr
  ) temp
);


4)

use mitarbeiter_ub1;

-- Welche/r Mitarbeiter wohnt an dem Ort,
-- an dem die meisten Mitarbeiter zu Hause sind?

select * from mitarbeiter;
select * from abteilung;


select i.intnr, i.inttext, count(*)
from tl3_interessen i
join tl3_mw_interessen mwi on mwi.intnr = i.intnr

select m.nname, m.vname, m.ort, 
from mitarbeiter m


SELECT ort, COUNT(*)
FROM mitarbeiter
GROUP BY ort;

SELECT
  ma.nname AS Nachname,
  ma.vname AS Vorname,
  ma.ort AS Ort
FROM mitarbeiter ma
WHERE ma.ort IN (
  SELECT TOP 1 WITH TIES
    ort
  FROM mitarbeiter
  WHERE ort IS NOT NULL
  GROUP BY ort
  ORDER BY COUNT(*) DESC
)
ORDER BY
  ma.nname,
  ma.vname;


  select ma.nname, ma.vname, ma.ort
  from mitarbeiter ma
  where ma.ort IN 
  (
  select top 1 with ties ort from mitarbeiter
  where ort is not null
  group by ort
  order by count(*) DESC
  )
  order by 
  ma.nname,
  ma.vname;


-- 1) GRUPPE ort mit meist MA count + group by
-- 2) Max oder top 1 with ties
-- 3) welcher wohnt an dem ort


select ma.vname, ma.nname, ma.ort
from mitarbeiter ma
where ma.ort in
(
select top 1 with ties ma.ort--, count(*)
from mitarbeiter ma
group by ma.ort
order by count(*) desc
);

select ma.vname, ma.nname, ma.ort
from mitarbeiter ma
where ma.ort in
(
select top 1 with ties ma.ort--, count(*)
from mitarbeiter ma
group by ma.ort
order by count(*) desc
)



order by ort;


select * from ma_skills;
select * from abteilung;
select * from mitarbeiter;
select * from arbeitszeitmodell;

select * from skills;

-- Versuchen wir nun herauszufinden
-- welche Mitarbeiter in den mitarbeiterstarksten Abteilungen arbeiten.

select * from abteilung;
select * from mitarbeiter;
select * from skills;

select ma.nname, ma.vname, abt.abtbez
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
where ma.abt_nr in
(
select top 1 with ties m.abt_nr
from mitarbeiter m
group by m.abt_nr
order by count(*) desc
)
order by abt.abtbez;


--- lehrer

select ma.vname, ma.nname, ma.abt_nr
from mitarbeiter ma
where ma.abt_nr in
(
select top 1 with ties ma.abt_nr, count(*)
from mitarbeiter ma
group by ma.abt_nr
order by count(*) desc
)


select ma.vname, ma.nname, ma.abt_nr
from mitarbeiter ma
join abteilung abt on abt_nr = ma.abt_nr
where ma.abt_nr in
(
select top 1 with ties ma.abt_nr
from mitarbeiter ma
group by ma. abt_nr
order by count(*) desc
)
order by abt.abtbez ;


select ma.vname, ma.nname, ma.abt_nr 
from mitarbeiter ma
join abteilung abt on abt_nr = ma.abt_nr
where ma.abt_nr in
(
select top 1 with ties ma.abt_nr
from mitarbeiter ma
group by ma. abt_nr
order by count(*) desc
)
order by abt.abtbez ;

select ma.vname, ma.nname, ma.abt_nr, abt.abtbez
from mitarbeiter ma
join abteilung abt on abt.abtnr = ma.abt_nr
where ma.abt_nr in
(
select top 2 with ties ma.abt_nr
from mitarbeiter ma
group by ma. abt_nr
order by count(*) desc
)
order by abt.abtbez

-- Nun geht es um die Skills, welche Mitarbeiter verfugen uber die drei Kenntnisse,
-- welche am wenigsten verbreitet sind?

select * from abteilung;
select * from mitarbeiter;
select * from skills;
select * from ma_skills;

select s.s_bez 
from skills s
join ma_skills ms on ms.s_id = s.s_id
where s.s_id in
(
select top 3 with ties ms.s_id
from ma_skills ms
group by ms.s_id
order by count(*) 
);



select ma.nname, ma.vname, 
from mitarbeiter ma
join skills s on s.s_id = ms.. ,
join ma_skills ms on ms.ma_id = ma.ma_id,
;(
select top 3 with ties ms.s_id
from ma_skills ms
group by ms.s_id
order by count(*) 
);



select ma.vname, ma.nname, s.s_bez
from mitarbeiter ma
join ma_skills mas on mas.ma_id = ma.ma_id
join skills s on s.s_id = mas.s_id
where mas.s_id in
(
select top 3 with ties mas.s_id
from ma_skills mas
group by mas.s_id
order by count(*) 
)
order by s.s_bez


-- HA

use manwomanDB;


select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;

--1. Wer hat alles das gleiche Geschlecht wie die Person mit dem Nachname Lecter?


select 
from 