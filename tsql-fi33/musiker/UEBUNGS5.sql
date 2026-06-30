1. Welche Interpreten enthalten an beliebiger Stelle ein e und enden auf s

2. Welche Titel wurden bereits in Vegas oder Fuerth gespielt, sortieren Sie bitte nach Titel auf-steigend

3. Welche Titel enthalten kein a

4. Kontrollieren Sie, wann Adele und/oder Miles Davis nach dem 30.06.2026 gebucht sind

select * from genre;
select * from in_ver;
select * from interpret;
select * from titel;
select * from veranstaltungsort;

SELECT DISTINCT
  t.titel AS Titel
FROM titel t
JOIN interpret i
  ON t.interpret_id = i.i_id
JOIN in_ver iv
  ON iv.i_nr = i.i_id
JOIN veranstaltungsort v
  ON v.v_id = iv.v_nr
WHERE v.ort_name IN ('Vegas', 'Fuerth')
ORDER BY t.titel ASC;

SELECT DISTINCT
  t.titel AS Titel,
  i.name AS Interpret,
  v.ort_name AS Ort
FROM titel t
JOIN interpret i
  ON t.interpret_id = i.i_id
JOIN in_ver iv
  ON iv.i_nr = i.i_id
JOIN veranstaltungsort v
  ON v.v_id = iv.v_nr
WHERE v.ort_name IN ('Vegas', 'Fuerth')
ORDER BY t.titel ASC;


SELECT
  titel
FROM titel
WHERE titel NOT LIKE '%a%'
ORDER BY titel;

select *
From titel t, in_ver
where ort_name in ('Nuernberg', 'Vegas')
order by titel;


select *
from interpret i
where i.name like '%s';


SELECT
  name
FROM interpret
WHERE name LIKE '%e%s';


SELECT
  i.name AS Interpret,
  v.ort_name AS Ort,
  iv.datum_von,
  iv.datum_bis
FROM interpret i
JOIN in_ver iv
  ON iv.i_nr = i.i_id
JOIN veranstaltungsort v
  ON v.v_id = iv.v_nr
WHERE i.name IN ('Adele', 'Miles Davis')
  AND iv.datum_von > '2026-06-30'
ORDER BY
  i.name,
  iv.datum_von;


  select t.titel, iv.datum_von, iv.datum_bis, ort.ort_name
  from titel t
  join interpret i on i.i_id = t.interpret_id
  join in_ver iv on iv.i_nr = i.i_id
  join veranstaltungsort ort on ort.v_id=iv.v_nr
  where ort.ort_name in ('Vegas', 'Fuerth')
  and iv.datum_bis <  getdate()
  order by t.titel;



  set dateformat dmy;
select i. name, iv.datum_von, iv.datum_bis
from interpret i
join in_ver iv on iv.i_nr = i.i_id
where i. name in ('Adele', 'Miles Davis')
and iv.datum_bis > '30.06.2026'

;
select format (getdate(), 'dd MM yyyy') as Heute;
select format (getdate(), 'dd MMMM yyyy') as Heute;


select year(getdate()),

select datename(year, getdate()) Jahr,

datename(month, getdate()) Monat,

select datename(year, getdate()) Jahr,
datename(month, getdate()) Monat,
datename(day, getdate()) Tag,
datename(week, getdate()) Woche,
datename(weekday, getdate()) Wochentag,
datename(hour, getdate()) Uhr,
datename(minute, getdate()) Minute,
datename(second, getdate()) Sekunde,
datename(millisecond, getdate()) Milli,
datename(MICROSECOND, getdate()) Mikro,
datename(NANOSECOND, getdate()) Nano;


