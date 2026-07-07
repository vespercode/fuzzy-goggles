use e_commerce;

ALTER TABLE bestellung ADD id INT IDENTITY(1,1);
ALTER TABLE bestellung DROP CONSTRAINT pk_be;
ALTER TABLE bestellung ADD CONSTRAINT pk_be PRIMARY KEY (id);