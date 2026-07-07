use e_commerce;

select p.bezeichnung Produkt, b.menge Menge, k.vorname Vorname, k.nachname Nachname, l.bezeichnung Lieferant
from bestellung b
join kunde k on k.ku_id = b.ku_id
join produkt p on p.pr_id = b.pr_id
join kategorie ka on ka.ka_id = p.ka_id
join lieferant l on l.li_id = p.li_id


select p.bezeichnung Produkt, sum(b.menge) 'Verkauft gesamt'
from bestellung b
join produkt p on p.pr_id = b.pr_id
group by p.bezeichnung
order by sum(b.menge) desc;

select l.bezeichnung Lieferant, p.bezeichnung Produkt
from lieferant l
join produkt p on p.li_id = l.li_id
order by l.bezeichnung;



