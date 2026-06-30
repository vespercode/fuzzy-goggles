Bitte erstellen Sie eine Liste aller Interpreten und deren Titel


select * from interpret;
select * from titel;
select * from genre;

select top 0 * from interpret;
select top 0 * from titel;

select * from interpret;
select * from titel;

select * from interpret
JOIN titel on 

select i.name, titel.titel
from interpret i
join titel on titel.interpret_id = i.i_id;


--Welche Titel fallen alle unter das Genre Klassik?


select * from interpret;
select * from titel;
select * from genre;

select titel.titel, genre.genre
from titel
join genre on titel.genre_id = genre.g_id
where genre.genre = 'Klassik';


-- 3. Bitte uberprufen Sie, ob 'Miles Davis'
-- am 01.07.2027 gebucht werden kann

select * from interpret;
select * from titel;
select * from genre;
select top 1 * from in_ver;
select * from in_ver;


select titel.titel, genre.genre
from titel
join genre on titel.genre_id = genre.g_id
where genre.genre = 'Klassik';

SELECT
  i.name,
  v.ort_name,
  iv.datum_von,
  iv.datum_bis
FROM in_ver iv
JOIN interpret i ON iv.i_nr = i.i_id
JOIN veranstaltungsort v ON iv.v_nr = v.v_id
WHERE i.name = 'Miles Davis'
  AND '2027-07-01' BETWEEN iv.datum_von AND iv.datum_bis;

  select i.name, iv.datum_von, iv.datum_bis
from in_ver iv
join interpret i on i.i_id = iv.i_nr
where i.name like 'Miles%'
and '2027-07-01' between iv.datum_von and iv.datum_bis;



  SELECT
  CASE
    WHEN EXISTS (
      SELECT 1
      FROM in_ver iv
      JOIN interpret i ON iv.i_nr = i.i_id
      WHERE i.name = 'Miles Davis'
        AND '2027-07-01' BETWEEN iv.datum_von AND iv.datum_bis
    )
    THEN 'Nein, Miles Davis ist bereits gebucht'
    ELSE 'Ja, Miles Davis kann gebucht werden'
  END AS buchbar;


select i. name, iv.datum_von, iv.datum_bis
from in_ver iv
join interpret i on i.i_id = iv.i_nr
where i. name = 'Miles Davis'
-- where i.name like, 'Miles%'
and iv.datum_von <= '2027-07-01'
and iv.datum_bis >= '2027-07-01';
-- and '2027-07-01' between iv.datum_von and iv.datum_bis;


-- 4. Ich meine mich zu erinnern,
-- dass Miles Davis am 30.06.2026 bereits irgendwo
-- gebucht wurde. Ermitteln Sie an welchem
-- Veranstaltungsort er auftreten wird.


SELECT
  i.name,
  v.ort_name AS veranstaltungsort,
  iv.datum_von,
  iv.datum_bis
FROM in_ver iv
JOIN interpret i
  ON iv.i_nr = i.i_id
JOIN veranstaltungsort v
  ON iv.v_nr = v.v_id
WHERE i.name = 'Miles Davis'
  AND '2026-06-30' BETWEEN iv.datum_von AND iv.datum_bis;


  SELECT
  i.name,
  v.ort_name AS veranstaltungsort,
  iv.datum_von,
  iv.datum_bis
FROM in_ver iv
JOIN interpret i
  ON iv.i_nr = i.i_id
JOIN veranstaltungsort v
  ON iv.v_nr = v.v_id
WHERE i.name = 'Miles Davis'
  AND '2027-07-01' BETWEEN iv.datum_von AND iv.datum_bis;


  SELECT
  interpret.name,
  veranstaltungsort.ort_name
FROM in_ver
JOIN interpret
  ON in_ver.i_nr = interpret.i_id
JOIN veranstaltungsort
  ON in_ver.v_nr = veranstaltungsort.v_id
WHERE interpret.name = 'Miles Davis'
  AND '2026-06-30' BETWEEN in_ver.datum_von AND in_ver.datum_bis;


  SELECT
  interpret.name,
  veranstaltungsort.ort_name,
  in_ver.datum_von,
  in_ver.datum_bis
FROM in_ver
JOIN interpret
  ON in_ver.i_nr = interpret.i_id
JOIN veranstaltungsort
  ON in_ver.v_nr = veranstaltungsort.v_id
WHERE interpret.name = 'Miles Davis';

-- 4. Ich meine mich zu erinnern,
-- dass Miles Davis am 30.06.2026 bereits irgendwo
-- gebucht wurde. Ermitteln Sie an welchem
-- Veranstaltungsort er auftreten wird. Und am 2027-03-08?
-- Und alle Veranstaltungen im 2026?


SELECT
  interpret.name,
  veranstaltungsort.ort_name,
  in_ver.datum_von,
  in_ver.datum_bis
FROM in_ver
JOIN interpret
  ON in_ver.i_nr = interpret.i_id
JOIN veranstaltungsort
  ON in_ver.v_nr = veranstaltungsort.v_id
WHERE in_ver.datum_von BETWEEN '2026-01-01' AND '2026-12-31'
ORDER BY in_ver.datum_von;


SELECT
  interpret.name,
  veranstaltungsort.ort_name,
  in_ver.datum_von,
  in_ver.datum_bis
FROM in_ver
JOIN interpret
  ON in_ver.i_nr = interpret.i_id
JOIN veranstaltungsort
  ON in_ver.v_nr = veranstaltungsort.v_id
WHERE interpret.name = 'Miles Davis'
  AND in_ver.datum_von BETWEEN '2026-01-01' AND '2026-12-31'
ORDER BY in_ver.datum_von;



3
4
5

-- 6. Lassen Sie den Nachnamen, den Vornamen und das Arbeitszeitmodell jedes
-- Mitarbeiters ausgeben. Sortiert nach Arbeitszeitmodell

select i.name, ort.ort_name, iv.datum_von, iv.datum_bis
from interpret i
join in_ver iv on iv.i_nr = i.i_id
join veranstaltungsort ort on ort.v_id = iv.v_nr
where i. name = 'Miles Davis'
and
2026 between year(iv.datum_von) and year(datum_bis);



select i.name, ort.ort_name, iv.datum_von, iv.datum_bis
from interpret i
join in_ver iv on iv.i_nr = i.i_id
join veranstaltungsort ort on ort.v_id = iv.v_nr
where i. name = 'Miles Davis'
and
year(iv.datum_von) <= 2026 and year(iv.datum_bis)>=2026
-- 2026 between year(iv.datum_von) and year(datum_bis);



-- 6. Lassen Sie den Nachnamen, den Vornamen und das Arbeitszeitmodell jedes
-- Mitarbeiters ausgeben. Sortiert nach Arbeitszeitmodell

select * from mitarbeiter

select * from arbeitszeitmodell

select ma.vname, ma.nname, azm.az_bez
from mitarbeiter ma
join arbeitszeitmodell azm on azm.modell_code = ma.modell_code
order by azm.az_bez, ma.nname, ma.vname;


-- 7. Nun bitte Nachname, Vorname und Geburtsdatum
-- aller ledigen Mitarbeiter im 'HomeOffice'

select ma.vname, ma.nname, azm.az_bez
from mitarbeiter ma
join arbeitszeitmodell azm on azm.modell_code = ma.modell_code
order by azm.az_bez, ma.nname, ma.vname;


select ma.vname, ma.nname, azm.az_bez
from mitarbeiter ma
join familienstand fs on fs.f_id = ma.f_id
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
where fs.fam_bez= 'ledig'
and
azm.az_bez like 'Home%';


by azm.az_bez, ma.nname, ma.vname;


