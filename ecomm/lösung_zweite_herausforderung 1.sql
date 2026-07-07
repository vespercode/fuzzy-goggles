use e_commerce;

ALTER TABLE bestellung ADD preis_pro_stueck DECIMAL(8,2), gesamtpreis AS (menge * preis_pro_stueck);

--und jetzt die bisherige ausfüllen

UPDATE bestellung SET preis_pro_stueck =
	(
	SELECT preis
	FROM produkt
	where bestellung.pr_id = produkt.pr_id
	);
