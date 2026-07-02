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