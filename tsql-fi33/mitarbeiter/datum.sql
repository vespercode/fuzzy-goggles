--use musiker_db;
use mitarbeiter_ub1;

--6. Lassen Sie den Nachnamen, den Vornamen und das Arbeitszeitmodell jedes 
--Mitarbeiters ausgeben. Sortiert nach Arbeitszeitmodell
select * from mitarbeiter

select ma.vname, ma.nname, azm.az_bez
from mitarbeiter ma
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
order by azm.az_bez, ma.nname, ma.vname;

--7. Nun bitte Nachname, Vorname und Geburtsdatum 
--aller ledigen Mitarbeiter im 'HomeOffice'


select ma.nname, ma.vname, ma.gebdatum
from mitarbeiter ma
join familienstand fs on fs.f_id = ma.f_id
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
where fs.fam_bez = 'ledig' 
and 
azm.az_bez like 'Home%';
--azm.az_bez = 'HomeOffice'
--azm.modell_code = 'ho';


select ma. vname Vorname, ma.nname Nachname, abt.abtbez Abteilung
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
order by abt.abtbez, ma.nname, ma. vname;


-- 9. Wie oben, aber nur von den Mitarbeitern
-- die in Teilzeit arbeiten.

select * from arbeitszeitmodell

SELECT
  ma.nname AS Nachname,
  ma.vname AS Vorname,
  abt.abtbez AS Abteilung
FROM mitarbeiter ma
JOIN abteilung abt
  ON ma.abt_nr = abt.abtnr
JOIN arbeitszeitmodell azm
  ON azm.modell_code = ma.azm_id
WHERE azm.az_bez = 'Teilzeit'
ORDER BY
  abt.abtbez,
  ma.nname,
  ma.vname;



select m.nachname, m.vorname, a.bezeichnung
from mitarbeiter m, abteilung a, arbeitsmodell azm
where m.ab_id = a.ab_id and azm.am_id = m.am_id and azm.bezeichnung like 'teil%'
order by a.bezeichnung, m.nachname, m.vorname;
 

 select ma.vname Vorname, ma.nname Nachname, abt.abtbez Abteilung
from mitarbeiter ma
join abteilung abt on ma.abt_nr = abt.abtnr
join arbeitszeitmodell azm on azm.modell_code = ma.azm_id
where azm.az_bez = 'Teilzeit'
order by abt.abtbez, ma.nname, ma.vname;

-- 10. Als letztes nun bitte eine Auflistung der
-- ledigen Mitarbeiter (Vorname, Nachname) aus Nürnberg

select * from mitarbeiter ma;
select * from familienstand ma;

select ma.vname, ma.nname, fs.fam_bez
from mitarbeiter ma
join familienstand fs
on fs.f_id = ma.f_id
where fs.fam_bez = 'ledig'
and ma.ort IN ('Nürnberg', 'Nuernberg');


select ma.vname Vorname, ma.nname Nachname, fs.fam_bez Familienstand
from mitarbeiter ma
join familienstand fs
on fs.f_id = ma.f_id
where fs.fam_bez = 'ledig'
and ma.ort IN ('Nürnberg', 'Nuernberg');