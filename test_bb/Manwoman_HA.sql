-- HA

use manwomanDB;


select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;

--1. Wer hat alles das gleiche Geschlecht wie die Person mit dem Nachname Lecter?
;

select m.
from tl3_manwoman m
where mw.vorname = 'Lecter' 
;

---

select * from tl3_manwoman 
where nachname = 'Lecter'

select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;


select mwi.intnr, i.inttext
from tl3_mw_interessen mwi
join tl3_interessen i on i.intnr = mwi.intnr

select count(*) 
from tl3_interessen          

select intnr, count(*) Anzahl
from tl3_mw_interessen
group by intnr;


select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;

select intnr, count(*) Anzahl
from tl3_mw_interessen
group by intnr;

select mwnr, count(*) Anzahl
from tl3_mw_interessen
group by mwnr;


select max(temp.Anzahl)
from 
(select intnr, count(*) Anzahl
from tl3_mw_interessen
group by intnr) temp;

select mwi.intnr, 
count(*) as Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr
having count(*) =


USE manwomanDB;

SELECT
  vorname,
  nachname,
  geschlecht
FROM tl3_manwoman
WHERE geschlecht = 
(
  SELECT geschlecht
  FROM tl3_manwoman
  WHERE nachname = 'Lecter'
)
ORDER BY
  nachname,
  vorname;


  --2. Welcher meiner Freunde (Nachname) hat zugeordnete Interessen?


select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;

select


SELECT
  mw.nachname, 
  COUNT(mwi.intnr) AS Anzahl_Interessen
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
GROUP BY
  mw.mwnr,
  mw.nachname
ORDER BY mw.nachname;

--3. Wer hat keine zugeordneten Interessen?

USE manwomanDB;

SELECT
  mw.vorname,
  mw.nachname
FROM tl3_manwoman mw
LEFT JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
WHERE mwi.mwnr IS NULL
ORDER BY
  mw.nachname,
  mw.vorname;

  --4. Welche Interessen haben meine Freunde? (nachname, Vorname, Interesse (also z. B. Lesen))


  USE manwomanDB;

SELECT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname,
  i.inttext AS Interesse
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
JOIN tl3_interessen i
  ON i.intnr = mwi.intnr
ORDER BY
  mw.nachname,
  mw.vorname,
  i.inttext;



  SELECT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname,
  i.inttext AS Interesse
FROM tl3_manwoman mw
LEFT JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
LEFT JOIN tl3_interessen i
  ON i.intnr = mwi.intnr
ORDER BY
  mw.nachname,
  mw.vorname,
  i.inttext;


  --5. Welcher meiner Freunde liest gerne?

 USE manwomanDB;

SELECT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname,
  i.inttext AS Interesse
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
JOIN tl3_interessen i
  ON i.intnr = mwi.intnr
WHERE i.inttext = 'lesen'
ORDER BY
  mw.nachname,
  mw.vorname;

--- 6. Wie viele Interessen (Anzahl) hat Frau Kron

USE manwomanDB;

SELECT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname,
  COUNT(mwi.intnr) AS Anzahl_Interessen
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
WHERE mw.nachname = 'Kron'
GROUP BY
  mw.mwnr,
  mw.nachname,
  mw.vorname;



  USE manwomanDB;

SELECT
  COUNT(*) AS Anzahl
FROM tl3_mw_interessen
WHERE mwnr = (
  SELECT mwnr
  FROM tl3_manwoman
  WHERE nachname = 'Kron'
);


  -- 7. Welcher meiner Freunde (nachname, vorname) hat die gleichen Hobbies wie Lecter?

  USE manwomanDB;

SELECT DISTINCT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
WHERE mwi.intnr IN (
  SELECT mwi2.intnr
  FROM tl3_manwoman lecter
  JOIN tl3_mw_interessen mwi2
    ON lecter.mwnr = mwi2.mwnr
  WHERE lecter.nachname = 'Lecter'
)
AND mw.nachname <> 'Lecter'
ORDER BY
  mw.nachname,
  mw.vorname;


  SELECT DISTINCT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname,
  i.inttext AS Hobby
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
JOIN tl3_interessen i
  ON i.intnr = mwi.intnr
WHERE mwi.intnr IN (
  SELECT mwi2.intnr
  FROM tl3_manwoman lecter
  JOIN tl3_mw_interessen mwi2
    ON lecter.mwnr = mwi2.mwnr
  WHERE lecter.nachname = 'Lecter'
)
AND mw.nachname <> 'Lecter'
ORDER BY
  mw.nachname,
  mw.vorname,
  i.inttext;


  USE manwomanDB;

SELECT DISTINCT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname
FROM tl3_manwoman mw
JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
WHERE mwi.intnr IN (
  SELECT mwi2.intnr
  FROM tl3_manwoman l
  JOIN tl3_mw_interessen mwi2
    ON l.mwnr = mwi2.mwnr
  WHERE l.nachname = 'Lecter'
)
AND mw.nachname <> 'Lecter'
ORDER BY
  mw.nachname,
  mw.vorname;



--8. Welche intnr wurden am haufigsten genannt und wie oft? Sternchenaufgabe
--Tipp: count und max aber ohne top

USE manwomanDB;

SELECT
  mwi.intnr,
  COUNT(*) AS Anzahl
FROM tl3_mw_interessen mwi
GROUP BY mwi.intnr
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



-- 8. Welche intnr wurden am haufigsten genannt und wie oft? Sternchenaufgabe
-- Tipp: count und max aber ohne top
select mwi.intnr, count(mwi.intnr)
from tl3_mw_interessen mwi
group by mwi.intnr
having count(mwi.intnr) =
(
select max(inter.Anzahl)
from
(select mwi.intnr Nummer, count(*) Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr) inter


-- 8. Welche intnr wurden am haufigsten genannt und wie oft? Sternchenaufgabe
-- Tipp: count und max aber ohne top
select mwi.intnr, count(mwi.intnr)
from tl3_mw_interessen mwi
group by mwi.intnr
having count(mwi.intnr) =
(
select max(inter.Anzahl)
from
(select mwi.intnr Nummer, count(*) Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr) inter
)

-- Prüfung:
select intnr, count(*)
from tl3_mw_interessen
group by intnr;

select * from tl3_interessen
where intnr in (2,9);

-- 9. Gleiches nun mit dem inttext


USE manwomanDB;

-- 9. Gleiches nun mit dem inttext
select mwi.intnr, i.inttext, count(mwi.intnr)
from tl3_mw_interessen mwi
join tl3_interessen i on i.intnr = mwi.intnr
group by mwi.intnr, i.inttext
having count(mwi.intnr) =
(
select max(inter.Anzahl)
from
(select mwi.intnr Nummer, count(*) Anzahl
from tl3_mw_interessen mwi
group by mwi.intnr) inter




SELECT
  i.inttext,
  COUNT(*) AS Anzahl
FROM tl3_mw_interessen mwi
JOIN tl3_interessen i
  ON i.intnr = mwi.intnr
GROUP BY
  i.intnr,
  i.inttext
HAVING COUNT(*) =
(
  SELECT MAX(temp.Anzahl)
  FROM
  (
    SELECT
      intnr,
      COUNT(*) AS Anzahl
    FROM tl3_mw_interessen
    GROUP BY intnr
  ) temp
);


--10. Wer hat genauso viele Interessen wir die Person mit dem Nachnamen Tuck?
--Doppel-Sternchenaufgabe

select * from tl3_interessen;
select * from tl3_manwoman;
select * from tl3_mw_interessen;

select 
from tl3_manwoman mv

USE manwomanDB;

SELECT
  mw.nachname AS Nachname,
  mw.vorname AS Vorname,
  COUNT(mwi.intnr) AS Anzahl_Interessen
FROM tl3_manwoman mw
LEFT JOIN tl3_mw_interessen mwi
  ON mw.mwnr = mwi.mwnr
GROUP BY
  mw.mwnr,
  mw.nachname,
  mw.vorname
HAVING COUNT(mwi.intnr) =
(
  SELECT
    COUNT(mwi2.intnr)
  FROM tl3_manwoman tuck
  LEFT JOIN tl3_mw_interessen mwi2
    ON tuck.mwnr = mwi2.mwnr
  WHERE tuck.nachname = 'Tuck'
);


-- Subselect mit Join
SELECT m.nachname, m.vorname, COUNT(*) AS anzahl_interessen
FROM tl3_manwoman m
JOIN tl3_mw_interessen mwi ON m.mwnr = mwi.mwnr
GROUP BY m.mwnr, m.nachname, m. vorname
HAVING COUNT(*) = (
SELECT COUNT(*)
FROM tl3_manwoman t_m
JOIN tl3_mw_interessen t_mwi ON t_m.mwnr = t_mwi.mwnr
WHERE t_m. nachname = 'Tuck'
)
AND m. nachname <> 'Tuck';


-- 11
select mw.mwnr, mw.nachname, mw.vorname, i.inttext
from tl3_interessen i
join tl3_mw_interessen mwi on i.intnr=mwi.intnr
join tl3_manwoman mw on mwi.mwnr=mw.mwnr
where mwi.intnr in 
( 
select top 1 with ties intnr 
from tl3_mw_interessen 
group by intnr 
order by count(*) desc 
);