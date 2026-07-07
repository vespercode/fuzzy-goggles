use e_commerce;

select p.bezeichnung Produkt, b.menge Menge, k.vorname Vorname, k.nachname Nachname, l.bezeichnung Lieferant
from bestellung b
join kunde k on k.ku_id = b.ku_id
join produkt p on p.pr_id = b.pr_id
join kategorie ka on ka.ka_id = p.ka_id
join lieferant l on l.li_id = p.li_id



select l.bezeichnung Lieferant, p.bezeichnung Produkt
from lieferant l
join produkt p on p.li_id = l.li_id
order by l.bezeichnung;


USE e_commerce;
GO

-- 1. Alle Bestellungen mit Produkt, Menge, Kunde, Kategorie und Lieferant
SELECT 
    p.bezeichnung AS Produkt,
    b.menge AS Menge,
    k.vorname AS Vorname,
    k.nachname AS Nachname,
    ka.bezeichnung AS Kategorie,
    l.bezeichnung AS Lieferant
FROM bestellung b
JOIN kunde k ON k.ku_id = b.ku_id
JOIN produkt p ON p.pr_id = b.pr_id
JOIN kategorie ka ON ka.ka_id = p.ka_id
JOIN lieferant l ON l.li_id = p.li_id;
GO


-- 2. Verkaufte Menge pro Produkt
SELECT 
    p.bezeichnung AS Produkt,
    SUM(b.menge) AS [Verkauft gesamt]
FROM bestellung b
JOIN produkt p ON p.pr_id = b.pr_id
GROUP BY p.pr_id, p.bezeichnung
ORDER BY SUM(b.menge) DESC;
GO



select p.bezeichnung Produkt, sum(b.pr_id) 'Verkauft gesamt'
from bestellung b
join produkt p on p.pr_id = b.pr_id
group by p.bezeichnung
order by sum(b.pr_id) desc;

-- 3. Lieferanten mit ihren Produkten
SELECT 
    l.bezeichnung AS Lieferant,
    p.bezeichnung AS Produkt
FROM lieferant l
JOIN produkt p ON p.li_id = l.li_id
ORDER BY l.bezeichnung, p.bezeichnung;
GO